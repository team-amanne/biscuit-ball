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
<!-- 공통 헤더 -->
<style type="text/css">

	.col-party 
	{
		text-align: center;
		border-radius: 30px;
		height: 300px;
		padding-top: 60px;
		margin: 80px auto auto auto;
	}
</style>
</head>
<body>

	<!-- 헤더 -->
		<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/PlaySubmenu.jsp"></c:import>

	<div class="container-fluid main">
		<div class="section-title">
			<h5>농구하기 > 사용자선택</h5>
			<hr />
		</div>
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-8">
					<div class="col-md-4">
						<div class="panel panel-default col-party">
							<div class="panel-body">
								<h2>파티</h2>
								<p>친구들과 함께</p>
								<button class="btn btn-default">PLAY</button>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="panel panel-default col-party">
							<div class="panel-body">
								<h2>개인</h2>
								<p>혼자서 재밌게</p>
								<button class="btn btn-default">PLAY</button>
							</div>
						</div>
					</div>
		
			

			</div>
			<div class="col-md-4"></div>
		</div>
	</div>
	
	<c:import url="../base/Footer.jsp"></c:import>
	

</body>
</html>