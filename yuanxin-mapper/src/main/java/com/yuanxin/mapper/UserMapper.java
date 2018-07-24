package com.yuanxin.mapper;

import java.util.List;

import com.yuanxin.pojo.User;

public interface UserMapper {
    int deleteByPrimaryKey(String uId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String uId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    User selectByName(String  name);

	List<User> selectAllUsers();
}