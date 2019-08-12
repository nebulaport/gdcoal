<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<title>Title</title>
	<%@include file="/include.jsp"%>
<style>
  body{background-image:url('<%=basePath%>image/loginBg.jpg');padding:0px;margin:0px;}
</style>

<script type="text/javascript">

</script>
</head>
<body>
<input type="hidden" value="<%=basePath %>" id="path">
<div class="top-content"  >
<div class="inner-bg">
<div class="container">
<div class="row">
<div class="col-sm-8 col-sm-offset-2 text">
<h1><strong>国电煤炭管理平台-电厂侧</strong>Login</h1>
<div class="description">
<p>
 
</p>
</div>
</div>
</div>
<div class="row">
<div class="col-sm-6 col-sm-offset-3 form-box">
<div class="form-top">
	<div class="form-top-left">
	
	<p> 
	  <image src="<%=basePath%>image/logo3.png"></image>
	</p>

	</div>
</div>
<!-- 登录表单 -->
<div class="form-bottom">
<form id="loginForm" role="form" action="<%=basePath %>user/loginControl?action=login" method="post" class="login-form">
	<div class="form-group ">
	    <lebal style="color:red;" >用户名错误！</lebal>
		<label class="sr-only" for="form-username">用户名</label>
		<input type="text" name="username"   placeholder="Username..." class="form-username form-control" id="form-username"  >
	</div>
	<div class="form-group  ">
		<label class="sr-only" for="form-password">密码</label>
		<input type="password" name="pwd"  placeholder="Password..." class="form-password form-control" id="form-password">
	</div>
	<div class="form-group">
		<label class="sr-only" style="float:left;"for="form-password">验证码</label>
		<input type="text"  name="validateCode" style="width:220px;float:left;" placeholder="请输入验证码...." class="form-password form-control" id="form-password">
	    <image onclick="changeCode(this)"   src="<%=basePath %>user/validateCodeControl?action=createValidateCode" style=" margin-left:100px"></image>
	</div>
	<button type="submit" class="btn btn-info">登录</button>
	<button type="submit" class="btn btn-info">取消</button>
</form>
</div>
</div>
</div>
<!-- 友情链接 -->
<div class="row">
	<div class="col-sm-6 col-sm-offset-3 social-login">
		<h3> </h3>
	<div class="social-login-buttons">
		<a class="btn btn-link-1 btn-link-1-facebook" href="#">
			<i class="fa fa-facebook"></i>  国电阳光平台
		</a>
		<a class="btn btn-link-1 btn-link-1-twitter" href="#">
			<i class="fa fa-twitter">中国煤炭总公司</i> 
		</a>
		<a class="btn btn-link-1 btn-link-1-google-plus" href="#">
			<i class="fa fa-google-plus"></i> 神华煤炭交易网
		</a>
	</div>
	</div>
</div>
</div>
</div>
</div>

 
</body>

</html>