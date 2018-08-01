<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/comm/mytags.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8" />
<title>登录</title>
<meta name="description" content="User login page" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<link rel="Shortcut Icon" href="favicon.ico">
<link rel="Bookmark" href="favicon.ico" >
<title></title>
</head>
<script type="text/javascript" src="${ctx}/static/js/jquery.min.js"></script>
<link rel="stylesheet" href="${ctx }/static/css/bootstrap.min.css" />
<!-- text fonts -->
<link rel="stylesheet" href="${ctx }/static/css/ace-fonts.css" />
<link rel="stylesheet" href="${ctx }/static/css/ace.css" />
<link rel="stylesheet" href="${ctx }/static/css/main.css" />
<body>
	<%-- <form action='${ctx}/login.action' method='POST'>
		<table>
			<tr>
				<td>用户名:</td>
				<td><input type='text' name='userName'></td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><input type='password' name='password' /></td>
			</tr>
			<tr>
				<td>验证码:</td>
				<td><input  name='randomcode'  placeholder="请输入验证码" /></td>
				<td><img id="checkNumImage" src="image.jsp" onclick="changeCheckNum()"></td>
			</tr>
			<tr>
				<td>${LOGIN_ERROR_MESSAGE }</td>
				<td colspan='2'><input type="submit" value="登陆" /></td>
			</tr>
		</table>
	</form> --%>
	<div id="particles-js"></div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-10 col-sm-offset-1">
				<div class="login-container">
					<div class="title" id="login_title">
						<img src="${ctx }/static/images/login-logo.png">
					</div>
					<div class="space"></div>
					<form id="loginForm" action="login.action" method='post'>
						<fieldset>
							<label class="block clearfix">
								<span class="block input-icon input-icon-right">
									<input type="text" id="loginName" name="userName" class="form-control" placeholder="Username" />
									<i class="ace-icon fa fa-user"></i>
								</span>
							</label>
							<div class="space-6"></div>
							<label class="block clearfix">
								<span class="block input-icon input-icon-right">
									<input type="password" id="pwd" name="password" class="form-control Pasd"  placeholder="Password" />
									<i class="ace-icon fa fa-lock"></i>
								</span>
							</label>
							<div class="space-6"></div>
							<div class="clearfix">
                                <div id="exspan" class="pwd" style="top:355px;left:560px;display: none;color: #FFFA1D;font-size: 14px">License还有<b
                                        id="exdays" style="color:red"></b>天过期<a href="javascript:upload()" class="btn choose-sup70" id="">导入license</a></div>
								<label class="inline message">
									<h5 class="red2 lighter" id="testHtml">${LOGIN_ERROR_MESSAGE }</h5>
								</label>
								<button id="username"  onclick="login()" type="button" class="width-100 btn btn-sm btn-info">
									<i class="ace-icon fa fa-key"></i>
									<%--<button onclick="mm()">测试</button>--%>
									<script type="text/javascript">
										function login() {
											$("#loginForm").submit();
										}
									</script>
									<span class="bigger-110">登录</span>
								</button>
							</div>
							<div class="space"></div>
						</fieldset>
					</form>
				</div>
				<p class="login-txt light-grey center">Copyright © 2005-<span id="currentYear"></span>  OneWiserv (Beijing) Technology Co., Ltd.All rights reserved</p>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		

	</script>
</body>
<script type="text/javascript">
	function changeCheckNum(){
	    var checkNumImage_=document.getElementById("checkNumImage");
	    checkNumImage_.src="/szjc/image.jsp?timeStamp="+new Date().getTime();
	}
</script>
</html>