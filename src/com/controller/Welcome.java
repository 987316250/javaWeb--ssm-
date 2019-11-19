package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class Welcome {
    @RequestMapping("/welcome")
    public String Welcome()
    {
        return "index";
    }
}
