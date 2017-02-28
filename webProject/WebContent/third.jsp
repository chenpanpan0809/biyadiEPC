<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>thirdPage</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />

<link href="./static/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="./static/core/css/zui-icons.css" rel="stylesheet"
	type="text/css">
<link href="./static/plugins/jquery-ui/jquery-ui.css" rel="stylesheet"
	type="text/css">
<link href="./static/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="./static/plugins/mCustomScrollbar/jquery.mCustomScrollbar.css"
	rel="stylesheet" type="text/css" />
<link href="./static/core/css/style-metro.css" rel="stylesheet"
	type="text/css" />
<link href="./static/core/css/zui-layout-frame.css" rel="stylesheet"
	type="text/css">
<link href="./static/core/css/zui-TabPanel.css" rel="stylesheet"
	type="text/css">
<link href="./static/core/css/style.css" rel="stylesheet"
	type="text/css" />
<link href="./static/themes/gov-blue/themestyle.css" rel="stylesheet"
	type="text/css" id="style_color" />
<link href="./static/plugins/uniform/css/uniform.default.css"
	rel="stylesheet" type="text/css" />
<link href="./static/project/GEPC/css/website.css" rel="stylesheet"
	type="text/css">
<link rel="shortcut icon" href="favicon.ico" />

<style type="text/css">
html, body {
	width: 100%;
	height: 100%;
	overflow: hidden;
}

iframe {
	width: 100%;
	height: 100%;
	padding: 0;
	margin: 0;
}

img, body, html {
	border: 0;
}

html, body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre,
	form, fieldset, input, p, blockquote, th, td {
	margin: 0;
	padding: 0;
}

* {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 12px;
}
</style>


<script src="./static/plugins/jquery/jquery.js" type="text/javascript">
</script>
<script src="./static/plugins/jquery-migrate-1.2.1.min.js"
	type="text/javascript">
</script>
<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="./static/plugins/jquery-ui/jquery-ui-1.10.4.custom.min.js"
	type="text/javascript">
</script>
<script src="./static/plugins/jquery-layout/jquery.layout-latest.js"
	type="text/javascript">
</script>
<script src="./static/plugins/bootstrap/js/bootstrap.min.js"
	type="text/javascript">
</script>
<script
	src="./static/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js"
	type="text/javascript">
</script>
<!--[if lt IE 9]../>
   <script src="/static/plugins/excanvas.min.js"></script>
   <script src="/static/plugins/respond.min.js"></script>
   <![endif]-->
<script src="./static/plugins/mousewheel/jquery.mousewheel.js"
	type="text/javascript">
</script>
<script
	src="./static/plugins/mCustomScrollbar/jquery.mCustomScrollbar.js"
	type="text/javascript">
</script>
<script src="./static/plugins/jquery.blockui.min.js"
	type="text/javascript">
</script>
<script src="./static/plugins/jquery.cookie.min.js"
	type="text/javascript">
</script>
<script src="./static/plugins/uniform/jquery.uniform.min.js"
	type="text/javascript">
</script>
<script src="./static/core/js/zui-Fader.js" type="text/javascript">
</script>
<script src="./static/core/js/zui-TabPanel.js" type="text/javascript">
</script>
<script src="./static/core/js/Math.uuid.js" type="text/javascript">
</script>
<script src="./static/core/js/app.js" type="text/javascript">
</script>
<script src="./static/core/js/zui-layout-frame.js"
	type="text/javascript">
</script>
<script>

var tabpanel;
$(document).ready(function() {
    $('body').layout({
        applyDefaultStyles: false,
        //是否使用默认样式
        north__closable: false,
        //可以被关闭
        north__resizable: false,
        //可以改变大小
        north__size: 80,
        //pane的大小
        north__initClosed: false,
        //初始化为状态
        north__spacing_open: 0,
        //打开时的边距0像素
        north__spacing_close: 0,
        //关闭时的边距0像素
        center__spacing_open: 0,
        //打开时的边距0像素
        center__spacing_close: 0,
        //关闭时的边距0像素
        
        west__closable: true,
        //可以被关闭
        west__resizable: false,
        //可以改变大小
        west__spacing_open: 0,
        //打开时的边距0像素
        west__spacing_close: 0,
        //关闭时的边距0像素
        west__size: 175
        //
        //east__size:	175,
        
        //south__initClosed:	true
    });
    //console.log("layoutPanels"+$("#layoutPanels.ui-layout-center").width());
}
);
function sidebarClick(id, path) {
    $('.page-sidebar-menu li').removeClass('active');
    $('#' + id).addClass('active');
    $("#frame_main").attr("src", path);
}
</script>


