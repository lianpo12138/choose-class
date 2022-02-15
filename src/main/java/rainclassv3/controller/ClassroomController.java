package rainclassv3.controller;

import com.github.pagehelper.PageInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import rainclassv3.pojo.ClassRoom;
import rainclassv3.req.ClassRoomQueryReq;
import rainclassv3.resp.ClassroomQueryResp;
import rainclassv3.resp.CommonResp;
import rainclassv3.resp.PageResp;
import rainclassv3.service.ClassroomService;

import javax.annotation.Resource;
import java.util.List;

/**
 * @创建人 wulinfeng
 * @创建时间 2022/2/14
 */
@RestController
@RequestMapping("/classroom")
public class ClassroomController {


    private static final Logger LOG= LoggerFactory.getLogger(ClassroomController.class);

    @Resource
    ClassroomService classroomService;

    @RequestMapping("/list")
    public CommonResp list(ClassRoomQueryReq req) {

        PageResp list = classroomService.list(req);
        LOG.info("------------查询到了"+list.getTotal()+"条数据！------------");
        CommonResp<PageResp<ClassroomQueryResp>> resp = new CommonResp<>();
        resp.setContent(list);
        return resp;
    }

    @RequestMapping("/buildings")
    public List<String> group(){
        List list = classroomService.listBuilding();
        LOG.info(list.toString());
        return list;
    }


}
