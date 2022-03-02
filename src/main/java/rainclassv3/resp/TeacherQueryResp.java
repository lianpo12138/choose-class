package rainclassv3.resp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @创建人 wulinfeng
 * @创建时间 2022/3/1
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
public class TeacherQueryResp {

    private Long id;
    /* 登录名*/
    private String loginname;
    /* 真实姓名*/
    private String realname;
    /* 职称*/
    private String academicTitle;

    private String email;

    private String phone;

}
