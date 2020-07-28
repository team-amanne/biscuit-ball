<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BiscuitBail > 로그인</title>
<style type="text/css">


.login_display
{

	width: 500px;
	height: 500px;
	margin-top: auto;
	margin-left: auto;
	
}

.login_button
{
	margin-bottom: 10px;
	margin-left: auto;
	margin-top: 15px;
	width: 70%;
}

.login_email
{
	margin-left: auto;
	width: 70%;
	margin-top: 50px;
}


.login_pw
{
	margin-left: auto;
	width: 70%;
	margin-top: 15px;
	
}


.sign_up
{
	font-size: 13pt;
	font-weight: bold;
}

.reset_password
{	
	font-size: 13pt;
	margin-left: 25px;
	font-weight: bold;
}


.kakaosign
{
	width: 357px !important;
	border: 0px;
	background-color: white;
	padding: 0px;
}

.email, .password
{
	width: 306px !important;
}

.sign
{
	width: 357px !important;
	height: 55px !important;
	margin-bottom: 15px;
}

.frame
{
	border: 0px;
	text-align: center;
}

</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/board.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<!-- 스크립트단 -->
<script type="text/javascript">
	$(document).ready(function()
	{
		$("#login").click(function()
		{
			if ( $("#email").val() != null && $("#password").val() !=null)
			{
				$("#loginForm").submit();
			}
			
		});
	});

</script>

</head>
<body>

<c:import url="../base/Header.jsp"></c:import>

<div class="container-fluid">
      <div class="section-title container">
         <h5></h5>
         <hr />
      </div>
	<div class="row">
		<div class="col-md-3">
		</div>
		<div class="col-md-6 login_display">
		<form action="logindo" method="post" id="loginForm">
			<div class="input-group input-group-lg login_email">
		 		<span class="input-group-addon" id="sizing-addon1">
		 			<span class="glyphicon glyphicon-user"></span>
		 		</span>
		  		<input type="text" id="email" class="form-control email" name="email" placeholder="Email" aria-describedby="sizing-addon1">
			</div>
			
			<div class="input-group input-group-lg login_pw">
		 		<span class="input-group-addon" id="sizing-addon1">
		 			<span class="glyphicon glyphicon-wrench"></span>
		 		</span>
		  		<input type="password" id="password" class="form-control password" name="password" placeholder="Password" aria-describedby="sizing-addon1">
			</div>
		
			<div class="login_button">
				<button type="button" class="btn btn-default btn-lg sign" id="login">로그인</button>
				<button type="button" class="kakaosign" id="kakaosign"><img src="<%=cp %>/views/img/kakao.png" style="max-width: 100%; height: auto;"></button>
			</div>
			
			<div class="frame">
				<span class="glyphicon glyphicon-plus sign_up" id="sign_up"><a href="<%=cp %>/signup">회원가입</a></span>
				<span class="glyphicon glyphicon-exclamation-sign reset_password" id="reset_password"><a href="">비밀번호재설정</a></span>
			</div>
		</form>
		</div>
		<div class="col-md-3">
		</div>
	</div>
</div>

<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>