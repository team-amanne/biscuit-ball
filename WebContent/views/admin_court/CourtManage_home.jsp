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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" href="<%=cp%>/css/board.css" />
<style type="text/css">
.request-count {
	font-weight: bold;
}

.court-info {
	font-weight: bold;
	font-size: 14pt;
}
</style>
</head>
<body>

<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/Submenu.jsp"></c:import>

	<div class="container-fuild main">
		<div class="section-title container">
			관리자 > 코트 관리
			<hr />
		</div>
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div class="col-md-12 col-xs-12">
				<p class="title-text">코트 관리 현황</p>
				<hr />

				<div class="col-md-12 col-xs-12">

					<div class="col-md-3">
						<ul class="list-group court-info">
							<li class="list-group-item board-body board-header">
								<div class="row">
									<div class="col-sm-12 col-xs-12">
										<span>전체 코트 수</span>
									</div>

								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">
									<div class="col-sm-12 col-xs-12">
										<span>123</span>개
									</div>

								</div>
							</li>
						</ul>
					</div>
					
					<div class="col-md-3">
						<ul class="list-group court-info">
							<li class="list-group-item board-body board-header">
								<div class="row">
									<div class="col-sm-12 col-xs-12">
										<span>삭제 승인 대기</span>
									</div>

								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">
									<div class="col-sm-12 col-xs-12">
										<span>n</span>건
									</div>

								</div>
							</li>
						</ul>
					</div>

				</div>



				<!-- 코트 삭제 요청 -->
				<div class="col-md-12 col-xs-12">
					<hr />
					<p class="subtitle-text">코트 삭제 요청</p>
					<p class="request-count">
						삭제 요청 <span class="text-orange">n</span> 건
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button class="btn btn-link btn-default btn-sm">모두 보기</button>
					</p>
					<ul class="list-group">
						<li class="list-group-item board-body board-header">
							<div class="row">
								<div class="col-sm-1 col-xs-1">
									<span>번호</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>이름</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>지역</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>관리 등급</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>내 코트 수</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>삭제요청일</span>
								</div>
								<div class="col-sm-1 col-xs-1">
									
								</div>
							</div>
						</li>
						<li class="list-group-item board-body">
							<div class="row">
								<div class="col-sm-1 col-xs-1">
									<span>10</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>연남코트</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>서울 마포구</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>C</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>123</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>2020-07-12</span>
								</div>
								<div class="col-sm-1 col-xs-1">
									<button class="btn btn-default btn-link btn-xs">자세히</button>
								</div>
							</div>
						</li>
						<li class="list-group-item board-body">
							<div class="row">
								<div class="col-sm-1 col-xs-1">
									<span>10</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>연남코트</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>서울 마포구</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>C</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>123</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>2020-07-12</span>
								</div>
								<div class="col-sm-1 col-xs-1">
									<button class="btn btn-default btn-link btn-xs">자세히</button>
								</div>
							</div>
						</li>
						<li class="list-group-item board-body">
							<div class="row">
								<div class="col-sm-1 col-xs-1">
									<span>10</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>연남코트</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>서울 마포구</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>C</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>123</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>2020-07-12</span>
								</div>
								<div class="col-sm-1 col-xs-1">
									<button class="btn btn-default btn-link btn-xs">자세히</button>
								</div>
							</div>
						</li>

					</ul>
					<hr />
				</div>

				<div class="col-md-12">
					<div class="col-md-8"></div>
					<div class="col-md-2">
						<button class="btn btn-default btn-block btn-link">전체 코트
							보기</button>
					</div>
					<div class="col-md-2">
						<button class="btn btn-default btn-block btn-link">새 코트
							등록</button>
					</div>

				</div>

			</div>
		</div>
		<div class="col-md-2"></div>
	</div>

	<br style="clear: both;" />
	<c:import url="../base/Footer.jsp"></c:import>
</body>
</html>