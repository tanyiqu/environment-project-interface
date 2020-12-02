package com.controller;

import com.interfaces.userDao;
import com.object.user;
import com.result.Result;
import com.utils.myUtils;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
public class userCon {
    /**
     * 用户登录
     * @param userCount
     * @param passwd
     * @return
     */
    @RequestMapping(value="/login",
            method={RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public Result selectUser(String userCount,String passwd){
        SqlSession session=new myUtils().getSession();
        userDao dao=session.getMapper(userDao.class);
        user user = dao.selectUser(userCount);
        Result result=new Result();
        Map<String,String> map=new HashMap<>();
        if(user!=null){
            if (user.getUserPasswd()==passwd){
                result.setStatus(200);
                map.put("info","密码正确");
            }else{
                result.setStatus(401);
                map.put("info","密码错误");
            }
        }else{
            result.setStatus(400);
            map.put("info","用户不存在");
        }
        result.setData(map);
        session.close();
        return result;
    }


    @RequestMapping(value="/userUpdate")
    @ResponseBody
    public Result updateUser(user user){
        Result result=new Result();
        SqlSession session=new myUtils().getSession_Auto();
        userDao dao = session.getMapper(userDao.class);
        Integer integer = dao.updateUser(user);
        result.setUpdate(integer,"用户",user.getUserCount());
        session.close();
        return result;
    }

    @RequestMapping(value="/userDelete",
            method={RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public Result userDelete(String userCount){
        Result result=new Result();
        SqlSession session=new myUtils().getSession_Auto();
        userDao dao=session.getMapper(userDao.class);
        Integer integer = dao.deleteUser(userCount);
        result.setDelete(integer,"用户",userCount);
        session.close();
        return result;
    }
}
