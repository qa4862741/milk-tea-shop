<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en"
	class="app js no-touch no-android chrome no-firefox no-iemobile no-ie no-ie10 no-ie11 no-ios no-ios7 ipad">
<head>
<%@ include file="/WEB-INF/page/common/common.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Google Chrome Frame也可以让IE用上Chrome的引擎: -->
<meta http-equiv="X-UA-Compatible" content="IE=edge;chrome=1">
<link href="/favicon.ico" type="image/x-icon" rel=icon>
<link href="/favicon.ico" type="image/x-icon" rel="shortcut icon">
<meta name="renderer" content="webkit">
<title>登录</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="<c:url value="/resources/bs3/css/bootstrap.min.css"/> "
	rel="stylesheet">
<link rel="stylesheet" href="<c:url value="/resources/login/min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/login/login.css"/>">
<link href="<c:url value="/resources/login/css.css"/>" rel="stylesheet"
	type="text/css">
</head>
<body
	style="background-image: url('<c:url value="/resources/login/9.jpg"/>');margin-top:0px;background-repeat: round;"">
	<div id="loginbox" style="padding-top: 10%;">
		<form id="loginform" name="loginform" class="form-vertical"
			style="background-color: rgba(0, 0, 0, 0.5) !important; background: #000; filter: alpha(opacity = 50); *background: #000; *filter: alpha(opacity = 50); /*黑色透明背景结束*/ color: #FFF; bottom: 0px; right: 0px; border: 1px solid #000;"
			action="${basePath}/login/doLogin"
			method="post">
			<div class="control-group normal_text">
				<table style="width: 100%">
					<tr>
						<td align="left"><img
							src="<c:url value="/resources/login/logo_left.png"/>"
							alt="Logo"></td>
						<td align="center" style="font-weight: bold; color: gray;">叶子C奶茶管理系统</td>
						<td align="right"><img
							src="<c:url value="/resources/login/logo_left.png"/>"
							alt="Logo"></td>
					</tr>
				</table>


			</div>
			<div class="control-group">
				<div class="controls">
					<div class="main_input_box">
						<span class="add-on bg_ly" style="background: #28b779"><img
							src="<c:url value="/resources/login/account_1.png"/>"
							alt="请输入账号.."></span><input type="text" placeholder="userName"
							name="userName" value="admin"
							style="height: 32px; margin-bottom: 0px;" />
					</div>
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<div class="main_input_box">
						<span class="add-on bg_ly"><img
							src="<c:url value="/resources/login/lock_1.png"/>"
							alt="请输入密码.."></span><input type="password" placeholder="password"
							name="password" value="123456"
							style="height: 32px; margin-bottom: 0px;" />
					</div>
				</div>
			</div>
			<div class="form-actions">
				<span class="pull-left" style="width: 33%"><a href="#"
					class="flip-link btn btn-info" id="to-recover">忘记密码？</a></span>  <span
					class="pull-right">
					<input type="submit" class="btn btn-success" value="提交登录"/></span>
			</div>
		</form>
	</div>
</body>
</html>