package com.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.pojo.Contact;
import com.service.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.script.ScriptContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/contact")
public class ContactController {

   @Autowired
    private ContactService contactService;
    //返回一个contact数组的json
    @ResponseBody
    @RequestMapping(value = "/refresh",produces = {"application/json;charset=UTF-8"})
    public List<Contact> selectAll()
    {
          List<Contact> list=contactService.selectAll();
//          String s= JSON.toJSONString(list);
//          System.out.println(s);
          return list;
    }
    @ResponseBody
    @RequestMapping("/delete")
    public Map<String,String> deleteContact(@RequestParam("id") String id)
    {
        contactService.deleteContact(id);
        Map<String,String> mp=new HashMap<>();
        mp.put("result","true");
        return mp;
    }
    @RequestMapping("/update")
    @ResponseBody
    public int updateContact(Contact c)
    {
        System.out.println(c);
        return contactService.updateContact(c);
    }
    @RequestMapping(value = "/add",produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public Map<String, String> addContact(Contact c)
    {
        System.out.println(c.toString());
        contactService.addContact(c);
        Map<String,String> mp=new HashMap<>();
        mp.put("result","true");
        return mp;

    }


}
