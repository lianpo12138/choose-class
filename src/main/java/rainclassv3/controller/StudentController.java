package rainclassv3.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;
import rainclassv3.pojo.Student;
import rainclassv3.req.*;
import rainclassv3.resp.CommonResp;
import rainclassv3.resp.PageResp;
import rainclassv3.resp.StudentResp;
import rainclassv3.service.StudentService;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.List;

/**
 * @ClassName StudentController
 * @Description TODO
 * @Author FARO_Z
 * @Date 2021/6/20 下午1:59
 * @Version 1.0
 **/
@RestController
@RequestMapping("/student")
public class StudentController {

    private static final Logger LOG = LoggerFactory.getLogger(StudentController.class);

    @Resource
    private StudentService studentService;

    @GetMapping("/all")
    public List<StudentResp> getALl(){
        List<StudentResp> studentResps = studentService.getAll();
        return studentResps;
    }



    /**
     * 获取学生课程信息
     * @param req
     * @return
     */
    @GetMapping("/listClasses")
    public CommonResp getStudentClassList(StudentClassQueryReq req) {
        CommonResp commonResp = new CommonResp();
        return commonResp;
    }
    /**
     * 获取学生集合信息
     * @param req
     * @return
     */
    @PostMapping("/listStudents")
    public CommonResp getStudents(@Valid @RequestBody StudentQueryReq req) {
        PageResp<Student> studentPageResp = studentService.listStudents(req);
        CommonResp commonResp = new CommonResp();
        commonResp.setContent(studentPageResp);
        return commonResp;
    }


    /**
     * 查询是否已经选课接口
     * @param req
     * @return
     */
    @GetMapping("/isChosen")
    public CommonResp isChosen(StudentIsChosenReq req) {
        LOG.info("/isChosen 传入的信息为:{}" + req);
        boolean res = studentService.isChosen(req);
        CommonResp commonResp = new CommonResp();
        commonResp.setContent(res);
        return commonResp;
    }


    /**
     * 获取当前学生已经选择的课程的接口
     *
     * @return
     */
    @GetMapping("/myClass")
    public CommonResp getMyClass(String studentId) {
        List list = studentService.list(studentId);
        CommonResp commonResp = new CommonResp();
        commonResp.setContent(list);
        return commonResp;
    }


    /**
     * 选课接口
     *
     * @return
     */
    @RequestMapping("/selectClass")
    public CommonResp selectClass(StudentClassChangeReq req) {
        int i = studentService.selectClass(req);
        CommonResp commonResp = new CommonResp();
        if (i == 0) {
            commonResp.setMessage("该学生已选择该门课程！");
            commonResp.setSuccess(false);
        } else {
            commonResp.setMessage("选课成功！");
        }

        return commonResp;
    }


    /**
     * 退选接口
     *
     * @return
     */
    @RequestMapping("/cancelClass")
    public CommonResp cancelClass(StudentClassChangeReq req) {
        studentService.cancelClass(req);
        CommonResp commonResp = new CommonResp();
        return commonResp;
    }


    /**
     * 学生 获取我的成绩接口
     *
     * @return
     */
    @GetMapping("/myScore")
    public CommonResp myScore(StudentMyScoreReq req) {
        PageResp myScore = studentService.getMyScore(req);
        LOG.info("查询到的学生成绩信息为:{}", myScore);
        CommonResp commonResp = new CommonResp();
        commonResp.setContent(myScore);
        return commonResp;
    }


}
