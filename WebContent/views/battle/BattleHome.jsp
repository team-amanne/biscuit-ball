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
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" href="<%=cp%>/css/board.css">

<style type="text/css">
.subtitle-text {
	margin-top: 1%;
}
</style>
</head>
<body>

		<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/BattleSubmenu.jsp"></c:import>

	<div class="container-fuild main">
		<div class="section-title container">
			대전 > 대전 현황
			<hr />
		</div>
		<div class="col-md-2"></div>
		<div class="col-md-8">

			<div role="tabpanel" align="center" class="tab">

				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#home"
						aria-controls="home" role="tab" data-toggle="tab">수신한 대전</a></li>
					<li role="presentation"><a href="#profile"
						aria-controls="profile" role="tab" data-toggle="tab">신청한 대전</a></li>
					<li role="presentation"><a href="#profile"
						aria-controls="profile" role="tab" data-toggle="tab2">재고된 대전</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="home">
						<!-- 대전 수신함 -->
						<div class="row">
							<div class="col-md-12">
								<div class="row top">
									<div class="col-md-12" align="left">

										<p class="subtitle-text">
											대전 수신 <span class="text-orange">n</span> 개
										</p>
									</div>
								</div>
								<ul class="list-group">
									<li class="list-group-item board-body board-header">
										<div class="row">
											<div class="col-sm-2 col-xs-2">
												<span>번호</span>
											</div>
											<div class="col-md-3 col-md-3">
												<span>신청 크루 </span>
											</div>
											<div class="col-md-3 col-xs-3">
												<span>장소</span>
											</div>
											<div class="col-md-2 col-xs-2">
												<span>수신 일시</span>
											</div>
											<div class="col-md-2 col-xs-2">
												<span>경기 일시</span>
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
												<span>2020-07-19</span>
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
												<span>2020-07-19</span>
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
												<span>2020-07-19</span>
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
												<span>2020-07-19</span>
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
												<span>2020-07-19</span>
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
												<span>2020-07-19</span>
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
												<span>2020-07-19</span>
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
												<span>2020-07-19</span>
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
												<span>2020-07-19</span>
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
												<span>2020-07-19</span>
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
					<div role="tabpanel" class="tab-pane" id="profile">

						<!-- 대전 신청함 -->
						<div class="row">
							<div class="col-md-12">
								<div class="row top">
									<div class="col-md-12" align="left">

										<p class="subtitle-text">
											대전 신청 <span class="text-orange">n</span> 개
										</p>
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
												<span>신청 일시</span>
											</div>
											<div class="col-md-2 col-xs-2">
												<span>경기 일시</span>
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
												<span>2020-07-19</span>
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
												<span>2020-07-19</span>
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
												<span>2020-07-19</span>
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
												<span>2020-07-19</span>
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
												<span>2020-07-19</span>
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
												<span>2020-07-19</span>
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
												<span>2020-07-19</span>
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
												<span>2020-07-19</span>
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
												<span>2020-07-19</span>
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
												<span>2020-07-19</span>
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

					<!--재고된 대전  -->
					<div role="tabpanel" class="tab-pane active" id="home">
						<div class="row">
							<div class="col-md-12">
								<div class="row top">
									<div class="col-md-12" align="left">

										<p class="subtitle-text">
											재고 대전 <span class="text-orange">n</span> 개
										</p>
									</div>
								</div>
								<ul class="list-group">
									<li class="list-group-item board-body board-header">
										<div class="row">
											<div class="col-sm-4 col-xs-4">
												<span>번호</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>상대 크루 </span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>재고 일시</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">
											<div class="col-sm-4 col-xs-4">
												<span>10</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>아맞네 크루 </span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>2020-08-01</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">
											<div class="col-sm-4 col-xs-4">
												<span>10</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>아맞네 크루 </span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>2020-08-01</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">
											<div class="col-sm-4 col-xs-4">
												<span>10</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>아맞네 크루 </span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>2020-08-01</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">
											<div class="col-sm-4 col-xs-4">
												<span>10</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>아맞네 크루 </span>
											</div>
											<div class="col-sm-4 col-xs-4">
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


						<!-- 미입력 플레이로그 -->
						<div class="row">
							<div class="col-md-12">
								<div class="row top">
									<div class="col-md-12" align="left">
										<hr />
										<p class="subtitle-text">
											미입력 플레이로그 <span class="text-orange">n</span> 개
										</p>
									</div>
								</div>
								<ul class="list-group">
									<li class="list-group-item board-body board-header">
										<div class="row">
											<div class="col-sm-1 col-xs-1">
												<span>번호</span>
											</div>
											<div class="col-md-3 col-md-3">
												<span>상대 크루 </span>
											</div>
											<div class="col-md-3 col-xs-3">
												<span>장소</span>
											</div>
											<div class="col-md-2 col-xs-2">
												<span>남은 입력 기간</span>
											</div>
											<div class="col-md-2 col-xs-2">
												<span>모임 일시</span>
											</div>
											<div class="col-md-1 col-xs-1">
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">
											<div class="col-ms-1 col-xs-1">
												<span>10</span>
											</div>
											<div class="col-md-3 col-md-3">
												<span>아맞네안티 </span>
											</div>
											<div class="col-md-3 col-xs-3">
												<span>서울 마포구 쌍용코트</span>
											</div>
											<div class="col-md-2 col-xs-2">
												<span>2</span>
											</div>
											<div class="col-md-2 col-xs-2">
												<span>2020-08-01</span>
											</div>
											<div class="col-md-1 col-xs-1">
												<button class="btn btn-default btn-link btn-xs">입력</button>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">
											<div class="col-ms-1 col-xs-1">
												<span>10</span>
											</div>
											<div class="col-md-3 col-md-3">
												<span>아맞네안티 </span>
											</div>
											<div class="col-md-3 col-xs-3">
												<span>서울 마포구 쌍용코트</span>
											</div>
											<div class="col-md-2 col-xs-2">
												<span>2</span>
											</div>
											<div class="col-md-2 col-xs-2">
												<span>2020-08-01</span>
											</div>
											<div class="col-md-1 col-xs-1">
												<button class="btn btn-default btn-link btn-xs">입력</button>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">
											<div class="col-ms-1 col-xs-1">
												<span>10</span>
											</div>
											<div class="col-md-3 col-md-3">
												<span>아맞네안티 </span>
											</div>
											<div class="col-md-3 col-xs-3">
												<span>서울 마포구 쌍용코트</span>
											</div>
											<div class="col-md-2 col-xs-2">
												<span>2</span>
											</div>
											<div class="col-md-2 col-xs-2">
												<span>2020-08-01</span>
											</div>
											<div class="col-md-1 col-xs-1">
												<button class="btn btn-default btn-link btn-xs">입력</button>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">
											<div class="col-ms-1 col-xs-1">
												<span>10</span>
											</div>
											<div class="col-md-3 col-md-3">
												<span>아맞네안티 </span>
											</div>
											<div class="col-md-3 col-xs-3">
												<span>서울 마포구 쌍용코트</span>
											</div>
											<div class="col-md-2 col-xs-2">
												<span>2</span>
											</div>
											<div class="col-md-2 col-xs-2">
												<span>2020-08-01</span>
											</div>
											<div class="col-md-1 col-xs-1">
												<button class="btn btn-default btn-link btn-xs">입력</button>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">
											<div class="col-ms-1 col-xs-1">
												<span>10</span>
											</div>
											<div class="col-md-3 col-md-3">
												<span>아맞네안티 </span>
											</div>
											<div class="col-md-3 col-xs-3">
												<span>서울 마포구 쌍용코트</span>
											</div>
											<div class="col-md-2 col-xs-2">
												<span>2</span>
											</div>
											<div class="col-md-2 col-xs-2">
												<span>2020-08-01</span>
											</div>
											<div class="col-md-1 col-xs-1">
												<button class="btn btn-default btn-link btn-xs">입력</button>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">
											<div class="col-ms-1 col-xs-1">
												<span>10</span>
											</div>
											<div class="col-md-3 col-md-3">
												<span>아맞네안티 </span>
											</div>
											<div class="col-md-3 col-xs-3">
												<span>서울 마포구 쌍용코트</span>
											</div>
											<div class="col-md-2 col-xs-2">
												<span>2</span>
											</div>
											<div class="col-md-2 col-xs-2">
												<span>2020-08-01</span>
											</div>
											<div class="col-md-1 col-xs-1">
												<button class="btn btn-default btn-link btn-xs">입력</button>
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

						<!-- 예정 대전 -->
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


				<div class="col-md-2"></div>
			</div>
		</div>
	</div>
	<br style="clear: both;" />
	<c:import url="../base/Footer.jsp"></c:import>
</body>
</html>