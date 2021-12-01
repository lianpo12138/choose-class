package rainclassv3.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import rainclassv3.pojo.CoursesChoose;
import rainclassv3.pojo.CoursesChooseExample;

public interface CoursesChooseMapper {
    long countByExample(CoursesChooseExample example);

    int deleteByExample(CoursesChooseExample example);

    int deleteByPrimaryKey(Integer coursesOpenId);

    int insert(CoursesChoose record);

    int insertSelective(CoursesChoose record);

    List<CoursesChoose> selectByExample(CoursesChooseExample example);

    CoursesChoose selectByPrimaryKey(Integer coursesOpenId);

    int updateByExampleSelective(@Param("record") CoursesChoose record, @Param("example") CoursesChooseExample example);

    int updateByExample(@Param("record") CoursesChoose record, @Param("example") CoursesChooseExample example);

    int updateByPrimaryKeySelective(CoursesChoose record);

    int updateByPrimaryKey(CoursesChoose record);
}