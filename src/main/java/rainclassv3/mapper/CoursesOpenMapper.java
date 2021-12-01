package rainclassv3.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import rainclassv3.pojo.CoursesOpen;
import rainclassv3.pojo.CoursesOpenExample;

public interface CoursesOpenMapper {
    long countByExample(CoursesOpenExample example);

    int deleteByExample(CoursesOpenExample example);

    int deleteByPrimaryKey(Integer coursesOpenId);

    int insert(CoursesOpen record);

    int insertSelective(CoursesOpen record);

    List<CoursesOpen> selectByExample(CoursesOpenExample example);

    CoursesOpen selectByPrimaryKey(Integer coursesOpenId);

    int updateByExampleSelective(@Param("record") CoursesOpen record, @Param("example") CoursesOpenExample example);

    int updateByExample(@Param("record") CoursesOpen record, @Param("example") CoursesOpenExample example);

    int updateByPrimaryKeySelective(CoursesOpen record);

    int updateByPrimaryKey(CoursesOpen record);
}