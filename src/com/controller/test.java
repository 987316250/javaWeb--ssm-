package com.controller;

import com.pojo.Contact;
import com.service.ContactService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.xml.ws.Service;
import java.util.List;

public class test {


    public static void main(String[] args) {
        ApplicationContext context=new ClassPathXmlApplicationContext("spring-config.xml");
        ContactService s=(ContactService)context.getBean("contactService");
        List<Contact> c=s.selectAll();
        for(Contact each:c)
        {
            System.out.println(each.toString());
        }
    }
}
