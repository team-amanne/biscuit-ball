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
<title>메인 > 회원가입</title>
<style type="text/css">

/* flex 용 */
.flex
{
	display: flex;
}

/* 홈으로 버튼 */
.home
{
	margin-left: 10px;
	width: 98px;
	height: 34px;
}

/* 로그인 버튼 */
.login
{
	margin-left: 10px;
	width: 98px;
	height: 34px;
}

/* 이미지 가운데정렬 */
.image
{
	text-align: center;
}

/* 홈으로 로그인 버튼 */
.last_button
{
	text-align: center;
    width: 910px;
    margin-top: 30px;
}

.text
{
	font-size: 20pt;
	text-align: center;
	margin-top: 15px;
	font-weight: bold;
	
}

</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=cp %>/css/default.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
</head>
<body>

<!-- 헤더 -->
<c:import url="../base/Header.jsp"></c:import>

<div class="container-fluid">
      <div class="section-title container">
         <h5>메인 홈 > 회원가입</h5>
         <hr />
      </div>
	<div class="row">
		<div class="col-md-3">
		</div>
		<div class="col-md-6 image">
			<img src="<%=cp %>/views/img/complete_image.png" id="image">
		</div>
		<div class="col-md-3">
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
		</div>
		<div class="col-md-6">
			<div class="text">
				회원가입이 정상적으로 처리되었습니다.
			</div>	
		</div>
		<div class="col-md-3">
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
		</div>
		<div class="col-md-6 flex">		
			<div class="last_button">
				<a href="<%=cp %>"><button class="btn btn-warning" id="home" class="home">홈으로</button></a>
				<a href="<%=cp %>/login"><button class="btn btn-warning" id="login" class="login">로그인</button></a>
			</div>
		</div>
		<div class="col-md-3">
		</div>
	</div>
</div>

<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>