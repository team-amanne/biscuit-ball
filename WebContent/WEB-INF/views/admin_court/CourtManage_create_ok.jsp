<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>

<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js"
	crossorigin="anonymous"></script>




<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">




<style type="text/css">
.left-btn {
	text-align: left;
}

.right-btn {
	text-align: right;
}

.subtitle-text {
	font-weight: bold;
}

.complete {
	font-weight: bold;
	color: red;
	text-align: center;
	padding: 50px;
}
</style>



<title>BiscuitBail > 코트 등록완료</title>

<!-- 부트스트랩/제이쿼리 -->
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<link rel="stylesheet" href="<%=cp%>/css/board.css" />
<link rel="stylesheet" href="<%=cp%>/css/default.css" />
</head>
<body>
	
	<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/Submenu.jsp"></c:import>

	<!-- 메인 -->
	<div class="main container-fluid">
		<div class="section-title container">
			<span> </span>
			<hr />
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row">
							<div class="col-md-12 complete">
								<h3>코트가 등록되었습니다.</h3>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-1"></div>
							<div class="col-xs-10 panel panel-default">
								<div class="row  panel-heading panel-body">
									<div class="col-xs-12">
										<span>등록된 코트 정보</span>
									</div>
								</div>
								<div class="row panel-body">
									<div class="col-xs-2"></div>
									<div class="col-xs-2">
										<label>이름</label>
									</div>
									<div class="col-xs-8">
										<span>홍대 농구장</span>
									</div>
								</div>
								<div class="row panel-body">
									<div class="col-xs-2"></div>
									<div class="col-xs-2">
										<label>시설</label>
									</div>
									<div class="col-xs-2">
										<span>화장실</span> <label>유</label>
									</div>
									<div class="col-xs-2">
										<span>샤워실</span> <label>무</label>
									</div>
									<div class="col-xs-2">
										<span>주차장</span> <label>무</label>
									</div>
								</div>
								<div class="row panel-body">
									<div class="col-xs-2"></div>
									<div class="col-xs-2">
										<label>인원수</label>
									</div>
									<div class="col-xs-8">
										<span>8~10명</span>
									</div>
								</div>
								<div class="row panel-body">
									<div class="col-xs-10"></div>
									<div class="col-xs-2">
										<a href="#">
											<button type="button"
												class="btn btn-default btn-block btn-link">확인</button>
										</a>
									</div>
								</div>
							</div>
							<div class="col-xs-1"></div>
						</div>
					</div>
					<div class="col-md-2"></div>
				</div>
			</div>
		</div>
	</div>
	<c:import url="../base/Footer.jsp"></c:import>
</body>
</html>