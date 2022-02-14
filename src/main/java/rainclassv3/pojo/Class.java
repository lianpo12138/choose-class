package rainclassv3.pojo;

import java.util.Date;

public class Class {
    private Long id;

    private String classname;

    private Long teacherid;

    private String starttime;

    private String code;

    private String place;

    private String notice;

    private String type;

    private Integer credit;

    private Date createtime;

    private String path;

    private Integer creditHours;

    private Integer isexam;

    public Class(Long id, String classname, Long teacherid, String starttime, String code, String place, String notice, String type, Integer credit, Date createtime, String path, Integer creditHours, Integer isexam) {
        this.id = id;
        this.classname = classname;
        this.teacherid = teacherid;
        this.starttime = starttime;
        this.code = code;
        this.place = place;
        this.notice = notice;
        this.type = type;
        this.credit = credit;
        this.createtime = createtime;
        this.path = path;
        this.creditHours = creditHours;
        this.isexam = isexam;
    }

    public Class() {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname == null ? null : classname.trim();
    }

    public Long getTeacherid() {
        return teacherid;
    }

    public void setTeacherid(Long teacherid) {
        this.teacherid = teacherid;
    }

    public String getStarttime() {
        return starttime;
    }

    public void setStarttime(String starttime) {
        this.starttime = starttime == null ? null : starttime.trim();
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place == null ? null : place.trim();
    }

    public String getNotice() {
        return notice;
    }

    public void setNotice(String notice) {
        this.notice = notice == null ? null : notice.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public Integer getCredit() {
        return credit;
    }

    public void setCredit(Integer credit) {
        this.credit = credit;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path == null ? null : path.trim();
    }

    public Integer getCreditHours() {
        return creditHours;
    }

    public void setCreditHours(Integer creditHours) {
        this.creditHours = creditHours;
    }

    public Integer getIsexam() {
        return isexam;
    }

    public void setIsexam(Integer isexam) {
        this.isexam = isexam;
    }
}