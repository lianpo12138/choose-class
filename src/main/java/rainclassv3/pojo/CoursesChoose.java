package rainclassv3.pojo;

public class CoursesChoose {
    private Integer coursesOpenId;

    private String studentNumber;

    private Integer performance;

    public CoursesChoose(Integer coursesOpenId, String studentNumber, Integer performance) {
        this.coursesOpenId = coursesOpenId;
        this.studentNumber = studentNumber;
        this.performance = performance;
    }

    public CoursesChoose() {
        super();
    }

    public Integer getCoursesOpenId() {
        return coursesOpenId;
    }

    public void setCoursesOpenId(Integer coursesOpenId) {
        this.coursesOpenId = coursesOpenId;
    }

    public String getStudentNumber() {
        return studentNumber;
    }

    public void setStudentNumber(String studentNumber) {
        this.studentNumber = studentNumber == null ? null : studentNumber.trim();
    }

    public Integer getPerformance() {
        return performance;
    }

    public void setPerformance(Integer performance) {
        this.performance = performance;
    }
}