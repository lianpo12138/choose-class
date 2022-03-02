package rainclassv3.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import rainclassv3.mapper.ClassMapper;
import rainclassv3.mapper.ScoreMapper;
import rainclassv3.mapper.StudentMapper;
import rainclassv3.mapper.TeacherMapper;
import rainclassv3.pojo.*;
import rainclassv3.pojo.Class;
import rainclassv3.req.*;
import rainclassv3.resp.ClassQueryResp;
import rainclassv3.resp.PageResp;
import rainclassv3.resp.TeacherMyStudentResp;
import rainclassv3.resp.TeacherQueryResp;
import rainclassv3.service.TeacherService;
import rainclassv3.util.CopyUtil;
import sun.security.provider.MD5;

import javax.annotation.Resource;
import java.util.*;

/**
 * @ClassName TeacherServiceImpl
 * @Description TODO
 * @Author FARO_Z
 * @Date 2021/6/20 下午4:21
 * @Version 1.0
 **/
@Service
public class TeacherServiceImpl implements TeacherService {

    @Resource
    private TeacherMapper teacherMapper;

    @Resource
    private ClassMapper classMapper;

    @Resource
    private ScoreMapper scoreMapper;

    @Resource
    private StudentMapper studentMapper;


    /**
     * 获取教师已经选择的课程的信息
     *
     * @param req
     * @return
     */
    @Override
    public PageResp listClass(TeacherMyClassQueryReq req) {
        long teacherId = Long.parseLong(req.getTeacherid());

        /**
         * 老师已经选择的课程列表中，就不设置模糊查询功能了
         */
        ClassExample classExample = new ClassExample();
        classExample.createCriteria().andTeacheridEqualTo(teacherId);
        PageHelper.startPage(req.getPageNum(),req.getPageSize());
        List<Class> classes = classMapper.selectByExample(classExample);
        PageInfo<Class> pageInfo = new PageInfo<>(classes);


        /**
         * 为课程添加教师信息
         */
        Teacher teacher = teacherMapper.selectByPrimaryKey(teacherId);
        List<ClassQueryResp> classQueryResps = CopyUtil.copyList(classes, ClassQueryResp.class);
        for (ClassQueryResp classQueryResp : classQueryResps) {
            classQueryResp.setTeacher(teacher);
        }

        PageResp pageResp = new PageResp();
        pageResp.setPageNum(pageInfo.getPageNum());
        pageResp.setPageSize(pageInfo.getPageSize());
        pageResp.setTotal((int) pageInfo.getTotal());
        pageResp.setList(classQueryResps);

        return pageResp;
    }



    /**
     * 获取当前教师，当前课程的所有学生信息
     *
     * @param req
     * @return
     */
    @Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
    @Override
    public List<TeacherMyStudentResp> getMyStudent(TeacherMyStudentReq req) {
        long classId = Long.parseLong(req.getClassid());

        ScoreExample scoreExample = new ScoreExample();
        scoreExample.createCriteria().andClassidEqualTo(classId);
        List<Score> scores = scoreMapper.selectByExample(scoreExample);

        /**
         * 查询出所有学生信息
         */
        List<TeacherMyStudentResp> students = new ArrayList<>();
        for (Score score : scores) {
            Student student = studentMapper.selectByPrimaryKey(score.getStudentid());
            TeacherMyStudentResp teacherMyStudentResp = new TeacherMyStudentResp();
            teacherMyStudentResp.setId(student.getId());
            teacherMyStudentResp.setName(student.getRealname());
            teacherMyStudentResp.setEmail(student.getEmail());
            teacherMyStudentResp.setScore(score.getScorenum());
            students.add(teacherMyStudentResp);
        }
        return students;
    }

    /**
     * 教师修改学生成绩
     *
     * @param req
     */
    @Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
    @Override
    public void changeScore(TeacherChangeScoreReq req) {
        long classId = Long.parseLong(req.getClassid());
        long studentId = Long.parseLong(req.getStudentid());
        float score = Float.parseFloat(req.getScore());

        ScoreExample scoreExample = new ScoreExample();
        scoreExample.createCriteria().andStudentidEqualTo(studentId)
                .andClassidEqualTo(classId);
        List<Score> scores = scoreMapper.selectByExample(scoreExample);

        /**
         * 没有该条信息
         */
        if (scores==null || scores.size()==0) {
            return ;
        }

        /**
         * 更新成绩信息
         */
        Score dbScore = scores.get(0);
        dbScore.setScorenum(score);
        scoreMapper.updateByPrimaryKeySelective(dbScore);
    }

    @Override
    public PageResp<TeacherQueryResp> list(TeacherQureyReq req) {
        TeacherExample teacherExample = new TeacherExample();
        TeacherExample.Criteria criteria = teacherExample.createCriteria();
        if (!req.getLoginName().isEmpty()) {
            criteria.andLoginnameLike("%"+req.getLoginName()+"%");
        }if (!req.getName().isEmpty()) {
            criteria.andRealnameLike("%"+req.getName()+"%");
        }if (!req.getAcedemicTitle().isEmpty()) {
            criteria.andAcademicTitleEqualTo(req.getAcedemicTitle());

        }

        PageHelper.startPage(req.getPageNum(), req.getPageSize());
        List<Teacher> teachers = teacherMapper.selectByExample(teacherExample);
        PageInfo pageInfo = new PageInfo(teachers);
        List<TeacherQueryResp> resps = CopyUtil.copyList(teachers, TeacherQueryResp.class);
        PageResp<TeacherQueryResp> resp = new PageResp<>();
        resp.setList(resps);
        resp.setTotal((int) pageInfo.getTotal());
        resp.setPageNum(pageInfo.getPageNum());
        resp.setPageSize(pageInfo.getPageSize());
        return resp;
    }

    @Override
    public List listAcade() {
        List<Teacher> teachers = teacherMapper.selectByExample(null);
        Set<Object> set = new HashSet<>();
        teachers.forEach(it->{
            set.add(it.getAcademicTitle());
        });
        List resp = new ArrayList<>(set);
        return resp;
    }

    @Override
    public Teacher addTeacher(TeacherReq req) {
        Teacher copy = CopyUtil.copy(req, Teacher.class);
        copy.setCreatetime(new Date());
        teacherMapper.insertSelective(copy);
        copy.setLoginname(copy.getId().toString());
        copy.setPassword(copy.getLoginname());
        teacherMapper.updateByPrimaryKeySelective(copy);
        return copy;
    }


}
