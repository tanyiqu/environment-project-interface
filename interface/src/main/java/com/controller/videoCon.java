package com.controller;

import com.interfaces.videoDao;
import com.object.video;
import com.result.Result;
import com.utils.myUtils;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class videoCon {
    private Result result=new Result();
    private String objectName="视频";
    @ResponseBody
    @RequestMapping(value="/selectAllVideo",
            method={RequestMethod.GET})
    public Result selectAllVideo(){
        SqlSession session=new myUtils().getSession();
        videoDao dao=session.getMapper(videoDao.class);
        try{
            List<video> videos = dao.selectAllVideo();
            result.setSelects(videos,objectName);
        }catch(Exception e){
            result.setExcept("selectAllVideo");
        }
        return result;
    }
}
