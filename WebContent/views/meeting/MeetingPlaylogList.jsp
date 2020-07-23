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
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/default.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style type="text/css">
.btn-serach {
	padding: 0px 0px 0px 0px;
}

.list-header {
	color: white;
	background: orange;
	font-weight: bold;
	font-size: 130%
}

.top-btn {
	padding-bottom: 10px;
	color: white;
}

.top-btn .col-md-2 {
	text-align: right;
}

.list-item {
	height: 50px;
	text-align: center;
	padding-left: 0px;
	padding-right: 0px;
}


.count_post
{
	color: orange;
}
</style>
</head>
<body>

	<!-- 헤더 -->
		<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/Submenu.jsp"></c:import>

	<div class="container-fluid main">
		<div class="section-title container">
			<h5>농구하기 > 모임관리 > 플레이로그</h5>
			<hr />
		</div>


		<!-- 모임 목록 -->
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row">
							<div class="col-md-12">
								<h4>전체 플레이로그</h4>
								<hr>
							</div>
						</div>
						<div class="row top-btn">
							<div class="col-md-4"></div>
							<div class="col-md-6"></div>
							<div class="col-md-2">
								<button class="btn btn-submit" type="button">더보기</button>
							</div>
						</div>

						<ul class="list-group">
							<li class="list-group-item list-header list-item">
								<div class="col-md-1">
									<span class="board-header">번호</span>
								</div>
								<div class="col-md-1">
									<span class="board-header">주장</span>
								</div>
								<div class="col-md-3">
									<span class="board-header">장소</span>
								</div>
								<div class="col-md-2">
									<span class="board-header">모임시간</span>
								</div>
								<div class="col-md-1">
									<span class="board-header">인원</span>
								</div>
								<div class="col-md-2">
									<span class="board-header">경기/일반</span>
								</div>
								<div class="col-md-2">
									<span class="board-header">입력 여부</span>
								</div>
								
							</li>
							<li class="list-group-item list-item">
								<div class="col-md-1">
									<span class="board-header">103</span>
								</div>
								<div class="col-md-1">
									<span class="board-header">아맞네</span>
								</div>
								<div class="col-md-3">
									<span class="board-header">서울 마포구 쌍용코트</span>
								</div>
								<div class="col-md-2">
									<span class="board-header">2020-07-09 12:00</span>
								</div>
								<div class="col-md-1">
									<span class="board-header">4</span>
								</div>
								<div class="col-md-2">
									<span class="board-header">경기</span>
								</div>
								<div class="col-md-2">
									<span class="board-header">
										<button class="btn btn-default btn-sm">
										입력하기
										</button>
									</span>
								</div>
							</li>
							<li class="list-group-item list-item">
								<div class="col-md-1">
									<span class="board-header">102</span>
								</div>
								<div class="col-md-1">
									<span class="board-header">갓진녕</span>
								</div>
								<div class="col-md-3">
									<span class="board-header">제주 서귀포시 해피코트</span>
								</div>
								<div class="col-md-2">
									<span class="board-header">2020-07-08 12:00</span>
								</div>
								<div class="col-md-1">
									<span class="board-header">4</span>
								</div>
								<div class="col-md-2">
									<span class="board-header">일반</span>
								</div>
								<div class="col-md-2">
									<span class="board-header">
										<button class="btn btn-default btn-sm" disabled="disabled">
										입력 완료
										</button>
									</span>
								</div>
							</li>
							<li class="list-group-item list-item">
								<div class="col-md-1">
									<span class="board-header">102</span>
								</div>
								<div class="col-md-1">
									<span class="board-header">성철성철</span>
								</div>
								<div class="col-md-3">
									<span class="board-header">인천 미추홀구 집앞코트</span>
								</div>
								<div class="col-md-2">
									<span class="board-header">2020-07-08 12:00</span>
								</div>
								<div class="col-md-1">
									<span class="board-header">4</span>
								</div>
								<div class="col-md-2">
									<span class="board-header">일반</span>
								</div>
								<div class="col-md-2">
									<span class="board-header">
										<button class="btn btn-default btn-sm" disabled="disabled">
										입력 완료
										</button>
									</span>
								</div>
							</li>
							<li class="list-group-item list-item">
								<div class="col-md-1">
									<span class="board-header">102</span>
								</div>
								<div class="col-md-1">
									<span class="board-header">한별</span>
								</div>
								<div class="col-md-3">
									<span class="board-header">인천 미추홀구 집앞코트</span>
								</div>
								<div class="col-md-2">
									<span class="board-header">2020-07-08 12:00</span>
								</div>
								<div class="col-md-1">
									<span class="board-header">4</span>
								</div>
								<div class="col-md-2">
									<span class="board-header">일반</span>
								</div>
								<div class="col-md-2">
									<span class="board-header">
										<button class="btn btn-default btn-sm" disabled="disabled">
										입력 완료
										</button>
									</span>
								</div>
							</li>
							

						</ul>
						<div class="row">
							<div class="col-md-12"></div>
						</div>
						<div class="row">
							<div class="col-md-3"></div>
							<div class="col-md-3"></div>
						</div>
						<div class="row">
							<div class="col-md-12"></div>
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