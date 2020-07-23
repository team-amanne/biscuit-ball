<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>


<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
   href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" href="<%=cp%>/css/board.css" />

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



<title>코트 삭제 요청</title>


</head>
<body>
	<!-- 헤더 -->
	<c:import url="../base/Header.jsp"></c:import>

	<!-- 서브메뉴 -->
	<!-- 서브메뉴는 기능별(농구하기/코트검색/크루/...)로 복사해서 만들어두고 import 할 것 -->
	<c:import url="../base/CrewSubmenu.jsp"></c:import>

	<!-- 메인 -->
	<div class="main container-fluid">
		<div class="section-title container">
			<span>코트 정보 페이지> 코트 삭제요청 완료 </span>
			<hr />
		</div>
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-8">
					<div class="row">
						<div class="col-md-12 complete">
							<h3>해당 크루가 정상적으로 해체요청되었습니다.</h3>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-1">
						</div>
						<div class="col-xs-10 panel panel-default">
							<div class="row  panel-heading panel-body">
								<div class="col-xs-12">
									<span>해체요청된 크루 정보</span>
								</div>
							</div>
							<div class="row panel-body">
								<div class="col-xs-2">									
								</div>
								<div class="col-xs-2">
									<label>크루이름</label>
								</div>
								<div class="col-xs-8">
									<span>망한크루</span>
								</div>
							</div>
							<div class="row panel-body">
								<div class="col-xs-2">
								</div>
								<div class="col-xs-2">
									<label>리더</label>
								</div>
								<div class="col-xs-8">
									<span>농구못하는 농구인</span>
								</div>
							</div>
							<div class="row panel-body">
								<div class="col-xs-10">
								</div>
								<div class="col-xs-2">
									<a href="#">
										<button type="button" class="btn btn-default btn-block btn-link">확인</button>
									</a>
								</div>
							</div>
						</div>
						<div class="col-xs-1">
						</div>
					</div>
				</div>
				<div class="col-md-2">
				</div>
			</div>
		</div>
	</div>
</div>
		<c:import url="../base/Footer.jsp"></c:import>
</body>
</html>