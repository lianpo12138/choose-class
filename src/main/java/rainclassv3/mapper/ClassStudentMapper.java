package rainclassv3.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import rainclassv3.pojo.ClassStudent;
import rainclassv3.pojo.ClassStudentExample;

public interface ClassStudentMapper {
    long countByExample(ClassStudentExample example);

    int deleteByExample(ClassStudentExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ClassStudent record);

    int insertSelective(ClassStudent record);

    List<ClassStudent> selectByExample(ClassStudentExample example);

    ClassStudent selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ClassStudent record, @Param("example") ClassStudentExample example);

    int updateByExample(@Param("record") ClassStudent record, @Param("example") ClassStudentExample example);

    int updateByPrimaryKeySelective(ClassStudent record);

    int updateByPrimaryKey(ClassStudent record);
}