</head>
<body onbeforeunload="unload()">
	<iframe id="frame_main" name="frame_main" class="ui-layout-center"
		src="./epcQiantai/frontModels/carsshowList/carsList.jsp" width="100%" height="auto">
		
		
		</iframe>
	<div class="ui-layout-west no-scrollbar add-padding grey">
		<div class="page-sidebar nav-collapse collapse">
			<ul class="page-sidebar-menu">
				<li id="cars"><a style="margin-top: 15px;" href="javascript:void(0);"
					onclick="sidebarClick('cars','/epcQiantai/frontModels/carsshowList');"
					target="frame_main"> <i class="fa fa-briefcase"></i> <span
						class="title">备件目录</span> <span class="selected"></span> <span
						class="arrow"></span>
				</a></li>

				<li id="list"><a href="javascript:void(0);"
					onclick="sidebarClick('list','/epcQiantai/order/list');"> <i
						class="fa fa-cogs"></i> <span class="title">清单</span> <span
						class="arrow "></span>
				</a></li>
				<li id="modelcar"><a href="javascript:void(0);"
					onclick="sidebarClick('modelcar','/car/modelquer/createcar');"
					target="frame_main"> <i class="fa fa-bookmark-o"></i> <span
						class="title">备件所属车系</span> <span class="arrow "></span>
				</a></li>
				<li id="modelcar"><a href="javascript:void(0);"
					onclick="sidebarClick('query','/epc/query/index');"> <i
						class="fa fa-search"></i> <span class="title">备件查询</span> <span
						class="selected"></span> <span class="arrow"></span>
				</a></li>
				<li id="change"><a href="javascript:void(0);"
					onclick="sidebarClick('change','/sparep/change/query_qt');"> <i
						class="fa fa-table"></i> <span class="title">备件替换信息查询</span> <span
						class="selected"></span> <span class="arrow"></span>
				</a></li>

				<li id="problemsfeedback"><a href="javascript:void(0);"
					onclick="sidebarClick('problems','/mails/problemsFeedback/customlist');">
						<i class="fa fa-table"></i> <span class="title">问题反馈</span> <span
						class="selected"></span> <span class="arrow"></span>
				</a></li>
				<li id="glsp"><a href="#"
					onclick="javascript:window.open('http://'+window.location.hostname+':8848/glsp/epclogin.did?method=login','_blank')">
						<i class="fa fa-table"></i> <span class="title">精品目录</span> <span
						class="selected"></span> <span class="arrow"></span>
				</a></li>
			</ul>
		</div>
	</div>
	<script>
	function unload(){
		$.get("/epcLogout", {} ,function(data){}, "json");
	}
</script>
	<div class="ui-layout-north ui-widget-content add-padding">





		<script type="text/javascript"
			src="./static/plugins/data-tables/jquery.dataTables.js"></script>
		<script type="text/javascript"
			src="./static/plugins/data-tables/DT_bootstrap.js"></script>
		<!-- <link
			href="./static/plugins/mCustomScrollbar/jquery.mCustomScrollbar.css"
			rel="stylesheet" type="text/css" />
		<link href="./static/project/GEPC/css/website.css" rel="stylesheet"
			type="text/css"> -->
		<script src="./static/plugins/mousewheel/jquery.mousewheel.js"
			type="text/javascript"></script>
		<script
			src="./static/plugins/mCustomScrollbar/jquery.mCustomScrollbar.js"
			type="text/javascript"></script>
		<script
			src="./static/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
		<script
			src="./static/plugins/jquery-validation/dist/additional-methods.min.js"></script>
		<script
			src="./static/plugins/jquery-validation/jquery.validate.message_zh.js"></script>
	

			<div>
	
	<div class="header navbar navbar-inverse">
		<div class="navbar-inner">
			<div class="container-fluid" style="background-image: url('./static/project/GEPC/img/top-bg.png');">
			
				<a class="brand" href="#">
					<img src="./static/project/GEPC/img/logo0.png" alt="logo" style="width: 65px;height: 65px;margin-top: -10px"> 东风风神电子备件目录（EPC）
				</a>
				<ul class="nav pull-right">
					<li style="display: none">
						
								<a href="?car_lang=en" class="lang" style="color:#FFF">
									海外版
								</a>
					</li>
					<li>
								<a href="/index?locale=en_US" class="login-btn"><span class="username" style="color:#FFFFFF">Switching English</span></a>
							
							
						
					</li>
					<li class="dropdown user">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
							<img alt="" src="./static/project/GEPC/img/avatar1_small.jpg">
							<span style="color:#FFFFFF">欢迎您：徐滢松 </span>
							<i class="arrow"></i>
						</a>
						<ul class="dropdown-menu">
							<li><a href="javascript:void(0);" id="updatePassword" class="btn-link"><i class="fa fa-user"></i>密码修改</a>
							</li>
							<li><a href="javascript:void(0)" onclick="opFwWB();" id="filefolder" class="btn-link"><i class="fa fa-key"></i>文件夹</a></li>
							<li><a href="/logout" id="loginOut" class="btn-link"><i class="fa fa-key"></i>登出</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
	
</div>
			<!-- <div id="folderWindow" class="easyui-dialog" title="文件夹">
				<div title="查询框" class="row-fluid">
					<div class="span12">
						<div class="row-fluid">
							<div class="span12">
								<div class="portlet box light-grey" style="margin-bottom: 5px;">
									<div class="portlet-title">
										<div class="caption">查询</div>
									</div>
									<div id="sForm" class="portlet-body">
										<table style="width: 80%;">
											<tbody>
												<tr class="sh">
													<th>开始时间：</th>
													<td><input id="stime" class="date m-wrap"
														style="height: 25px;" /></td>
													<th>结束时间：</th>
													<td><input id="etime" class="date m-wrap"
														style="height: 25px;" /></td>
												</tr>
												<tr>
													<td colspan="5"
														style="text-align: right; padding-right: 50px; padding-top: 3px;">
														<button type="submit" id="btnSelect" onclick="queryWB();"
															class="btn mini green">查询</button>
														<button type="button" onclick="cleanWB();"
															class="btn mini green">重置</button>
													</td>
												</tr>
											</tbody>
											<script type="text/javascript">
											function queryWB(){
												folderWB.fnFilter();
											}
											function cleanWB(){
												$("#stime").val("");
												$("#etime").val("");
											}
										</script>
										</table>
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div> -->
			</div>	
</body>
</html>