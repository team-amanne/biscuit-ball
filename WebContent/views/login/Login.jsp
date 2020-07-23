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
<title>로그인.jsp</title>
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


#sign_up
{
	font-size: 13pt;
	font-weight: bold;
}

#reset_password
{	
	font-size: 13pt;
	margin-left: 25px;
	font-weight: bold;
}


#kakaosign
{
	width: 357px;
	border: 0px;
	background-color: white;
	padding: 0px;
}

#email, #password
{
	width: 306px;
}

#sign
{
	width: 357px;
	height: 55px;
	margin-bottom: 15px;
}

#frame
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
</head>
<body>

	<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/Submenu.jsp"></c:import>

<div class="container-fluid">
      <div class="section-title container">
         <h5>로그인</h5>
         <hr />
      </div>
	<div class="row">
		<div class="col-md-3">
		</div>
		<div class="col-md-6 ">
		</div>
		<div class="col-md-3">
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
		</div>
		<div class="col-md-6">

		</div>
		<div class="col-md-3">
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
		</div>
		<div class="col-md-6 login_display">
			<div class="input-group input-group-lg login_email">
		 		<span class="input-group-addon" id="sizing-addon1">
		 			<span class="glyphicon glyphicon-user"></span>
		 		</span>
		  		<input type="text" id="email" class="form-control" placeholder="Email" aria-describedby="sizing-addon1">
			</div>
			
			<div class="input-group input-group-lg login_pw">
		 		<span class="input-group-addon" id="sizing-addon1">
		 			<span class="glyphicon glyphicon-wrench"></span>
		 		</span>
		  		<input type="password" id="password" class="form-control" placeholder="Password" aria-describedby="sizing-addon1">
			</div>
		
			<div class="login_button">
				<button type="button" class="btn btn-default btn-lg" id="sign">로그인</button>
				<button type="button" id="kakaosign"><img src="<%=cp %>/views/img/kakao.png" style="max-width: 100%; height: auto;"></button>
			</div>
			
			<div id="frame">
				<span class="glyphicon glyphicon-plus" id="sign_up"><a href="">회원가입</a></span>
				<span class="glyphicon glyphicon-exclamation-sign" id="reset_password"><a href="">비밀번호재설정</a></span>
			</div>
			
		</div>
		<div class="col-md-3">
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
		</div>
		<div class="col-md-6">
		</div>
		<div class="col-md-3">
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
		</div>
		<div class="col-md-6">
		</div>
		<div class="col-md-3">
		</div>
	</div>
</div>

<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>