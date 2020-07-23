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
.board-header, .board-body {
	font-size: 9pt;
}
</style>
</head>
<body>

<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/Submenu.jsp"></c:import>

	<div class="container-fuild main">
		<div class="section-title container">
			관리자 > 코트 관리 > 전체 코트
			<hr />
		</div>
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div class="col-md-12 col-xs-12">
				<p class="title-text">전체 코트 목록</p>
				<hr />
			</div>

			<!-- 전체 코트 -->
			<div class="col-md-12 col-xs-12">
				<p class="subtitle-text">전체 코트</p>
				<hr />
				<div class="col-md-12 col-xs-12">
					<p class="request-count">
						전체 <span class="text-orange">n</span> 개의 코트
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
								<div class="col-sm-1 col-xs-1">
									<span>등급</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>만족도</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>등록일</span>
								</div>
								<div class="col-sm-1 col-xs-1">
									<span>상태</span>
								</div>
								<div class="col-sm-1 col-xs-1"></div>
							</div>
						</li>
						<li class="list-group-item board-body">
							<div class="row">
								<div class="col-sm-1 col-xs-1">
									<span>10</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>쌍용코트</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>서울 마포구</span>
								</div>
								<div class="col-sm-1 col-xs-1">
									<span>B</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>2020-07-11</span>
								</div>
								<div class="col-sm-1 col-xs-1">
									<span>등록</span>
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
									<span>아맞네코트</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>서울 마포구</span>
								</div>
								<div class="col-sm-1 col-xs-1">
									<span>C</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>2020-07-11</span>
								</div>
								<div class="col-sm-1 col-xs-1">
									<span>가등록</span>
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
									<span>아맞네코트</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>서울 마포구</span>
								</div>
								<div class="col-sm-1 col-xs-1">
									<span>C</span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span> <span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
								</div>
								<div class="col-sm-2 col-xs-2">
									<span>2020-07-11</span>
								</div>
								<div class="col-sm-1 col-xs-1">
									<span>가등록</span>
								</div>
								<div class="col-sm-1 col-xs-1">
									<button class="btn btn-default btn-link btn-xs">자세히</button>
								</div>
							</div>
						</li>

					</ul>

				</div>



				<div class="col-md-12  right-btn">

					<button class="btn btn-default btn-link btn-sm" type="submit">새
						코트 등록</button>
				</div>



				<div class="row">
					<div class="col-md-4"></div>
					<div class="col-md-4 paging">
						<ul class="pagination">
							<li class="disabled"><a href="#"> <span>«</span>
							</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#"> <span>»</span>
							</a></li>
						</ul>
					</div>
					<div class="col-md-4"></div>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
	<br style="clear: both;" />
	<c:import url="../base/Footer.jsp"></c:import>
</body>
</html>