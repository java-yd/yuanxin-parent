
package com.yuanxin.cms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.yuanxin.common.pojo.PageResult;
import com.yuanxin.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	private  UserService   userService;
	
	@RequestMapping("queryAllUsers")
	public   String    queryAllUsers(@RequestParam(defaultValue="1")Integer  currentPage,
				@RequestParam(defaultValue="20")Integer  pageSize,Model  model){
		System.out.println(currentPage+":"+pageSize);
		PageResult pageResult = userService.findAllUsers(currentPage,pageSize);
		model.addAttribute("data", pageResult);
		return  "user/queryAllUsers";
	}
}
