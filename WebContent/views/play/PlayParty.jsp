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
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/board.css">
<!-- 공통 헤더 -->
<style type="text/css">

	.title-header
	{
		font-size: 12pt;
	}
</style>
</head>
<body>

	<!-- 헤더 -->
		<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/PlaySubmenu.jsp"></c:import>

	<div class="container-fluid main">
		<div class="section-title container">
			<h5>농구하기 > 사용자선택</h5>
			<hr />
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
					<div class="col-md-6">
						<div class="panel panel-default">
						<div class="panel-heading">
						<p class="title-header">파 티</p>
						</div>
							<div class="panel-body">
								
								<p>친구들과 함께</p>
								<button class="btn btn-default btn-link">PLAY</button>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="panel panel-default">
						<div class="panel-heading">
						<p class="title-header">개 인</p>
						</div>
							<div class="panel-body">
								
								<p>혼자서도 즐겁게</p>
								<button class="btn btn-default btn-link">PLAY</button>
							</div>
						</div>
					</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
	
	<c:import url="../base/Footer.jsp"></c:import>
	

</body>
</html>