package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class UP {
    @RequestMapping("/modify")
    public String modify()
    {
        return "update";
    }
}
