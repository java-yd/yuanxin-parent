<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	if(session.getAttribute("m_name")!=null){
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>企联互联信息管理</title>
<!-- 默认用ie标准内核，增加标签：<meta name="renderer" content="ie-stand">
默认用ie兼容内核，增加标签：<meta name="renderer" content="ie-comp">
默认用急速内核，增加标签：<meta name="renderer" content="webkit">-->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit"> 
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="<%=basePath%>BJUI/themes/css/bootstrap.css" rel="stylesheet">
<!-- core - css -->
<link href="<%=basePath%>BJUI/themes/css/style.css" rel="stylesheet">
<link href="<%=basePath%>BJUI/themes/blue/core.css" id=BJUI-link-theme" rel="stylesheet">
<!-- plug - css -->
<link href="<%=basePath%>BJUI/plugins/colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
<link href="<%=basePath%>BJUI/plugins/niceValidator/jquery.validator.css" rel="stylesheet">
<link href="<%=basePath%>BJUI/plugins/bootstrapSelect/bootstrap-select.css" rel="stylesheet">
<link href="<%=basePath%>BJUI/themes/css/FA/css/font-awesome.min.css" rel="stylesheet">
<link href="<%=basePath%>css/amend01.css" rel="stylesheet">
<link rel="icon" href="<%=basePath%>favicon.ico" mce_href="<%=basePath%>favicon.ico" type="image/x-icon">

<!--[if lte IE 7]>
<link href="<%=basePath%>BJUI/themes/css/ie7.css" rel="stylesheet">
<![endif]-->
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lte IE 9]>
    <script src="<%=basePath%>BJUI/other/html5shiv.min.js"></script>
    <script src="<%=basePath%>BJUI/other/respond.min.js"></script>
