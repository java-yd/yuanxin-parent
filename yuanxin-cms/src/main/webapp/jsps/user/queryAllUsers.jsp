<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script language="javascript" src="<%=basePath %>ajax/ToolTip.js"></script>
<div class="bjui-pageHeader">
    <form id="pagerForm" data-toggle="ajaxsearch" action="<%=basePath %>user/queryAllUsers" method="post">
 				<input type="hidden" name="pageSize" value="${data.pageSize}"> <input type="hidden" name="currentPage" value="${data.currentPage}">
 				
    </form>
</div>
<div class="bjui-pageContent tableContent">
    <table class="table table-bordered table-hover table-striped table-top"   data-selected-multi="false" data-toggle="tablefixed"  data-width="100%">
        <thead>
        	<tr>
                <th width="3%" align="center">序号</th>
                <th>openid</th>
                <th>昵称</th>
                <th width="9%">模板状态</th> 
            </tr>
        </thead>
        <tbody>
        	<c:forEach var="dates" items="${requestScope.data.dataList }" varStatus="stat">
	            <tr data-id="1">
	                <td align="center">${stat.index+1 }</td>
	                <td>${dates.UId}--${requestScope.data.pageNumShown }</td>
	                <td>${dates.UName}</td>
	                
	                <td align="center">
	                	<a href="" class="btn btn-red" data-toggle="doajax" data-icon="toggle-off"  data-confirm-msg="确定要禁用这个模板吗？">禁用</a>	
	           		</td>
	           	</tr>
            </c:forEach>
        </tbody>
    </table>
</div>
<div class="bjui-pageFooter">
    <div class="pages">
        <span>每页&nbsp;</span>
        <div class="selectPagesize">
            <select data-toggle="selectpicker" data-toggle-change="changepagesize"  name="pageSize">
                <option value="10" ${requestScope.data.pageSize==10?'selected':'' }>10</option>
                <option value="20" ${requestScope.data.pageSize==20?'selected':'' }>20</option>
                <option value="30" ${requestScope.data.pageSize==30?'selected':'' }>30</option>
                <option value="50" ${requestScope.data.pageSize==50?'selected':'' }>50</option>
            </select>
        </div>
        <span>&nbsp;条，共 ${requestScope.data.totalCount } 条</span>
    </div>
    <div class="pagination-box" data-toggle="pagination" data-total="${requestScope.data.totalCount }" data-page-size="${requestScope.data.pageSize }" data-page-current="${requestScope.data.currentPage }">
    </div>
</div>