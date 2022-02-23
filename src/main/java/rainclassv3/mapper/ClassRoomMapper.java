package rainclassv3.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import rainclassv3.pojo.ClassRoom;
import rainclassv3.pojo.ClassRoomExample;

public interface ClassRoomMapper {
    long countByExample(ClassRoomExample example);

    int deleteByExample(ClassRoomExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ClassRoom record);

    int insertSelective(ClassRoom record);

    List<ClassRoom> selectByExample(ClassRoomExample example);

    ClassRoom selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ClassRoom record, @Param("example") ClassRoomExample example);

    int updateByExample(@Param("record") ClassRoom record, @Param("example") ClassRoomExample example);

    int updateByPrimaryKeySelective(ClassRoom record);

    int updateByPrimaryKey(ClassRoom record);

    List groupbyBuilding();
}