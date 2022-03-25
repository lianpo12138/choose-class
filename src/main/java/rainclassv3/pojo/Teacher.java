package rainclassv3.pojo;

import cn.afterturn.easypoi.excel.annotation.Excel;

import java.util.Date;

public class Teacher {

    @Excel(name = "工号")
    private Long id;

    private String loginname;

    @Excel(name = "教师姓名")
    private String realname;

    private String password;

    @Excel(name = "邮箱")
    private String email;

    private Date createtime;

    private Date logintime;

    @Excel(name = "职称")
    private String academicTitle;

    @Excel(name = "电话")
    private String phone;

    public Teacher(Long id, String loginname, String realname, String password, String email, Date createtime, Date logintime, String academicTitle, String phone) {
        this.id = id;
        this.loginname = loginname;
        this.realname = realname;
        this.password = password;
        this.email = email;
        this.createtime = createtime;
        this.logintime = logintime;
        this.academicTitle = academicTitle;
        this.phone = phone;
    }

    public Teacher() {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLoginname() {
        return loginname;
    }

    public void setLoginname(String loginname) {
        this.loginname = loginname == null ? null : loginname.trim();
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname == null ? null : realname.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getLogintime() {
        return logintime;
    }

    public void setLogintime(Date logintime) {
        this.logintime = logintime;
    }

    public String getAcademicTitle() {
        return academicTitle;
    }

    public void setAcademicTitle(String academicTitle) {
        this.academicTitle = academicTitle == null ? null : academicTitle.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }
}
