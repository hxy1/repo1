<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">

<title>管理员登录</title>
<link rel="icon" href="images/favicon.ico"
	type="image/x-icon" />
<link rel="shortcut icon" href="images/favicon.ico"
	type="image/x-icon" />
<link href="css/default.css" rel="stylesheet"
	type="text/css" />
<!--必要样式-->
<link href="css/styles.css" rel="stylesheet"
	type="text/css" />
<link href="css/demo.css" rel="stylesheet" type="text/css" />
<link href="css/loaders.css" rel="stylesheet"
	type="text/css" />
<script src="js/jquery-2.1.1.min.js"></script>

</head>
<body>
	<div class='login'>

		<div class='login_title'>
			<span>管理员登录</span>
		</div>
		<div class='login_fields'>
			<div class='login_fields__user'>
				<div class='icon'>
					<img alt="" src='img/user_icon_copy.png'>
				</div>
				<input name="login" placeholder='用户名' maxlength="16"
					class="username" type='text' autocomplete="off" value="admin" />
				<div class='validation'>
					<img alt="" src='img/tick.png'>
				</div>
			</div>
			<div class='login_fields__password'>
				<div class='icon'>
					<img alt="" src='img/lock_icon_copy.png'>
				</div>
				<input name="pwd" class="passwordNumder" placeholder='密码'
					maxlength="16" type='text' autocomplete="off">
				<div class='validation'>
					<img alt="" src='img/tick.png'>
				</div>
			</div>
			<div class='login_fields__password'>
				<div class='icon'>
					<img alt="" src='img/key.png'>
				</div>
				<input name="code" placeholder='验证码' maxlength="4"
					class="ValidateNum" type='text' name="ValidateNum"
					autocomplete="off">
				<div class='validation' style="opacity: 1; right: -5px; top: -3px;">
					<canvas class="J_codeimg" id="myCanvas" onclick="Code();">
					对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
				</div>
			</div>
			<div class='login_fields__submit'>
				<input type='button' value='登录'>
			</div>

		</div>
		<div class='success'></div>
		<div class='disclaimer'>
			<p>
				欢迎登陆接入平台
				<a href="login.html">返回用户登录</a>
			</p>
			
		</div>
	</div>
	<div class='authent'>
		<div class="loader"
			style="height: 60px; width: 60px; margin-left: 28px; margin-top: 40px">
			<div class="loader-inner ball-clip-rotate-multiple">
				<div></div>
				<div></div>
				<div></div>
			</div>
		</div>
		<p>认证中...</p>
	</div>
	<div class="OverWindows"></div>
	<link href="layui/css/layui.css" rel="stylesheet"
		type="text/css" />
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script type="text/javascript"
		src='js/stopExecutionOnTimeout.js?t=1'></script>
	<script src="layui/layui.js" type="text/javascript"></script>
	<script src="js/Particleground.js" type="text/javascript"></script>
	<script src="js/Treatment.js" type="text/javascript"></script>
	<script src="js/jquery.mockjax.js" type="text/javascript"></script>
	<script src="js/controlLogin.js" type="text/javascript"></script>
</body>
</html>
