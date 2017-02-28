<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>EPC电子备件目录</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="description">
<meta content="" name="author">

<link href="../../../static/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="../../../static/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.css" rel="stylesheet" type="text/css">
	<link href="../../../static/plugins/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css">
	<link href="../../../static/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="../../../static/plugins/mCustomScrollbar/jquery.mCustomScrollbar.css" rel="stylesheet" type="text/css">
	<link href="../../../static/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css">
	<link href="../../../static/core/css/style-metro.css" rel="stylesheet" type="text/css">
	<link href="../../../static/core/css/zui-layout-frame.css" rel="stylesheet" type="text/css">
	<link href="../../../static/core/css/style.css" rel="stylesheet" type="text/css">
	<link href="../../../static/core/css/zui-icons.css" rel="stylesheet" type="text/css">
	<link href="../../../static/core/css/style-responsive.css" rel="stylesheet" type="text/css">
	<link href="../../../static/plugins/data-tables/DT_bootstrap.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" media="screen" href="../../../static/plugins/jqGrid/css/ui.jqgrid.css">
	<link rel="stylesheet" type="text/css" href="../../../static/plugins/select2/select2_metro.css">
	
	<link rel="stylesheet" href="../../../static/plugins/ztree/css/zTreeStyle.css" type="text/css">
	<link rel="stylesheet" href="../../../static/plugins/glyphicons/css/glyphicons.css" type="text/css">
	<link rel="stylesheet" href="../../../static/plugins/glyphicons_halflings/css/halflings.css" type="text/css">
	<link rel="stylesheet" type="text/css" href="../../../static/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="../../../static/easyui/themes/icon.css">
	


	<link rel="shortcut icon" href="favicon.ico">
	
	<link href="../../../static/project/GEPC/css/website.css" rel="stylesheet" type="text/css">
	<link href="../../../static/core/css/index.css" rel="stylesheet" type="text/css">
	<style type="text/css">
		body {
			padding: 20px !important;
			background-color: #ededef !important;
		}

		.list {
			overflow: hidden;
			height: 480px;
			overflow-y: scroll;
		}
	</style>

	<script type="text/javascript" src="../../../static/plugins/ckeditor/ckeditor.js"></script><style>.cke{visibility:hidden;}</style>
	<script src="../../../static/plugins/jquery/jquery.js" type="text/javascript"></script>
	<script type="text/javascript" src="../../../static/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="../../../static/easyui/locale/easyui-lang-zh_CN.js"></script>
	<script src="../../../static/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
	<script src="../../../static/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="../../../static/plugins/jquery-layout/jquery.layout-latest.js" type="text/javascript"></script>
	<script src="../../../static/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="../../../static/plugins/jquery-file-upload/js/jquery.fileupload.js"></script>
	<script src="../../../static/plugins/jquery-file-upload/js/jquery.fileupload-ui.js"></script>
	<script src="../../../static/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript"></script><style type="text/css">.dropdown-submenu:hover>.dropdown-menu{display:none}</style>
	<script src="../../../static/plugins/jquery-ui/jquery.ui.datepicker-zh-CN.min.js" type="text/javascript"></script>
	<!--[if lt IE 9]../>
    <script src="/static/plugins/excanvas.min.js"></script>
    <script src="/static/plugins/respond.min.js"></script>
    <![endif]-->
	<script src="../../../static/plugins/mousewheel/jquery.mousewheel.js" type="text/javascript"></script>
	<script src="../../../static/plugins/mCustomScrollbar/jquery.mCustomScrollbar.js" type="text/javascript"></script>
	<script src="../../../static/plugins/jquery.blockui.min.js" type="text/javascript"></script>
	<script src="../../../static/plugins/jquery.cookie.min.js" type="text/javascript"></script>
	
	<script src="../../../static/plugins/jquery-layout/jquery.layout-latest.js" type="text/javascript"></script>
	<script src="../../../static/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
	<script src="../../../static/plugins/jquery-validation/dist/additional-methods.min.js"></script>
	<script src="../../../static/plugins/jquery-validation/jquery.validate.message_zh.js"></script>
	<script src="../../../static/plugins/jqGrid/js/jquery.jqGrid.min.js" type="text/javascript"></script>
	<script src="../../../static/core/js/zui-widget-extend.js" type="text/javascript"></script>
	<script src="../../../static/core/js/app.js" type="text/javascript"></script>
	<script src="../../../static/core/js/zui-layout-frame.js" type="text/javascript"></script>
	<script type="text/javascript" src="../../../static/plugins/select2/select2.min.js"></script>
	<script type="text/javascript" src="../../../static/plugins/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="../../../static/plugins/data-tables/DT_bootstrap.js"></script>
	<script type="text/javascript" src="../../../static/plugins/ztree/js/jquery.ztree.core-3.5.js"></script>
	<script type="text/javascript" src="../../../static/plugins/ztree/js/jquery.ztree.excheck-3.5.js"></script>
	<script src="../../../static/core/js/form-samples.js"></script>
	<script src="../../../static/core/js/ui-jqueryui.js"></script>
	<script>
	jQuery(document).ready(function() {
		// initiate layout and plugins
		App.init();
		FormSamples.init();
		UIJQueryUI.init();

		$.get("/instanceModel/operationTime", {}, function(data) {
		}, "json");
	});
	function killCurrentTab() {
		var f = window.parent;
		if (f !== window) {
			f = f.tabpanel;
			if (f && f.killActiveTab) {
				f.killActiveTab();
			}
		}
	}
