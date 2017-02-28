<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

 <title>登录</title>
    <link href="./static/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="./static/plugins/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
    <link href="./static/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="./static/core/css/style-metro.css" rel="stylesheet" type="text/css"/>
	<link href="./static/core/css/style.css" rel="stylesheet" type="text/css"/>
	<link href="./static/core/css/style-responsive.css" rel="stylesheet" type="text/css"/>
	<link href="./static/themes/light/themestyle.css" rel="stylesheet" type="text/css" id="style_color"/>
	<link href="./static/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
	<link rel="./shortcut icon" href="../static/core/img/favicon.ico" />
    <link href="./static/core/css/index.css" rel="stylesheet" type="text/css" />
    <script src="./static/plugins/jquery/jquery.js" type="text/javascript"></script>
    <script>
        $(function() {
            $(".jcaptcha-btn").click(function() {
                $(".jcaptcha-img").attr("src", '/jcaptcha.jpg?'+new Date().getTime());
            });
        });
    </script>



</head>
<body class="bproBg">

<div class="brand_div" >
	<div class='login-img'>
		<img src="./static/project/GEPC/img/logo-brand.png" style="height: 40px;width: 135px"/>
	</div>
</div>

<div class="login_div" >
	<div class='login-img'>
		<img src="./static/project/GEPC/img/login-EC7.jpg"/>
	</div>
	<div style=" padding:10px;">
		<div>
		<font size="2" color="red"></font>
		</div>
		<form action="/login" method="post" style="margin-top: 15px;">
			用户名：<input type="text" name="username" style="width:100px; margin-right:10px;"/> 
			密码：<input type="password" name="password" style="width:100px;margin-right:10px;"/> 
			
			    验证码：
				<input type="text" name="jcaptchaCode" style="width:85px;margin-right:10px;"/>
		        <img class="jcaptcha-img" src="./static/project/GEPC/img/jcaptcha.jpg" title="点击更换验证码 ">
		        <input type="button" class="btn mini yellow jcaptcha-btn" value="换一张" style="margin-right:10px;">
			
			<input type="submit" class="btn blue mini" value="登录">
		</form>
	</div>
	
	<div align="center" style="padding: 10px 50px; ">
		    <font size="2" color="red">系统兼容chrome firefox 360浏览器，使用之前请点击下载
		        <a href="http://dfpv-epc.com/static/project/GEPC/chrome.exe" class="download-link"><img src="./static/project/GEPC/img/google.png" title="chrome" style="width: 25px;height: 25px;"/></a> 
		        <a href="http://dfpv-epc.com/static/project/GEPC/Firefox.exe" class="download-link"><img src="./static/project/GEPC/img/firefox.png" title="firefox" style="width: 25px;height: 25px;"/></a>
			    <a href="http://dfpv-epc.com/static/project/GEPC/360se.exe" class="download-link"><img src="./static/project/GEPC/img/360se.png" title="360浏览器" style="width: 25px;height: 25px;"/></a> 
		    </font>
		</div>
	
</div>


</body>
</html>