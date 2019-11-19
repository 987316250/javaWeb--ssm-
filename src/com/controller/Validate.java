package com.controller;


import com.alibaba.fastjson.JSON;
import com.pojo.User;
import net.sf.json.JSONObject;
import org.omg.PortableInterceptor.INACTIVE;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/validation")
@ResponseBody
public class Validate {
    @RequestMapping("/verify")
    public Map<String, String> verify(@RequestParam("username") String username, @RequestParam("password")String password)
    {
//        {1:"hello"}
//        HashMap<Integer,String>m=new HashMap<>();
//        m.put(1,"hello");
//        System.out.println(JSON.toJSONString(m));
        //检测验证是否成功
        String res=null;
        System.out.println("用户名"+username+"密码"+password);
        if(username.equals("admin")&&password.equals("admin"))
        {
            res="true";
        }
        else
            res="false";
        Map<String,String> mp=new HashMap<>();
        mp.put("result",res);
        return mp;
    }
}
