package rainclassv3.service;

import rainclassv3.pojo.Teacher;
import rainclassv3.req.*;
import rainclassv3.resp.PageResp;
import rainclassv3.resp.TeacherMyStudentResp;
import rainclassv3.resp.TeacherQueryResp;

import javax.annotation.Resource;
import java.util.List;

public interface TeacherService {


    /**
     * 获取教师已经选择的课程的信息
     * @param req
     * @return
     */
    PageResp listClass(TeacherMyClassQueryReq req);


    /**
     * 获取当前教师，当前课程的所有学生信息
     * @param req
     * @return
     */
    List<TeacherMyStudentResp> getMyStudent(TeacherMyStudentReq req);


    /**
     * 教师修改学生成绩
     * @param req
     */
    void changeScore(TeacherChangeScoreReq req);


    /**
     * 根据查询条件获取教师信息
     * @return
     */
    PageResp<TeacherQueryResp> list(TeacherQureyReq req);

    /* 查询所有职称*/
    List listAcade();

    /* 添加老师*/
    Teacher addTeacher(TeacherReq req);

}