</script>

<script type="text/javascript">
	$(function() {
		$("#queryForm").submit(function() {
			var t = $("#vin");
			var vin = t.val();
			if (vin == t.attr('placeholder'))
				vin = ""; //Fuck IE8!
			$.ajax({
				type : "POST",
				url : '/epcQiantai/frontModels/cars',
				data : JSON.stringify({
					vin : vin
				}),
				contentType : "application/json; charset=utf-8",
				dataType : "json",
				cache : false,
				processData : false,
				beforeSend : function(xhr) {
					xhr.setRequestHeader("Accept", "application/json");
				},
				success : function(data) {
					cars(data);
				}
			});
			return false;
		}).submit();

		function cars(brands) {
			$("#cars")
					.empty()
					.append(
							$
									.map(
											brands,
											function(b) {
												return $("<li>")
														.append(
																$(
																		"<ul>",
																		{
																			"class" : "carlist"
																		})
																		.append(
																				$
																						.map(
																								b.cars
																										.sort(function(
																												a,
																												b) {
																											a = a.name;
																											b = b.name;
																											if (a < b)
																												return -1;
																											else if (a > b)
																												return 1;
																											return 0;
																										}),
																								function(
																										c) {
																									return $(
																											"<li>")
																											.append(
																													$(
																															"<a>",
																															{
																																"href" : "/public/epc/directoryLook/"
																																		+ c.id
																																		+ (c["instance_code"] ? ("?instance_code=" + c["instance_code"])
																																				: ""),
																																"target" : "_blank"
																															})
																															.append(
																																	$(
																																			"<img>",
																																			{
																																				"width" : 200,
																																				"height" : 150,
																																				"src" : "/epcQiantai/frontModels/carsImage/"
																																						+ c.id
																																			}))
																															.append(
																																	$(
																																			"<h5>")
																																			.text(
																																					c.lang == "zh" ? c.name
																																							: c.en_name)));
																								})))
											}));
		}

	});
</script>

</head>
<style type="text/css" id="23184109316"></style>


