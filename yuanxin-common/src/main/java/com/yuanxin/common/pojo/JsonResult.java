package com.yuanxin.common.pojo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class JsonResult {
	private  Integer code;//返回码
	private  String  message;//返回信息
	private  String  navtabid;//返回连接tab
	private  boolean closeCurrent;//是否关闭当前
}
