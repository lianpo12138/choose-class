package rainclassv3.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import rainclassv3.mapper.ClassRoomMapper;
import rainclassv3.pojo.ClassRoom;
import rainclassv3.pojo.ClassRoomExample;
import rainclassv3.req.ClassRoomQueryReq;
import rainclassv3.resp.ClassroomQueryResp;
import rainclassv3.resp.PageResp;
import rainclassv3.service.ClassroomService;
import rainclassv3.util.CopyUtil;

import javax.annotation.Resource;
import java.util.Arrays;
import java.util.List;

/**
 * @创建人 wulinfeng
 * @创建时间 2022/2/14
 */
@Service
public class ClassroomServiceImpl implements ClassroomService {

    @Resource
    ClassRoomMapper classRoomMapper;

    private static final Logger LOG = LoggerFactory.getLogger(ClassroomServiceImpl.class);

    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    @Override
    public PageResp list(ClassRoomQueryReq req) {
        /* 设置起始页面和分页大小*/
        PageHelper.startPage(req.getPageNum(), req.getPageSize());
        ClassRoomExample example = new ClassRoomExample();
        String[] s = req.getQuery().split(",");
        /* 当query能被，分割时，表示根据教学楼集合查询*/
        if (s.length > 1) {
            example.createCriteria().andBuildingIn(Arrays.asList(s));
        } else {
            /* 查询条件*/
            String query = req.getQuery().isEmpty() ? "%%" : "%" + req.getQuery() + "%";
            /* 根据教室名 教室功能 所在教学楼 校区 模糊查询*/
            example.createCriteria().andNameLike(query);
            example.or(example.createCriteria().andFunctionLike(query));
            example.or(example.createCriteria().andBuildingLike(query));
            example.or(example.createCriteria().andOriginLike(query));
        }

        example.setOrderByClause("name asc");
        List<ClassRoom> classRooms = classRoomMapper.selectByExample(example);
        PageInfo<ClassRoom> info = new PageInfo<>(classRooms);
        List<ClassroomQueryResp> list = CopyUtil.copyList(classRooms, ClassroomQueryResp.class);
        PageResp pageResp = new PageResp();
        pageResp.setList(list);
        pageResp.setPageNum(info.getPageNum());
        pageResp.setPageSize(info.getPageSize());
        pageResp.setTotal((int) info.getTotal());
        return pageResp;
    }

    @Override
    public List listBuilding(){
        return classRoomMapper.groupbyBuilding();
    }
}
