package rainclassv3.req;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.ibatis.annotations.Mapper;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

/**
 * @创建人 wulinfeng
 * @创建时间 2022/3/1
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class TeacherQureyReq extends PageReq {

    @NotNull(message = "工号不能为空")
    private String loginName;
    /* 姓名*/
    @NotNull(message = "姓名不能为空")
    private String name;
    /* 职称*/
    @NotNull(message = "职称不能为空")
    private String acedemicTitle;
}
