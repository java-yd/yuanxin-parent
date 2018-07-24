<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<div class="bjui-pageContent">
	<form action="<%=basePath%>template/saveTemplateId" id="saveTemplateId" class="pageForm" data-toggle="validate">
		<input  type="hidden"  name="t_id"  value="${dates.t_id }">
		
		<div style="margin:10px auto 0; width:400px;">
		<fieldset>
				<legend>设置模板id</legend>
			<table class="table table-condensed table-hover">
				<thead>
				</thead>
				<tbody>
					<tr height="40px;">
							<td style="border-top: 0px;" align="right"><label class="label-control">模板id：</label></td>
							<td style="border-top: 0px;" colspan="3"><input type="text" class="form-control" name="t_templateid"
								id="t_templateid" size="30" data-rule="required"  value="${dates.t_templateid }"/></td>
					</tr>
					
					<tr height="40px;">
							<td style="border-top: 0px;" align="right"><label class="label-control">模板名称：</label></td>
							<td style="border-top: 0px;" colspan="3"><input type="text" class="form-control" name="t_name"
								id="t_name" size="30" data-rule="required"  value="${t_name }"/></td>
					</tr>
				</tbody>
			</table>
			</fieldset>
		</div>
	</form>
</div>
<div class="bjui-pageFooter">
	<ul>
		<li><button type="button" class="btn-close" data-icon="close">关闭</button></li>
		<li><button type="submit" class="btn btn-default" data-icon="save" onsubmit="checkvalue()">保存</button></li>
	</ul>
</div>

