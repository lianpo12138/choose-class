package rainclassv3.pojo;

public class CoursesOpen {
    private Integer coursesOpenId;

    private Integer coursesId;

    private Integer teacherId;

    private String schoolYear;

    private Boolean term;

    public CoursesOpen(Integer coursesOpenId, Integer coursesId, Integer teacherId, String schoolYear, Boolean term) {
        this.coursesOpenId = coursesOpenId;
        this.coursesId = coursesId;
        this.teacherId = teacherId;
        this.schoolYear = schoolYear;
        this.term = term;
    }

    public CoursesOpen() {
        super();
    }

    public Integer getCoursesOpenId() {
        return coursesOpenId;
    }

    public void setCoursesOpenId(Integer coursesOpenId) {
        this.coursesOpenId = coursesOpenId;
    }

    public Integer getCoursesId() {
        return coursesId;
    }

    public void setCoursesId(Integer coursesId) {
        this.coursesId = coursesId;
    }

    public Integer getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }

    public String getSchoolYear() {
        return schoolYear;
    }

    public void setSchoolYear(String schoolYear) {
        this.schoolYear = schoolYear == null ? null : schoolYear.trim();
    }

    public Boolean getTerm() {
        return term;
    }

    public void setTerm(Boolean term) {
        this.term = term;
    }
}