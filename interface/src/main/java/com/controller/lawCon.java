package com.controller;

import com.interfaces.lawDao;
import com.object.law;
import com.result.Result;
import com.utils.myUtils;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class lawCon {


    @ResponseBody
    @RequestMapping(value="/selectAllLaw",
        method={RequestMethod.GET})
    public Result selectAllLaw(){
        Result result=new Result();
        SqlSession session=new myUtils().getSession();
        lawDao dao=session.getMapper(lawDao.class);
        List<law> laws = dao.selectAllLaw();
        result.setSelects(laws,"法律");
        session.close();
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/deleteLaw",
            method={RequestMethod.GET})
    public Result deleteLaw(int lawId){
        Result result=new Result();
        SqlSession session=new myUtils().getSession();
        lawDao dao=session.getMapper(lawDao.class);
        try{
            Integer integer = dao.deleteLaw(lawId);
            result.setDelete(integer,"法律",String.valueOf(lawId));
        }catch(Exception e){
            result.setExcept("deleteLaw");
        }
        session.close();
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/insertLaw",
            method={RequestMethod.GET})
    public Result insertLaw(law law){
        Result result=new Result();
        SqlSession session=new myUtils().getSession();
        lawDao dao=session.getMapper(lawDao.class);
        try{
            Integer integer = dao.insertLaw(law);
            result.setInsert(integer,"法律",law);
        }catch(Exception e){
            result.setExcept("deleteLaw");
        }
        session.close();
        return result;
    }



}
