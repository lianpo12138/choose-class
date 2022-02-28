package rainclassv3.resp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import rainclassv3.pojo.Teacher;

/**
 * @ClassName ClassQueryResp
 * @Description TODO
 * @Author FARO_Z
 * @Date 2021/6/19 下午2:22
 * @Version 1.0
 **/
@AllArgsConstructor
@NoArgsConstructor
@Data
public class ClassQueryResp {

    private Long id;

    private String classname;

    private Long teacherid;

    private String notice;


    private Integer planNum;

    private Integer realityNum;

    private String simpleTime;

    private Teacher teacher;



}
