package rainclassv3.resp;

import lombok.Data;

/**
 * @创建人 wulinfeng
 * @创建时间 2022/2/14
 */
@Data
public class ClassroomQueryResp {
    private String classroomId;

    private String name;

    private String origin;

    private String function;

    private String building;

    /* 可容纳人数*/
    private Integer capacity;

}
