package com.interfaces;

import com.object.video;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface videoDao {

//    @Select("select * from video")
    List<video> selectAllVideo();

//    @Insert("insert into video values(#{videoName},#{videoUrl})")
    Integer insertVideo(video video);

//    @Delete("delete from video where videoId=#{videoId}")
    Integer deleteVideo(
            @Param("videoId") Integer videoId
    );


    Integer updateVideo(video video);
}
