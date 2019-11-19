package com.service;

import com.dao.ContactDao;
import com.pojo.Contact;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.expression.EvaluationException;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContactService {

    @Autowired
    public ContactDao dao;
    //查
    public List<Contact> selectAll()
    {
        return dao.selectAll();
    }
    //增
    public int addContact(Contact c)
    {
        return dao.addContact(c);
    }
    //删
    public  int deleteContact(String id)
    {
        return dao.deleteContact(id);
    }
    //改
    public int updateContact(Contact c)
    {
        return dao.updateContact(c);
    }

}