<![endif]-->
<!-- jquery -->
<script src="<%=basePath%>BJUI/js/jquery-1.7.2.min.js"></script>
<script src="<%=basePath%>js/jquery-audioPlay.js"></script>
<script src="<%=basePath%>BJUI/js/jquery.cookie.js"></script>
<script src="<%=basePath%>baiduJs/baiduDitu.js"></script>
<!--[if lte IE 9]>
<script src="<%=basePath%>BJUI/other/jquery.iframe-transport.js"></script>    
<![endif]-->
<!-- BJUI.all 分模块压缩版 -->
<script src="<%=basePath%>BJUI/js/bjui-all.js"></script>
<!-- 以下是B-JUI的分模块未压缩版，建议开发调试阶段使用下面的版本 -->
<!--
<script src="<%=basePath%>BJUI/js/bjui-core.js"></script>
<script src="<%=basePath%>BJUI/js/bjui-regional.zh-CN.js"></script>
<script src="<%=basePath%>BJUI/js/bjui-frag.js"></script>
<script src="<%=basePath%>BJUI/js/bjui-extends.js"></script>
<script src="<%=basePath%>BJUI/js/bjui-basedrag.js"></script>
<script src="<%=basePath%>BJUI/js/bjui-slidebar.js"></script>
<script src="<%=basePath%>BJUI/js/bjui-contextmenu.js"></script>
<script src="<%=basePath%>BJUI/js/bjui-navtab.js"></script>
<script src="<%=basePath%>BJUI/js/bjui-dialog.js"></script>
<script src="<%=basePath%>BJUI/js/bjui-taskbar.js"></script>
<script src="<%=basePath%>BJUI/js/bjui-ajax.js"></script>
<script src="<%=basePath%>BJUI/js/bjui-alertmsg.js"></script>
<script src="<%=basePath%>BJUI/js/bjui-pagination.js"></script>
<script src="<%=basePath%>BJUI/js/bjui-util.date.js"></script>
<script src="<%=basePath%>BJUI/js/bjui-datepicker.js"></script>
<script src="<%=basePath%>BJUI/js/bjui-ajaxtab.js"></script>
<script src="<%=basePath%>BJUI/js/bjui-datagrid.js"></script>
<script src="<%=basePath%>BJUI/js/bjui-tablefixed.js"></script>
<script src="<%=basePath%>BJUI/js/bjui-tabledit.js"></script>
<script src="<%=basePath%>BJUI/js/bjui-spinner.js"></script>
<script src="<%=basePath%>BJUI/js/bjui-lookup.js"></script>
<script src="<%=basePath%>BJUI/js/bjui-tags.js"></script>
<script src="<%=basePath%>BJUI/js/bjui-upload.js"></script>
<script src="<%=basePath%>BJUI/js/bjui-theme.js"></script>
<script src="<%=basePath%>BJUI/js/bjui-initui.js"></script>
<script src="<%=basePath%>BJUI/js/bjui-plugins.js"></script>
-->
<!-- plugins -->
<!-- swfupload for uploadify && kindeditor -->
<script src="<%=basePath%>BJUI/plugins/swfupload/swfupload.js"></script>
<!-- colorpicker -->
<script src="<%=basePath%>BJUI/plugins/colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- ztree -->
<script src="<%=basePath%>BJUI/plugins/ztree/jquery.ztree.all-3.5.js"></script>
<!-- nice validate -->
<script src="<%=basePath%>BJUI/plugins/niceValidator/jquery.validator.js"></script>
<script src="<%=basePath%>BJUI/plugins/niceValidator/jquery.validator.themes.js"></script>
<!-- bootstrap plugins -->
<script src="<%=basePath%>BJUI/plugins/bootstrap.min.js"></script>
<script src="<%=basePath%>BJUI/plugins/bootstrapSelect/bootstrap-select.min.js"></script>
<script src="<%=basePath%>BJUI/plugins/bootstrapSelect/defaults-zh_CN.min.js"></script>
<!-- icheck -->
<script src="<%=basePath%>BJUI/plugins/icheck/icheck.min.js"></script>
<!-- dragsort -->
<script src="<%=basePath%>BJUI/plugins/dragsort/jquery.dragsort-0.5.1.min.js"></script>
<!-- HighCharts -->
<script src="<%=basePath%>BJUI/plugins/highcharts/highcharts.js"></script>
<script src="<%=basePath%>BJUI/plugins/highcharts/highcharts-3d.js"></script>
<script src="<%=basePath%>BJUI/plugins/highcharts/themes/gray.js"></script>
<!-- ECharts -->
<script src="<%=basePath%>BJUI/plugins/echarts/echarts.js"></script>
<!-- other plugins -->
<script src="<%=basePath%>BJUI/plugins/other/jquery.autosize.js"></script>
<link href="<%=basePath%>BJUI/plugins/uploadify/css/uploadify.css" rel="stylesheet">
<script src="<%=basePath%>BJUI/plugins/uploadify/scripts/jquery.uploadify.min.js"></script>
<script src="<%=basePath%>BJUI/plugins/download/jquery.fileDownload.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=basePath%>ueditor1.4.3/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=basePath%>ueditor1.4.3/ueditor.all.min.js"> </script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8" src="<%=basePath%>ueditor1.4.3/lang/zh-cn/zh-cn.js"></script>
<style type="text/css">
	#showbigpic {POSITION: absolute; Z-INDEX: 9999}
