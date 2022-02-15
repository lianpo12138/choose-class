package rainclassv3.service;

import rainclassv3.req.ClassRoomQueryReq;
import rainclassv3.resp.PageResp;

import java.util.List;

/**
 * @创建人 wulinfeng
 * @创建时间 2022/2/14
 */
public interface ClassroomService {

    /* 模糊查询编号/教室名/教室功能/所在教学楼/校区*/
    PageResp list(ClassRoomQueryReq req);

    /* 查询教学楼集合*/
    List listBuilding();

}
