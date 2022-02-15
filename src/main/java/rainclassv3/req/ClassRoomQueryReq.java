package rainclassv3.req;

import lombok.Data;

import java.util.List;

/**
 * @创建人 wulinfeng
 * @创建时间 2022/2/14
 */
@Data
public class ClassRoomQueryReq extends PageReq{

    /* 查询条件*/
    private String query;

}
