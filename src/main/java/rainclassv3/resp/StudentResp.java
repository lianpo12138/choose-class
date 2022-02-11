package rainclassv3.resp;

/**
 * @创建人 libiao
 * @创建时间 2021/12/27
 */
public class StudentResp {
    private Long id;

    private String realname;

    private String password;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
