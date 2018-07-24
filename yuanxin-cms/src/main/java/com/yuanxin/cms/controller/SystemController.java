package com.yuanxin.cms.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/")
public class SystemController {

	@ResponseBody
	@RequestMapping("test")
	public   String   test(){
		return  "hello";
	}
	
	/**
	 * 跳转到首页，不需要登录，因为默认session中设置数据了
	 * @param httpSession
	 * @return
	 */
	@RequestMapping("/")
	public  String    sendHtml(HttpSession  httpSession){
		System.out.println("sendHtml");
		httpSession.setAttribute("m_name", "张三");
		return  "ma_index_wel";
	}
	
}
