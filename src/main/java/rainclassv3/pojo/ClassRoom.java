package rainclassv3.pojo;

import cn.afterturn.easypoi.excel.annotation.Excel;

public class ClassRoom {
    private Integer id;

    @Excel(name = "教室编号")
    private String classroomId;

    @Excel(name = "教室名称")
    private String name;

    @Excel(name = "所在校区")
    private String origin;

    @Excel(name = "教室功能")
    private String function;

    @Excel(name = "所在教学楼")
    private String building;

    @Excel(name = "容纳人数")
    private Integer capacity;
    public ClassRoom(Integer id, String classroomId, String name, String origin, String function, String building, Integer capacity) {
        this.id = id;
        this.classroomId = classroomId;
        this.name = name;
        this.origin = origin;
        this.function = function;
        this.building = building;
        this.capacity = capacity;
    }

    public ClassRoom() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getClassroomId() {
        return classroomId;
    }

    public void setClassroomId(String classroomId) {
        this.classroomId = classroomId == null ? null : classroomId.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin == null ? null : origin.trim();
    }

    public String getFunction() {
        return function;
    }

    public void setFunction(String function) {
        this.function = function == null ? null : function.trim();
    }

    public String getBuilding() {
        return building;
    }

    public void setBuilding(String building) {
        this.building = building == null ? null : building.trim();
    }

    public Integer getCapacity() {
        return capacity;
    }

    public void setCapacity(Integer capacity) {
        this.capacity = capacity;
    }
}
