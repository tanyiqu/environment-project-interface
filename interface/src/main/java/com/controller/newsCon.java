package com.controller;

import com.interfaces.newsDao;
import com.object.news;
import com.result.Result;
import com.utils.myUtils;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class newsCon {

    private Result result=new Result();

    @RequestMapping("selectNews")
    @ResponseBody
    public Result selectNews(String type,Integer length){
        SqlSession session=new myUtils().getSession();
        newsDao dao=session.getMapper(newsDao.class);
        try{
            if (type==null){
                List<news> news = dao.selectAllNews();
                result.setSelects(news,"新闻");
            }else if(type.equals("r")&& length!=null){
                List<news> news = dao.selectRandomNews(length);
                result.setSelects(news,"新闻");
            }else{
                result.setStatus(400);
                result.setData("链接参数错误");
            }
        }catch(Exception e){
            result.setExcept("selectNews");
        }
        session.close();
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/insertNews",
            method={RequestMethod.POST,RequestMethod.GET})
    public Result insertNews(news news){
        SqlSession session=new myUtils().getSession_Auto();
        newsDao dao=session.getMapper(newsDao.class);
        try{
            Integer integer = dao.insertNews(news);
            result.setInsert(integer,"新闻",news);
        }catch(Exception e){
            result.setExcept("insertNews");
        }
        session.close();
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/deleteNews",
            method={RequestMethod.POST,RequestMethod.GET})
    public Result deleteNews(Integer newsId){
        SqlSession session=new myUtils().getSession_Auto();
        newsDao dao=session.getMapper(newsDao.class);
        try {
            Integer integer = dao.deleteNews(newsId);
            result.setDelete(integer,"新闻",String.valueOf(newsId));
        }catch(Exception e){
            result.setExcept("deleteNews");
        }
        session.close();
        return result;
    }
    
}
