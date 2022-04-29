package rainclassv3.service.impl;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import rainclassv3.exception.FileException;
import rainclassv3.exception.FileExceptionCode;
import rainclassv3.mapper.ClassMapper;
import rainclassv3.mapper.ScoreMapper;
import rainclassv3.mapper.TeacherMapper;
import rainclassv3.pojo.*;
import rainclassv3.pojo.Class;
import rainclassv3.req.ClassQueryReq;
import rainclassv3.req.ClassSaveReq;
import rainclassv3.resp.ClassQueryResp;
import rainclassv3.resp.PageResp;
import rainclassv3.resp.PicUploadResp;
import rainclassv3.service.ClassService;
import rainclassv3.util.*;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 * @ClassName ClassServiceImpl
 * @Description TODO
 * @Author FARO_Z
 * @Date 2021/6/19 下午2:17
 * @Version 1.0
 **/
@Service
public class ClassServiceImpl implements ClassService {

    @Resource
    private ClassMapper classMapper;

    @Resource
    private TeacherMapper teacherMapper;

    @Resource
    private SnowFlake snowFlake;

    @Resource
    private ScoreMapper scoreMapper;

    @Resource
    private RedisTemplate redisTemplate;

    private static final Logger LOG = LoggerFactory.getLogger(ClassServiceImpl.class);

    /**
     * disPic:
     * file-path: /Users/faro_z/Pictures/cover
     * web-path: http://127.0.0.1:9000/disPic/
     */
    @Value("${disPic.file-path}")
    private String FILE_PATH;

    @Value("${disPic.web-path}")
    private String WEB_PATH;

    /**
     * 分页、模糊查询
     * 学生：（只能是这学期，选修的）能选的  上过以及该上的 ---中间表 课程，学生  在我看来就是先从中年表里取出课程id集合，然后根据id查询
     * 老师：自己开设的课程（历史）：直接根据teacher_id 查对应的数据
     * 管理员：什么课程都能看
     *
     * @param req
     * @return
     */
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    @Override
    public PageResp list(ClassQueryReq req) {
        ClassExample classExample = new ClassExample();
        ClassExample.Criteria criteria = classExample.createCriteria();
        criteria.andClassnameLike("%" + req.getClassname() + "%");
        if (req.getType() != null) {
            criteria.andTypeEqualTo(req.getType());
        }
        if (req.getTeachername() != null) {
            TeacherExample teacherExample = new TeacherExample();
            teacherExample.or().andRealnameLike("%" + req.getTeachername() + "%");
            List<Teacher> teachers = teacherMapper.selectByExample(teacherExample);
            List ids = new ArrayList<>();
            teachers.forEach(item -> {
                ids.add(item.getId());
            });
            criteria.andTeacheridIn(ids);
        }

        PageHelper.startPage(req.getPageNum(), req.getPageSize());
        List<Class> classes = classMapper.selectByExample(classExample);

        PageInfo<Class> pageInfo = new PageInfo<>(classes);
        List<ClassQueryResp> classQueryResps = CopyUtil.copyList(classes, ClassQueryResp.class);
        for (ClassQueryResp classQueryResp : classQueryResps) {
            Teacher teacher = teacherMapper.selectByPrimaryKey(classQueryResp.getTeacherid());
            classQueryResp.setTeacher(teacher);
        }

        PageResp pageResp = new PageResp();
        pageResp.setPageNum(pageInfo.getPageNum());
        pageResp.setPageSize(pageInfo.getPageSize());
        pageResp.setTotal((int) pageInfo.getTotal());
        pageResp.setList(classQueryResps);

        // 优化:查询课程时将，如果redis中没有该课程键值对时，将课程可选人数存入redis,设置过期时间为1分钟
        classQueryResps.forEach(item -> {
            Object o = redisTemplate.opsForValue().get("classID" + item.getId());
            if (o == null) {
                redisTemplate.opsForValue().set("classId"+item.getId(),item.getPlanNum()-item.getRealityNum(), 60, TimeUnit.SECONDS);
            }
        });

        return pageResp;
    }

    /**
     * 获取全部课程信息
     *
     * @return
     */
    @Override
    public List<Class> getAll() {
        ClassExample example = new ClassExample();
        List<Class> classes = classMapper.selectByExample(example);
        return classes;
    }


    /**
     * 课程更新/存储
     *
     * @param req
     * @return
     */
    @Override
    public int save(ClassSaveReq req) {
        Long id = req.getId();
        int count = 0;
        if (id == null) {
            //新增
            req.setId(snowFlake.nextId());
            Class copy = CopyUtil.copy(req, Class.class);
            copy.setCreatetime(new Date());
            count = classMapper.insert(copy);
        } else {
            //更新
            Class copy = CopyUtil.copy(req, Class.class);
            count = classMapper.updateByPrimaryKeySelective(copy);
        }
        return count;
    }


    /**
     * 根据 id 查询课程信息
     *
     * @param id
     * @return
     */
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    @Override
    public ClassQueryResp selectById(Long id) {
        /**
         * 查出课程信息
         */
        Class aClass = classMapper.selectByPrimaryKey(id);
        ClassQueryResp classQueryResp = CopyUtil.copy(aClass, ClassQueryResp.class);

        /**
         * 查出该课程的教师信息
         */
        Teacher teacher = teacherMapper.selectByPrimaryKey(classQueryResp.getTeacherid());
        classQueryResp.setTeacher(teacher);
        return classQueryResp;
    }

    /**
     * 课程图片上传
     *
     * @param file
     * @return
     */
    @Override
    public PicUploadResp upload(MultipartFile file) {
        String originalFilename = file.getOriginalFilename();

        LOG.info("获取的文件名为:{}", originalFilename);
        /**
         * 获取文件后缀
         */
        String hz = originalFilename.substring(originalFilename.lastIndexOf("."));

        LOG.info("获取的文件后缀为:{}", hz);


        //判断图片后缀是否合法
        boolean valid = FileUtil.isHzValid(hz, ValidType.PIC);
        if (!valid) {
            throw new FileException(FileExceptionCode.FILE_TYPE_ERROR);
        }

        String newFileName = String.valueOf(snowFlake.nextId()) + hz;
        StringBuilder sb = new StringBuilder();
        sb.append(FILE_PATH)
                .append("/")
                .append(newFileName);
        String newPath = sb.toString();
        try {
            file.transferTo(new File(newPath));
        } catch (IOException e) {
            e.printStackTrace();
        }

        // Long newPicId = snowFlake.nextId();
        // Pic pic = new Pic();
        // pic.setId(newPicId);
        // LOG.info("待插入的图片主键为",pic.getId());
        // pic.setPath(newFileName);
        // picMapper.insertSelective(pic);


        /**
         * 需要将保存后的图片名称，和图片 id 返回出去
         */
        PicUploadResp picUploadResp = new PicUploadResp();
        picUploadResp.setPath(newFileName);
        picUploadResp.setShowPath(WEB_PATH + newFileName);

        return picUploadResp;
    }

    /**
     * 根据 id 删除课程信息
     * 不但要删除 class 表的信息
     * 还要删 score 表的
     *
     * @param id
     */
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    @Override
    public void deleteById(Long id) {
        /**
         * 删除 class 表中的信息
         */
        classMapper.deleteByPrimaryKey(id);

        /**
         * 删除成绩表的信息
         */
        ScoreExample scoreExample = new ScoreExample();
        scoreExample.createCriteria().andClassidEqualTo(id);
        scoreMapper.deleteByExample(scoreExample);
    }
}
