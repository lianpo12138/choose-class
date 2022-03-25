package rainclassv3.req;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;

/**
 * @创建人 wulinfeng
 * @创建时间 2022/3/2
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class StudentQueryReq extends PageReq {

    @NotNull(message = "学号不能为空")
    private String loginname;
    @NotNull(message = "姓名不能为空")
    private String name;

}
