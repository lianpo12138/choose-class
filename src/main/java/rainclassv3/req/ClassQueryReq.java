package rainclassv3.req;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import rainclassv3.pojo.Teacher;

import java.util.Date;

/**
 * @ClassName ClassQueryReq
 * @Description TODO
 * @Author FARO_Z
 * @Date 2021/6/19 下午2:14
 * @Version 1.0
 **/
@Data
public class ClassQueryReq extends PageReq{

    private String classname;

    private String type;

    private String teachername;

}
