package rainclassv3.pojo;

public class ClassStudent {
    private Integer id;

    private Integer classId;

    private Integer student;

    public ClassStudent(Integer id, Integer classId, Integer student) {
        this.id = id;
        this.classId = classId;
        this.student = student;
    }

    public ClassStudent() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getClassId() {
        return classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
    }

    public Integer getStudent() {
        return student;
    }

    public void setStudent(Integer student) {
        this.student = student;
    }
}
