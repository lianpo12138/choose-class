package rainclassv3.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import rainclassv3.mapper.ClassRoomMapper;
import rainclassv3.mapper.PeriodMapper;
import rainclassv3.mapper.StudentMapper;
import rainclassv3.mapper.TeacherMapper;
import rainclassv3.pojo.*;
import rainclassv3.req.*;
import rainclassv3.resp.AdminLoginResp;
import rainclassv3.resp.CommonResp;
import rainclassv3.resp.UserLoginResp;
import rainclassv3.service.UserService;
import rainclassv3.util.ExcelUtil;
import rainclassv3.util.SnowFlake;
import sun.rmi.runtime.Log;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/**
 * @ClassName UserController
 * @Description TODO
 * @Author FARO_Z
 * @Date 2021/6/19 下午4:15
 * @Version 1.0
 **/
@RestController
@RequestMapping("/user")
public class UserController {

    private static final Logger LOG = LoggerFactory.getLogger(UserController.class);

    @Resource
    private SnowFlake snowFlake;

    @Resource
    private RedisTemplate redisTemplate;

    @Resource
    private UserService userService;

    @Resource
    private PeriodMapper periodMapper;

    @Resource
    private ClassRoomMapper classRoomMapper;

    @Resource
    private StudentMapper studentMapper;

    @Resource
    private TeacherMapper teacherMapper;

    /**
     * 登录接口
     *
     * @param req
     * @return
     */
    @PostMapping("/login")
    public CommonResp login(@RequestBody @Valid UserLoginReq req) {
        LOG.info("传入的密码信息为:{}", req.getPassword());
        UserLoginResp loginUser = userService.login(req);

        /**
         * 为返回值加上 token
         * 将登录信息放入 redis 并设置超时时间为 一天
         */
        if (loginUser != null) {
            String token = String.valueOf(snowFlake.nextId());
            LOG.info("生成的用户 token 为:{}", token);
            loginUser.setToken(token);
            redisTemplate.opsForValue().set(token, JSON.toJSON(loginUser), 3600 * 24, TimeUnit.SECONDS);
        }

        CommonResp commonResp = new CommonResp();
        commonResp.setContent(loginUser);
        return commonResp;
    }

    /**
     * 登出接口
     *
     * @param token
     * @return
     */
    @RequestMapping("/logout/{token}")
    public CommonResp logout(@PathVariable("token") String token) {
        redisTemplate.delete(token);
        CommonResp commonResp = new CommonResp();
        return commonResp;
    }


    /**
     * 修改密码后端接口
     *
     * @param req
     * @return
     */
    @PostMapping("/changePassword")
    public CommonResp changePassword(@RequestBody @Valid PasswordChangeReq req) {
        userService.changePassword(req);
        LOG.info(req.getId() + "的用户修改秘密为：" + req.getNewPassword());
        return new CommonResp();
    }

    /**
     * 检查密码后端接口
     *
     * @param req
     * @return
     */
    @RequestMapping("/checkPassword")
    public CommonResp checkPassword(PasswordCheckReq req) {
        LOG.info("传入的token 信息为:{}", req.getToken());

        Object o = redisTemplate.opsForValue().get(req.getToken());
        LOG.info("获取的缓存信息为:{}", o);
        JSONObject jsonObject = (JSONObject) o;
        String json = jsonObject.toJSONString();
        LOG.info("json数据为:{}", json);
        AdminLoginResp adminLoginResp = JSON.parseObject(json, AdminLoginResp.class);
        String token = adminLoginResp.getToken();
        String password = adminLoginResp.getPassword();

        LOG.info("缓存中的token为:{}", token);

        CommonResp commonResp = new CommonResp();
        if (!Objects.equals(token, req.getToken())) {
            commonResp.setSuccess(false);
            commonResp.setMessage("错误，当前用户未登陆");
            return commonResp;
        }
        if (!Objects.equals(password, req.getOrigin())) {
            commonResp.setSuccess(false);
            commonResp.setMessage("输入密码与原密码不一致");
            return commonResp;
        }

        return commonResp;
    }

    @PostMapping("/register")
    public CommonResp register(@RequestBody UserRegisterReq req) {
        userService.saveStudent(req);
        return new CommonResp();
    }

    @GetMapping("/term")
    public CommonResp termList() {
        List<Period> periods = periodMapper.selectByExample(null);
        CommonResp<List> commonResp = new CommonResp<>();
        commonResp.setContent(periods);
        return commonResp;
    }

    @PostMapping("/update")
    public Period updateTerm(@RequestBody Period period) {
        /* 如果id为空即为添加数据，id不为空就是修改数据*/
        if (period.getId() == null) {
            periodMapper.insertSelective(period);
            Integer id = period.getId();
            LOG.info("自增id为" + id);
        } else {
            periodMapper.updateByPrimaryKeySelective(period);
        }
        return period;
    }

    @DeleteMapping("/{id}")
    public int deletePeriod(@PathVariable int id) {
        periodMapper.deleteByPrimaryKey(id);
        return id;
    }

    /* 批量导入教室*/
    @PostMapping("/importClassRoom")
    public CommonResp importExcel(@RequestBody MultipartFile file) throws IOException {
        List<ClassRoom> users = ExcelUtil.importExcel(file, ClassRoom.class);
        CommonResp resp = new CommonResp();
        users.forEach(i -> {
            classRoomMapper.insert(i);
        });

        resp.setContent(users);
        resp.setMessage("导入" + users.size() + "条数据！");
        return resp;
    }

    @PostMapping("/importStudents")
    /* 批量导入学生*/
    public CommonResp importStudents(MultipartFile file) {
        int num;
        try {
            List<Student> students = ExcelUtil.importExcel(file, Student.class);

            for (int i = 0; i < students.size(); i++) {
                if (studentMapper.selectByPrimaryKey(students.get(i).getId()) != null) {
                    return new CommonResp(false, "第"+(i+3)+"行的学号已存在数据库！", null);
                }
            }
            students.forEach(i->{
                i.setPassword(i.getId().toString());
                i.setLoginname(i.getId().toString());
                i.setCreatetime(new Date());
                studentMapper.insertSelective(i);
            });
            num = students.size();
            return new CommonResp(true,"添加了"+num+"条数据！",null);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    @PostMapping("/importTeachers")
    /* 批量导入学生*/
    public CommonResp importTeachers(MultipartFile file) {

        try {
            List<Teacher> teachers = ExcelUtil.importExcel(file, Teacher.class);

            for (int i = 0; i < teachers.size(); i++) {
                if (teacherMapper.selectByPrimaryKey(teachers.get(i).getId()) != null) {
                    return new CommonResp(false, "第"+(i+3)+"行的工号已存在数据库！", null);
                }
            }
            teachers.forEach(i->{
                i.setPassword(i.getId().toString());
                i.setLoginname(i.getPassword());
                i.setCreatetime(new Date());
                teacherMapper.insertSelective(i);
            });
            return new CommonResp(true,"添加了"+teachers.size()+"条数据！",null);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }


}
