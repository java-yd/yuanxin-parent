package com.yuanxin.cms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yuanxin.common.pojo.JsonResult;
import com.yuanxin.common.utils.JsonPrint;

@Controller
@RequestMapping("/template")
public class TemplateController {

	@RequestMapping("editTemplateId")
	public  String   editTemplateId(Model model){
		System.out.println("template");
		model.addAttribute("t_name", "好模板");
		return  "templates/editTemplateId";
	}
	
	@RequestMapping("saveTemplateId")
	@ResponseBody
	public  JsonResult   saveTemplateId(Integer  t_templateid,String  t_name){
		System.out.println(t_templateid+":"+t_name);
		return JsonPrint.printJsonBjuiTab(200, "成功", "", true);
	}
}
