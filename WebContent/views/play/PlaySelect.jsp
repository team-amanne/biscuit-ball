<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>농구하기</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=cp %>/css/default.css">
<style type="text/css">

.col-party 
{
	text-align: center;
	border-radius: 30px;
	height: 300px;
	padding-top: 60px;
	margin: 100px auto auto auto;
}

.nong1
{
	opacity: 0.6;
	background-size: cover;
	background-image: url('../img/hamNong.jpg');
}

.nong2
{
	opacity: 0.6;
	background-size: cover;
	background-image: url('../img/baNong.jpg');
}


</style>
</head>
<body>

	<!-- 헤더 -->
		<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/PlaySubmenu.jsp"></c:import>

	<div class="main container-fluid">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="section-title">
					<h5>농구하기 > 사용자선택</h5>
					<hr />
				</div>
				
		<div class="row">
			<div class="col-md-2"></div>
				<div class="col-md-8">
					<div class="col-md-6">
						<div class="panel panel-default col-party nong1">
							<div class="panel-body">
								<h2 style="color:white; font-weight: bold;">빠른농구</h2>
								<p style="color:white; font-weight: bold;">지금 당장 농구하고 싶다면?</p>
								<button class="btn btn-warning">PLAY</button>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="panel panel-default col-party nong2">
							<div class="panel-body">
								<h2 style="color:white; font-weight: bold;">함께농구</h2>
								<p style="color:white; font-weight: bold;">나에게 꼭 맞는 모임은?</p>
								<button class="btn btn-warning">PLAY</button>
							</div>
						</div>
					</div>
				</div>
			<div class="col-md-2"></div>
		</div>
				
			</div>
			<div class="col-md-2"></div>
	</div>
	
<c:import url="../base/Footer.jsp"></c:import>
	
</body>
</html>