package com.dao;

import com.pojo.Contact;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
@Mapper
public interface ContactDao
{
    //增
    public int addContact(Contact c);
    //删
    public int deleteContact(String id);
    //改
    public int updateContact(Contact c);
    //查
    public List<Contact> selectAll();
}

