package rainclassv3.req;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;

/**
 * @创建人 wulinfeng
 * @创建时间 2022/3/1
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
public class TeacherReq {

    @NotNull(message = "姓名不能为空")
    private String realname;
    /* 职称*/
    @NotNull(message = "职称不能为空")
    private String academicTitle;
    @NotNull(message = "邮箱不能为空")
    private String email;
    @NotNull(message = "电话不能为空")
    private String phone;

}
