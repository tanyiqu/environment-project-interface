package com.interfaces;

import com.object.video;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface videoDao {

    @Select("select * from video")
    List<video> selectAllVideo();

    
}
