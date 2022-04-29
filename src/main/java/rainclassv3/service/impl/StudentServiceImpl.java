package rainclassv3.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.relational.core.sql.In;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import rainclassv3.mapper.*;
import rainclassv3.pojo.*;
import rainclassv3.pojo.Class;
import rainclassv3.req.*;
import rainclassv3.resp.ClassQueryResp;
import rainclassv3.resp.PageResp;
import rainclassv3.resp.StudentMyScoreResp;
import rainclassv3.resp.StudentResp;
import rainclassv3.service.StudentService;
import rainclassv3.util.CopyUtil;
import rainclassv3.util.SnowFlake;

import javax.annotation.Resource;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

/**
 * @ClassName StudentServiceImpl
 * @Description 学生业务层代码
 * @Author FARO_Z
 * @Date 2021/6/20 下午1:59
 * @Version 1.0
 **/
@Service
public class StudentServiceImpl implements StudentService {

    @Resource
    private ClassMapper classMapper;

    @Resource
    private StudentMapper studentMapper;

    @Resource
    private ScoreMapper scoreMapper;

    @Resource
    private TeacherMapper teacherMapper;

    @Resource
    private ClassStudentMapper classStudentMapper;

    @Resource
    private SnowFlake snowFlake;

    @Resource
    private RedisTemplate redisTemplate;

    /**
     * 查询学生是否选择该课程
     * 需要三表联查： student表和class表，score 作为中间表
     *
     * @param req
     * @return
     */
    @Override
    public boolean isChosen(StudentIsChosenReq req) {
        long studentId = Long.parseLong(req.getStudentid());
        long classId = Long.parseLong(req.getClassid());

        /**
         * 查询出学生已经选的所有课程
         */
        ScoreExample scoreExample = new ScoreExample();
        scoreExample.createCriteria().andStudentidEqualTo(studentId);
        List<Score> scores = scoreMapper.selectByExample(scoreExample);

        for (Score score : scores) {
            if (score.getClassid() == classId) {
                return true;
            }
        }
        return false;
    }

    /**
     * 获取学生已经选择的课程的信息
     *
     * @param studentId
     * @return
     */
    @Override
    public List list(String studentId) {
        ClassStudentExample classStudentExample = new ClassStudentExample();
        classStudentExample.createCriteria().andStudentEqualTo(Integer.parseInt(studentId));
        List<ClassStudent> classStudents = classStudentMapper.selectByExample(classStudentExample);
        List<Class> classes = new ArrayList<>();
        classStudents.forEach(i->{
            Class aClass = classMapper.selectByPrimaryKey(i.getClassId().longValue());
            classes.add(aClass);
        });

        /**
         * 学生已经选择的课程列表中，就不设置模糊查询功能了
         */
        // ClassExample classExample = new ClassExample();
        // classExample.createCriteria().andClassnameLike("%"+req.getClassname()+"%");
        // PageHelper.startPage(req.getPageNum(),req.getPageSize());
        // List<Class> classes = classMapper.selectByExample(classExample);
        //
        // PageInfo<Class> pageInfo = new PageInfo<>(classes);

        /**
         * 查找课程的教师信息
         */


        return classes;
    }

    /**
     * 学生退选
     *
     * @param req
     */
    @Override
    public void cancelClass(StudentClassChangeReq req) {
        long classId = Long.parseLong(req.getClassid());
        long studentId = Long.parseLong(req.getStudentid());

        ScoreExample scoreExample = new ScoreExample();
        scoreExample.createCriteria().andClassidEqualTo(classId)
                .andStudentidEqualTo(studentId);
        scoreMapper.deleteByExample(scoreExample);
    }

    /**
     * 学生选课
     *
     * @param req
     */
    @Override
    public int selectClass(StudentClassChangeReq req) {

        //ClassStudentExample classStudentExample = new ClassStudentExample();
        //ClassStudentExample.Criteria criteria = classStudentExample.createCriteria().andClassIdEqualTo(Integer.parseInt(req.getClassid()));
        //criteria.andStudentEqualTo(Integer.parseInt(req.getStudentid()));
        //List<ClassStudent> classStudents = classStudentMapper.selectByExample(classStudentExample);
        // 查询课程剩余可选人数
        Object o = redisTemplate.opsForValue().get("classId" + req.getClassid());
        // 如果不为空，则将课程表中的已选人数加一
        if ((int)o == 0) {
            return 0;
        }
        // 若无余量直接返回
        Class aClass = classMapper.selectByPrimaryKey(Long.parseLong(req.getClassid()));
        aClass.setRealityNum(aClass.getRealityNum() + 1);
        classMapper.updateByPrimaryKeySelective(aClass);
        long classId = Long.parseLong(req.getClassid());
        long studentId = Long.parseLong(req.getStudentid());
        /**
         * 需要在学生课程中间表中，添加课程与学生的信息
         */
        ClassStudent score = new ClassStudent();
        score.setClassId(Integer.parseInt(req.getClassid()));
        score.setStudent(Integer.parseInt(req.getStudentid()));


        classStudentMapper.insertSelective(score);
        return 1;
    }


    /**
     * 获取当前学生的所有课程的成绩
     *
     * @param req
     * @return
     */
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    @Override
    public PageResp getMyScore(StudentMyScoreReq req) {
        long studentId = Long.parseLong(req.getStudentid());
        ScoreExample scoreExample = new ScoreExample();
        scoreExample.createCriteria().andStudentidEqualTo(studentId);
        List<Score> scores = scoreMapper.selectByExample(scoreExample);

        List<StudentMyScoreResp> studentMyScoreResps = new ArrayList<>();
        for (Score score : scores) {
            StudentMyScoreResp studentMyScoreResp = new StudentMyScoreResp();
            Class aClass = classMapper.selectByPrimaryKey(score.getClassid());
            studentMyScoreResp.setClassInfo(aClass);
            studentMyScoreResp.setScore(score.getScorenum());
            studentMyScoreResps.add(studentMyScoreResp);
        }

        PageResp pageResp = new PageResp();
        pageResp.setPageNum(req.getPageNum());
        pageResp.setPageSize(req.getPageSize());
        pageResp.setTotal(studentMyScoreResps.size());
        pageResp.setList(studentMyScoreResps);

        return pageResp;
    }

    /*
     *  获取全部学生的信息
     * */
    @Override
    public List<StudentResp> getAll() {
        List<Student> students = studentMapper.selectByExample(null);
        List<StudentResp> studentResps = new ArrayList<>();

        for (Student student : students) {
            StudentResp studentResp = new StudentResp();
            BeanUtils.copyProperties(student, studentResp);
            studentResps.add(studentResp);
        }
        return studentResps;
    }

    @Override
    public PageResp<Student> listStudents(StudentQueryReq req) {
        StudentExample example = new StudentExample();
        StudentExample.Criteria criteria = example.createCriteria();
        if (!req.getLoginname().isEmpty()) {
            criteria.andLoginnameLike("%" + req.getLoginname() + "%");
        }
        if (!req.getName().isEmpty()) {
            criteria.andRealnameLike("%" + req.getName() + "%");
        }
        PageHelper.startPage(req.getPageNum(), req.getPageSize());
        List<Student> students = studentMapper.selectByExample(example);
        PageInfo<Student> info = new PageInfo<>(students);
        PageResp<Student> resp = new PageResp<>();
        resp.setTotal((int)info.getTotal());
        resp.setPageNum(info.getPageNum());
        resp.setPageSize(info.getPageSize());
        resp.setList(info.getList());
        return resp;
    }
}
