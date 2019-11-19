package com.controller;

import com.alibaba.fastjson.JSON;
import com.pojo.Contact;
import com.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/")

public class update {
    @RequestMapping("/update")
    @ResponseBody
    public String update(HttpServletRequest req,Contact c)
    {
        req.getSession().setAttribute("c",c);
                return "update";
    }
}
