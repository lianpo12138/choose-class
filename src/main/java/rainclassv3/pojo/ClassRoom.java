package rainclassv3.pojo;

public class ClassRoom {
    private Integer id;

    private String classroomId;

    private String name;

    private String origin;

    private String function;

    private String building;

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