</style>
<!-- init -->
<script type="text/javascript">
$(function() {
    BJUI.init({
        JSPATH       : 'BJUI/',         //[可选]框架路径
        PLUGINPATH   : 'BJUI/plugins/', //[可选]插件路径
        loginInfo    : {url:'login_timeout.html', title:'登录', width:400, height:200}, // 会话超时后弹出登录对话框
        statusCode   : {ok:200, error:300, timeout:301}, //[可选]
        ajaxTimeout  : 50000, //[可选]全局Ajax请求超时时间(毫秒)
        pageInfo     : {total:'totalCount', pageCurrent:'currentPage', pageSize:'pageSize', orderField:'orderField', orderDirection:'orderDirection'}, //[可选]分页参数
        alertMsg     : {displayPosition:'topcenter', displayMode:'slide', alertTimeout:3000}, //[可选]信息提示的显示位置，显隐方式，及[info/correct]方式时自动关闭延时(毫秒)
        keys         : {statusCode:'statusCode', message:'message',callbackType:'callbackType',navTabId:'navTabId'}, //[可选]
        ui           : {
                         windowWidth      : 0,    //框架可视宽度，0=100%宽，> 600为则居中显示
                         showSlidebar     : true, //[可选]左侧导航栏锁定/隐藏
                         clientPaging     : true, //[可选]是否在客户端响应分页及排序参数
                         overwriteHomeTab : false //[可选]当打开一个未定义id的navtab时，是否可以覆盖主navtab(我的主页)
                       },
        debug        : true,    // [可选]调试模式 [true|false，默认false]
        theme        : 'sky' // 若有Cookie['bjui_theme'],优先选择Cookie['bjui_theme']。皮肤[五种皮肤:default, orange, purple, blue, red, green]
    });
    
    // main - menu
    $('#bjui-accordionmenu')
        .collapse()
        .on('hidden.bs.collapse', function(e) {
            $(this).find('> .panel > .panel-heading').each(function() {
                var $heading = $(this), $a = $heading.find('> h4 > a');
                
                if ($a.hasClass('collapsed')) $heading.removeClass('active');
            });
        })
        .on('shown.bs.collapse', function (e) {
            $(this).find('> .panel > .panel-heading').each(function() {
                var $heading = $(this), $a = $heading.find('> h4 > a');
                
                if (!$a.hasClass('collapsed')) $heading.addClass('active');
            });
        });
    
    $(document).on('click', 'ul.menu-items > li > a', function(e) {
        var $a = $(this), $li = $a.parent(), options = $a.data('options').toObj();
        var onClose = function() {
            $li.removeClass('active');
        }
        var onSwitch = function() {
            $('#bjui-accordionmenu').find('ul.menu-items > li').removeClass('switch');
            $li.addClass('switch');
        };
        
        $li.addClass('active');
        if (options) {
            options.url      = $a.attr('href'),
            options.onClose  = onClose,
            options.onSwitch = onSwitch
            if (!options.title) options.title = $a.text()
            
            if (!options.target)
                $a.navtab(options)
            else
                $a.dialog(options)
        }
        
        e.preventDefault()
    })
    
    //时钟
    var today = new Date(), time = today.getTime()
    $('#bjui-date').html(today.formatDate('yyyy/MM/dd'))
    setInterval(function() {
        today = new Date(today.setSeconds(today.getSeconds() + 1))
        $('#bjui-clock').html(today.formatDate('HH:mm:ss'))
    }, 1000)
})

//菜单-事件
function MainMenuClick(event, treeId, treeNode) {
    event.preventDefault()
    if (treeNode.isParent) {
        var zTree = $.fn.zTree.getZTreeObj(treeId)
        
        zTree.expandNode(treeNode, !treeNode.open, false, true, true)
        return
    }
    
    if (treeNode.target && treeNode.target == 'dialog')
        $(event.target).dialog({id:treeNode.tabid, url:treeNode.url, title:treeNode.name})
    else
        $(event.target).navtab({id:treeNode.tabid, url:treeNode.url, title:treeNode.name, fresh:treeNode.fresh, external:treeNode.external})
}