<body>

	<div class="row-fluid">
		<div class="span9">
			<div class="main-block">
				<div class="row-fluid search-forms search-default">
					<form class="span6 form-search" id="queryForm">
						<div class="chat-form">
							<div class="input-cont">
								<input type="text" id="vin" placeholder="请输入VIN码查询"
									style="background-color: #FFF; height: 25px;" class="m-wrap">
							</div>
							<button type="submit" class="btn green mini"
								style="height: 34px;">查询</button>
						</div>
					</form>
				</div>
				<div class="row-fluid" >
			
					<div class="span12">
						<!--<h4 class="text-center">请输入VIN码或选择相应的车系</h4>-->
						<ul id="cars" class="carselectlist">
						
							<li><ul class="carlist">
									<li><a
										href="/public/epc/directoryLook/b02294dc-e907-44b1-92f8-97b0d64ee0bf"
										target="_blank"><img 
											src="../carsImage/b02294dc-e907-44b1-92f8-97b0d64ee0bf.jpg"
											alt="图片显示"
											style="width: 200px; height: 150px;">
										<h5>A30</h5></a></li>
									<li><a
										href="/public/epc/directoryLook/eab1936e-bed9-4287-be42-b092dae12ddb"
										target="_blank"><img
											src="../carsImage/eab1936e-bed9-4287-be42-b092dae12ddb.jpg"
											style="width: 200px; height: 150px;">
										<h5>A60</h5></a></li>
									<li><a
										href="/public/epc/directoryLook/a1711d26-cbe6-4470-9929-b95f113b8b16"
										target="_blank"><img
											src="../carsImage/a1711d26-cbe6-4470-9929-b95f113b8b16.jpg"
											style="width: 200px; height: 150px;">
										<h5>A60 EV电动车</h5></a></li>
									<li><a
										href="/public/epc/directoryLook/ca63fe52-4f93-44ff-b100-95a2f33d771d"
										target="_blank"><img
											src="../carsImage/ca63fe52-4f93-44ff-b100-95a2f33d771d.jpg"
											style="width: 200px; height: 150px;">
										<h5>AX3</h5></a></li>
									<li><a
										href="/public/epc/directoryLook/c6b6d3e2-4b62-44ee-93a3-cefa0a7eb5c4"
										target="_blank"><img
											src="../carsImage/c6b6d3e2-4b62-44ee-93a3-cefa0a7eb5c4.jpg"
											style="width: 200px; height: 150px;">
										<h5>AX5</h5></a></li>
									<li><a
										href="/public/epc/directoryLook/0a2133b8-38dd-4208-9133-5a74bf3c45d9"
										target="_blank"><img
											src="../carsImage/0a2133b8-38dd-4208-9133-5a74bf3c45d9.jpg"
											style="width: 200px; height: 150px;">
										<h5>AX7</h5></a></li>
									<li><a
										href="/public/epc/directoryLook/03580d7d-1120-45f5-b698-699d8d3c9dea"
										target="_blank"><img
											src="../carsImage/03580d7d-1120-45f5-b698-699d8d3c9dea.jpg"
											style="width: 200px; height: 150px;">
										<h5>E30;E30L</h5></a></li>
									<li><a
										href="/public/epc/directoryLook/698e9084-6fb0-4543-a1d4-9f2f69364f73"
										target="_blank"><img
											src="../carsImage/698e9084-6fb0-4543-a1d4-9f2f69364f73.jpg"
											style="width: 200px; height: 150px;">
										<h5>H30</h5></a></li>
									<li><a
										href="/public/epc/directoryLook/98401b71-31e1-4cd3-b057-2acbfa78bfeb"
										target="_blank"><img
											src="../carsImage/98401b71-31e1-4cd3-b057-2acbfa78bfeb.jpg"
											style="width: 200px; height: 150px;">
										<h5>L60</h5></a></li>
									<li><a
										href="/public/epc/directoryLook/828dea36-f633-4b63-b4b2-34fa0dbe977d"
										target="_blank"><img
											src="../carsImage/828dea36-f633-4b63-b4b2-34fa0dbe977d.jpg"
											style="width: 200px; height: 150px;">
										<h5>S30</h5></a></li>
								</ul></li>
						</ul>
					</div>




				</div>
			</div>
		</div>
		<div class="span3">
			<div class="main-block">
				<h5 class="list-title">
					<span><img src="../../../static/project/GEPC/img/01.png"
						alt="">索引</span>
				</h5>
				<ul class="news-title list">

					<li><a
						href="/news/infodata/create/?id=f844dd9c-1baa-44f8-9827-26c9f2833ade"
						target="_blank">AX5车型备件目录索引</a></li>

					<li><a
						href="/news/infodata/create/?id=18efabb1-8566-4ff9-965f-abaa2a04a732"
						target="_blank">A60 EV车型备件目录索引</a></li>

					<li><a
						href="/news/infodata/create/?id=108de84f-1b8c-4e98-9e1f-4fbb22e70982"
						target="_blank">AX3车型备件目录索引</a></li>

					<li><a
						href="/news/infodata/create/?id=5fda96bd-51d7-4b6c-bf6c-ef6e1f38b8e0"
						target="_blank">L60车型备件目录索引</a></li>

					<li><a
						href="/news/infodata/create/?id=a5976ff0-50c4-495a-8520-5f18277cf140"
						target="_blank">E30车型备件目录索引</a></li>

					<li><a
						href="/news/infodata/create/?id=734b684c-679b-4964-a79e-74e80c7d0ede"
						target="_blank">AX7车型备件目录索引</a></li>

					<li><a
						href="/news/infodata/create/?id=3687dfab-baf5-4747-99ea-fd227285d2e1"
						target="_blank">A30车型备件目录索引</a></li>

					<li><a
						href="/news/infodata/create/?id=609bf593-18b0-4d17-b444-9590eb47e9da"
						target="_blank">A60车型备件目录索引</a></li>

					<li><a
						href="/news/infodata/create/?id=71540919-f475-4d5a-9037-bb1ffa91ae1f"
						target="_blank">H30车型备件目录索引</a></li>

					<li><a
						href="/news/infodata/create/?id=7b9376f6-c01b-4dc0-8775-4a8f3d68a650"
						target="_blank">S30车型备件目录索引</a></li>

				</ul>
			</div>

		</div>
	</div>




</body>
</html>