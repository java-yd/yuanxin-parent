package com.yuanxin.common.utils;

import com.yuanxin.common.pojo.JsonResult;

/**
 * 输出的json格式，样例
 * 
 * @author Administrator
 */
public class JsonPrint {

	
	/**
	 * 
	 * @param con 当前Controller
	 * @param code 返回码
	 * @param message 返回信息
	 * @param navtabid 返回连接tab
	 * @param closeCurrent 是否关闭当前
	 */
	public static JsonResult printJsonBjuiTab(int code,String message,String navtabid,boolean closeCurrent){
		return  new  JsonResult(code, message, navtabid, closeCurrent);
	}
	


}