//当点击这个菜单时，会执行查找新订单个数的ajax请求
function myMainMenuClick(event, treeId, treeNode) {
    event.preventDefault()
    
    if (treeNode.isParent) {
        var zTree = $.fn.zTree.getZTreeObj(treeId)
        
        zTree.expandNode(treeNode, !treeNode.open, false, true, true)
        return
    }
    
    if (treeNode.target && treeNode.target == 'dialog')
        $(event.target).dialog({id:treeNode.tabid, url:treeNode.url, title:treeNode.name})
    else
        $(event.target).navtab({id:treeNode.tabid, url:treeNode.url, title:treeNode.name, fresh:treeNode.fresh, external:treeNode.external})
}
</script>
<!-- for doc begin -->
<!-- for doc end -->
</head>
<body>
	<!--[if lte IE 7]>
        <div id="errorie"><div>您还在使用老掉牙的IE，正常使用系统前请升级您的浏览器到 IE8以上版本 <a target="_blank" href="http://windows.microsoft.com/zh-cn/internet-explorer/ie-8-worldwide-languages">点击升级</a>&nbsp;&nbsp;强烈建议您更改换浏览器：<a href="http://down.tech.sina.com.cn/content/40975.html" target="_blank">谷歌 Chrome</a></div></div>
    <![endif]-->
    <div id="bjui-window">
    <header id="bjui-header">
        <div class="bjui-navbar-header">
            <button type="button" class="bjui-navbar-toggle btn-default" data-toggle="collapse" data-target="#bjui-navbar-collapse">
                <i class="fa fa-bars"></i>
            </button>
            <a class="bjui-navbar-logo" href="#"><img src="images/logo.png"></a>
        </div>
        <nav id="bjui-navbar-collapse">
            <ul class="bjui-navbar-right">
            </ul>
        </nav>
        <div id="bjui-hnav">
            <button type="button" class="btn-default bjui-hnav-more-left" title="导航菜单左移"><i class="fa fa-angle-double-left"></i></button>
            <div id="bjui-hnav-navbar-box">
                <ul id="bjui-hnav-navbar">
                    <li class="active"><a href="javascript:;" data-toggle="slidebar"><i class="fa fa-th-large"></i> 商铺信息管理</a>
                        <div class="items hide" data-noinit="true">
                            <ul id="indnx" class="ztree ztree_main" data-toggle="ztree" data-on-click="MainMenuClick" data-expand-all="false" data-faicon="home" data-tit="商铺信息管理">
                               <li data-id="1" data-pid="0" data-faicon="crop" data-faicon-close="crop">商铺信息</li>
                               <li data-id="12" data-pid="1" data-url="<%=basePath %>template/editTemplateId" data-tabid="editTemplateId" data-faicon="ship">编辑模板</li>
                               <li data-id="13" data-pid="1" data-url="<%=basePath %>user/queryAllUsers"data-tabid="queryAllUsers" data-faicon="server">所有用户</li>
                            </ul>
                        </div>
                    </li>
                    
                    <li class="good"><a href="javascript:;" data-toggle="slidebar"><i class="fa fa-shopping-cart"></i> 商品信息管理</a>
                        <div class="items hide" data-noinit="true">
                            <ul id="good-index" class="ztree ztree_main" data-toggle="ztree" data-on-click="MainMenuClick" data-expand-all="false" data-faicon="home" data-tit="商品信息管理">
                               <li data-id="2" data-pid="0" data-faicon="anchor" data-faicon-close="anchor">商品信息</li>
                                <li data-id="21" data-pid="2" data-url="<%=basePath %>goods/getGoodMenus" data-tabid="getGoodMenus" data-faicon="edit">商品一级菜单</li>  
                                <li data-id="22" data-pid="2" data-url="<%=basePath %>goods/getGoods" data-tabid="getGoods" data-faicon="road">商品列表</li>  
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
            <button type="button" class="btn-default bjui-hnav-more-right" title="导航菜单右移"><i class="fa fa-angle-double-right"></i></button>
        </div>
    </header>
    <div id="bjui-container">
        <div id="bjui-leftside">
            <div id="bjui-sidebar-s">
                <div class="collapse"></div>
            </div>
            <div id="bjui-sidebar">
                <div class="toggleCollapse"><h2><i class="fa fa-bars"></i> 导航栏 <i class="fa fa-bars"></i></h2><a href="javascript:;" class="lock"><i class="fa fa-lock"></i></a></div>
                <div class="panel-group panel-main" data-toggle="accordion" id="bjui-accordionmenu" data-heightbox="#bjui-sidebar" data-offsety="26">
                </div>
            </div>
        </div>
        <div id="bjui-navtab" class="tabsPage">
            <div class="tabsPageHeader">
                <div class="tabsPageHeaderContent">
                    <ul class="navtab-tab nav nav-tabs">
                        <li data-url=""><a href="javascript:;"><span><i class="fa fa-home"></i> #maintab#</span></a></li>
                    </ul>
                </div>
                <div class="tabsLeft"><i class="fa fa-angle-double-left"></i></div>
                <div class="tabsRight"><i class="fa fa-angle-double-right"></i></div>
                <div class="tabsMore"><i class="fa fa-angle-double-down"></i></div>
            </div>
            <ul class="tabsMoreList">
                <li><a href="javascript:;">#maintab#</a></li>
            </ul>
            <div class="navtab-panel tabsPageContent">
                <div class="navtabPage unitBox">
                    <div class="bjui-pageContent" style="background:#FFF;">
                        Loading...
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer id="bjui-footer">Copyright &copy; 2016　<a href="http://www.qiliandata.com/" target="_blank">企联互联网络科技版权所有</a>　
        <!--  
        <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1252983288'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/stat.php%3Fid%3D1252983288%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
        -->
    </footer>
    </div>
</body>
</html><%
}else{
		response.sendRedirect(basePath+"jsps/manager/ma_login_firest.jsp");
}%>


