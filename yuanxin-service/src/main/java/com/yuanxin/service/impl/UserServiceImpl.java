package com.yuanxin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yuanxin.common.pojo.PageResult;
import com.yuanxin.mapper.UserMapper;
import com.yuanxin.pojo.User;
import com.yuanxin.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private  UserMapper  userMapper;

	@Override
	public PageResult findAllUsers(Integer currentPage, Integer pageSize) {
		PageHelper.startPage(currentPage, pageSize);
		List<User>  list = userMapper.selectAllUsers();
		PageInfo<User>  pageInfo = new PageInfo<>(list);
		return  PageResult.list(pageInfo);
	}

	
}
