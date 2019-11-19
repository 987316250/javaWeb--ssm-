package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class Add {
    //返回添加界面
    @RequestMapping("/add")
    public String add()
    {
        return "add";
    }
}
