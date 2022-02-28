package rainclassv3.pojo;

import java.util.Date;

public class Class {
    private Long id;

    private String classname;

    private Long teacherid;

    private String type;

    private Integer credit;

    private Integer creditHours;

    private String term;

    private Integer planNum;

    private Integer realityNum;

    private Date createtime;

    private String notice;

    private String simpleTime;

    public Class(Long id, String classname, Long teacherid, String type, Integer credit, Integer creditHours, String term, Integer planNum, Integer realityNum, Date createtime, String notice, String simpleTime) {
        this.id = id;
        this.classname = classname;
        this.teacherid = teacherid;
        this.type = type;
        this.credit = credit;
        this.creditHours = creditHours;
        this.term = term;
        this.planNum = planNum;
        this.realityNum = realityNum;
        this.createtime = createtime;
        this.notice = notice;
        this.simpleTime = simpleTime;
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

    public Integer getCreditHours() {
        return creditHours;
    }

    public void setCreditHours(Integer creditHours) {
        this.creditHours = creditHours;
    }

    public String getTerm() {
        return term;
    }

    public void setTerm(String term) {
        this.term = term == null ? null : term.trim();
    }

    public Integer getPlanNum() {
        return planNum;
    }

    public void setPlanNum(Integer planNum) {
        this.planNum = planNum;
    }

    public Integer getRealityNum() {
        return realityNum;
    }

    public void setRealityNum(Integer realityNum) {
        this.realityNum = realityNum;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getNotice() {
        return notice;
    }

    public void setNotice(String notice) {
        this.notice = notice == null ? null : notice.trim();
    }

    public String getSimpleTime() {
        return simpleTime;
    }

    public void setSimpleTime(String simpleTime) {
        this.simpleTime = simpleTime == null ? null : simpleTime.trim();
    }
}