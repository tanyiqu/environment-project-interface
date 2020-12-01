package com.interfaces;

import com.object.law;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface lawDao {
    @Select("select * from law;")
    List<law> selectAllLaw();

    @Insert("insert into law values(#{lawName},#{lawUrl});")
    Integer insertLaw(law law);

    @Delete("delete from law where lawId=#{lawId};")
    Integer deleteLaw(
            @Param("lawId") Integer lawId
    );


}
