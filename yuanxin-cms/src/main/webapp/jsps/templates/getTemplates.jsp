<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script language="javascript" src="<%=basePath %>ajax/ToolTip.js"></script>
<div class="bjui-pageHeader">
    <form id="pagerForm" data-toggle="ajaxsearch" action="<%=basePath %>templates/getTemplates" method="post">
 				<input type="hidden" name="pageSize" value="${PageSize}"> <input type="hidden" name="currentPage" value="${currentPage}">
 				
    </form>
</div>
<div class="bjui-pageContent tableContent">
    <table class="table table-bordered table-hover table-striped table-top"   data-selected-multi="false" data-toggle="tablefixed"  data-width="100%">
        <thead>
        	<tr>
                <th width="3%" align="center">序号</th>
                <th>商铺编号</th>
                <th>商铺名称</th>
                <th >模板id</th> 
                <th>模板类型</th> 
                <th>模板字段</th> 
                <th width="9%">模板状态</th> 
            </tr>
        </thead>
        <tbody>
        	<c:forEach var="dates" items="${requestScope.list }" varStatus="stat">
	            <tr data-id="1">
	                <td align="center">${stat.index+1 }</td>
	                <td>${dates.t_appid}</td>
	                <td>${dates.s_name}</td>
	                
	                <td>
	                	<a href="<%=basePath %>templates/editTemplateId?t_id=${dates.t_id }" class="btn btn-green" data-toggle="dialog" data-icon="cog"  data-id="editTemplateId" data-width="500" data-height="300" data-max="false" title="设置模板id">设置</a>	
	                	${dates.t_templateid}
	                </td>
	                <td>
	                	<c:choose>
	                		<c:when test="${dates.t_type==1}">订单支付成功通知<div style="height: 3px"/>(用户支付订单成功推送)</c:when>
	                		<c:when test="${dates.t_type==2}">订单确认通知<div style="height: 3px"/>(商家接受订单推送)</c:when>
	                		<c:when test="${dates.t_type==3}">订单取消通知<div style="height: 3px"/>(商家拒绝接单或者用户取消订单)</c:when>
	                		<c:when test="${dates.t_type==4}">订单发货提醒<div style="height: 3px"/>(订单发货推送)</c:when>
	                		<c:otherwise>退款申请通知<div style="height: 3px"/>(商家同意用户发起的订单退款推送)</c:otherwise>		
	                	</c:choose>
	                </td>
	                <td>
	                	<c:choose>
	                		<c:when test="${dates.t_type==1}">订单编号,商品名称,下单时间,支付时间,订单金额,订单状态</c:when>
	                		<c:when test="${dates.t_type==2}">订单编号,商品名称,订单金额</c:when>
	                		<c:when test="${dates.t_type==3}">订单编号,商品名称,取消时间,订单退款,取消原因</c:when>
	                		<c:when test="${dates.t_type==4}">订单编号,商品名称,发货时间,收货地址</c:when>
	                		<c:otherwise>订单编号,商品名称,退款金额</c:otherwise>		
	                	</c:choose>
	                </td>
	               
	                <td align="center">
	                	<c:choose>
	                		<c:when test="${dates.t_state==0}">
	                			<a href="<%=basePath %>templates/setTemplateState?t_id=${dates.t_id }&state=0" class="btn btn-blue" data-toggle="doajax" data-icon="toggle-on" data-confirm-msg="确定要启用这个模板吗？">启用</a>	
	                		</c:when>
	                		<c:otherwise>
	                			<a href="<%=basePath %>templates/setTemplateState?t_id=${dates.t_id }&state=1" class="btn btn-red" data-toggle="doajax" data-icon="toggle-off"  data-confirm-msg="确定要禁用这个模板吗？">禁用</a>	
	                		</c:otherwise>
	                	</c:choose>
	            </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
<div class="bjui-pageFooter">
    <div class="pages">
        <span>每页&nbsp;</span>
        <div class="selectPagesize">
            <select data-toggle="selectpicker" data-toggle-change="changepagesize"  name="pageNumShown">
                <option value="10" ${requestScope.PageSize==10?'selected':'' }>10</option>
                <option value="20" ${requestScope.PageSize==20?'selected':'' }>20</option>
                <option value="30" ${requestScope.PageSize==30?'selected':'' }>30</option>
                <option value="50" ${requestScope.PageSize==50?'selected':'' }>50</option>
            </select>
        </div>
        <span>&nbsp;条，共 ${requestScope.totalCount } 条</span>
    </div>
    <div class="pagination-box" data-toggle="pagination" data-total="${requestScope.totalCount }" data-page-size="${requestScope.PageSize }" data-page-current="${requestScope.currentPage }">
    </div>
</div>