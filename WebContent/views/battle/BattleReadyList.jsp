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
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" href="<%=cp%>/css/board.css">
</head>
<body>
		<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/BattleSubmenu.jsp"></c:import>

	<div class="container-fuild main">
		<div class="section-title container">
			대전 > 예정 대전 목록
			<hr />
		</div>
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div class="row">
				<div class="col-md-12">
					<div class="row top">
						<hr />
						<div class="col-md-10 col-xs-10" align="left">

							<p class="subtitle-text">
								예정 대전 <span class="text-orange">n</span> 개
							</p>
						</div>
						<div class="col-md-2 col-xs-2">
							<!-- <button class="btn btn-default btn-link btn-block btn-sm">
										더보기
									</button> -->
						</div>
					</div>
					<ul class="list-group">
						<li class="list-group-item board-body board-header">
							<div class="row">
								<div class="col-sm-2 col-xs-2">
									<span>번호</span>
								</div>
								<div class="col-md-3 col-md-3">
									<span>상대 크루 </span>
								</div>
								<div class="col-md-3 col-xs-3">
									<span>장소</span>
								</div>
								<div class="col-md-2 col-xs-2">
									<span>경기 방식</span>
								</div>
								<div class="col-md-2 col-xs-2">
									<span>모임 일시</span>
								</div>
							</div>
						</li>
						<li class="list-group-item board-body">
							<div class="row">
								<div class="col-sm-2 col-xs-2">
									<span>10</span>
								</div>
								<div class="col-md-3 col-md-3">
									<span>아맞네안티 </span>
								</div>
								<div class="col-md-3 col-xs-3">
									<span>서울 마포구 쌍용코트</span>
								</div>
								<div class="col-md-2 col-xs-2">
									<span>3 on 3</span>
								</div>
								<div class="col-md-2 col-xs-2">
									<span>2020-08-01</span>
								</div>
							</div>
						</li>
						<li class="list-group-item board-body">
							<div class="row">
								<div class="col-sm-2 col-xs-2">
									<span>10</span>
								</div>
								<div class="col-md-3 col-md-3">
									<span>아맞네안티 </span>
								</div>
								<div class="col-md-3 col-xs-3">
									<span>서울 마포구 쌍용코트</span>
								</div>
								<div class="col-md-2 col-xs-2">
									<span>3 on 3</span>
								</div>
								<div class="col-md-2 col-xs-2">
									<span>2020-08-01</span>
								</div>
							</div>
						</li>
						<li class="list-group-item board-body">
							<div class="row">
								<div class="col-sm-2 col-xs-2">
									<span>10</span>
								</div>
								<div class="col-md-3 col-md-3">
									<span>아맞네안티 </span>
								</div>
								<div class="col-md-3 col-xs-3">
									<span>서울 마포구 쌍용코트</span>
								</div>
								<div class="col-md-2 col-xs-2">
									<span>3 on 3</span>
								</div>
								<div class="col-md-2 col-xs-2">
									<span>2020-08-01</span>
								</div>
							</div>
						</li>
						<li class="list-group-item board-body">
							<div class="row">
								<div class="col-sm-2 col-xs-2">
									<span>10</span>
								</div>
								<div class="col-md-3 col-md-3">
									<span>아맞네안티 </span>
								</div>
								<div class="col-md-3 col-xs-3">
									<span>서울 마포구 쌍용코트</span>
								</div>
								<div class="col-md-2 col-xs-2">
									<span>3 on 3</span>
								</div>
								<div class="col-md-2 col-xs-2">
									<span>2020-08-01</span>
								</div>
							</div>
						</li>
						<li class="list-group-item board-body">
							<div class="row">
								<div class="col-sm-2 col-xs-2">
									<span>10</span>
								</div>
								<div class="col-md-3 col-md-3">
									<span>아맞네안티 </span>
								</div>
								<div class="col-md-3 col-xs-3">
									<span>서울 마포구 쌍용코트</span>
								</div>
								<div class="col-md-2 col-xs-2">
									<span>3 on 3</span>
								</div>
								<div class="col-md-2 col-xs-2">
									<span>2020-08-01</span>
								</div>
							</div>
						</li>
						<li class="list-group-item board-body">
							<div class="row">
								<div class="col-sm-2 col-xs-2">
									<span>10</span>
								</div>
								<div class="col-md-3 col-md-3">
									<span>아맞네안티 </span>
								</div>
								<div class="col-md-3 col-xs-3">
									<span>서울 마포구 쌍용코트</span>
								</div>
								<div class="col-md-2 col-xs-2">
									<span>3 on 3</span>
								</div>
								<div class="col-md-2 col-xs-2">
									<span>2020-08-01</span>
								</div>
							</div>
						</li>

					</ul>

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
		</div>
	</div>
	<br style="clear: both;" />
	<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>