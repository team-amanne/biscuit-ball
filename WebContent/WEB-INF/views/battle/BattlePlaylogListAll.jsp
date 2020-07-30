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
.playlog-summary, .playlog-result {
	font-size: 14pt;
}

text-orange {
	font-weight: bold;
}

.record-header, .record-body {
	font-weight: bold;
	font-size: 14pt;
}

.playlog-count {
	padding-top: 2%;
}
</style>
</head>
<body>

		<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/BattleSubmenu.jsp"></c:import>


	<div class="container-fuild main">
		<div class="section-title container">
			대전 > 플레이로그
			<hr />
		</div>
		<div class="col-md-2"></div>
		<div class="col-md-8 col-xs-8">
			<p class="title-text">플레이로그</p>
			<hr />

			<p class="subtitle-text">크루 전적</p>

				<div class="col-md-3 col-xs-3" align="center">
					<ul class="list-group">
						<li class="list-group-item board-body board-header record-header">
							<div class="row">
								<div class="col-sm-12 col-xs-12">
									<span>승 률</span>
								</div>
							</div>
						</li>
						<li class="list-group-item board-body record-body">
							<div class="row">
								<div class="col-sm-12 col-xs-12">
									<span>70%</span>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="col-md-3 col-xs-3" align="center">
					<ul class="list-group">
						<li class="list-group-item board-body board-header record-header">
							<div class="row">
								<div class="col-sm-12 col-xs-12">
									<span>신뢰도</span>
								</div>
							</div>
						</li>
						<li class="list-group-item board-body record-body">
							<div class="row">
								<div class="col-sm-12 col-xs-12">
									<span>80%</span>
								</div>
							</div>
						</li>
					</ul>
				</div>




			<div class="col-md-6">
				<ul class="list-group">
					<li class="list-group-item board-body board-header record-header">
						<div class="row">
							<div class="col-sm-3 col-xs-3">
								<span>총 경기</span>
							</div>
							<div class="col-sm-3 col-xs-3">
								<span>승리</span>
							</div>
							<div class="col-sm-3 col-xs-3">
								<span>무승부</span>
							</div>
							<div class="col-sm-3 col-xs-3">
								<span>패배</span>
							</div>
						</div>
					</li>
					<li class="list-group-item board-body record-body">
						<div class="row">
							<div class="col-sm-3 col-xs-3">
								<span>23</span>
							</div>
							<div class="col-sm-3 col-xs-3">
								<span>10</span>
							</div>
							<div class="col-sm-3 col-xs-3">
								<span>3</span>
							</div>
							<div class="col-sm-3 col-xs-3">
								<span>10</span>
							</div>
						</div>
					</li>
				</ul>

			</div>
			<div class="col-md-12 col-xs-12">
				<hr />
				<p class="subtitle-text">플레이로그 리스트</p>
				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#home"
						aria-controls="home" role="tab" data-toggle="tab">전체</a></li>
					<li role="presentation"><a href="#profile"
						aria-controls="profile" role="tab" data-toggle="tab">미입력</a></li>
					<li role="presentation"><a href="#profile"
						aria-controls="profile" role="tab" data-toggle="tab">대기</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="home">
						<div class="row">
							<div class="col-md-12">
								<div class="row top">
									<div class="col-md-12" align="left">

										<p class="subtitle-text playlog-count">
											전체 플레이로그 <span class="text-orange">n</span> 개
										</p>
									</div>
								</div>
								<ul class="list-group">
									<li class="list-group-item board-body board-header">
										<div class="row">
											<div class="col-sm-1 col-xs-1">
												<span>번호</span>
											</div>
											<div class="col-md-3 col-xs-3">
												<span>상대</span>
											</div>
											<div class="col-md-3 col-xs-3">
												<span>장소</span>
											</div>
											<div class="col-md-3 col-xs-3">
												<span>일시</span>
											</div>
											<div class="col-md-1 col-xs-1">
												<span>상태</span>
											</div>
											<div class="col-md-1 col-xs-1">
												<span>결과</span>
											</div>
										</div>
									</li>

									<li class="list-group-item board-body">
										<div class="row">
											<div class="col-sm-1 col-xs-1">
												<span>10</span>
											</div>
											<div class="col-md-3 col-xs-3">
												<span>아맞네</span>
											</div>
											<div class="col-md-3 col-xs-3">
												<span>서울 마포구 쌍용코트</span>
											</div>
											<div class="col-md-3 col-xs-3">
												<span>2020-07-20 18:00</span>
											</div>
											<div class="col-md-1 col-xs-1">
												<span>미입력</span>
											</div>
											<div class="col-md-1 col-xs-1">
												<span>미입력</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">
											<div class="col-sm-1 col-xs-1">
												<span>10</span>
											</div>
											<div class="col-md-3 col-xs-3">
												<span>아맞네</span>
											</div>
											<div class="col-md-3 col-xs-3">
												<span>서울 마포구 쌍용코트</span>
											</div>
											<div class="col-md-3 col-xs-3">
												<span>2020-07-20 18:00</span>
											</div>
											<div class="col-md-1 col-xs-1">
												<span>미입력</span>
											</div>
											<div class="col-md-1 col-xs-1">
												<span>미입력</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">
											<div class="col-sm-1 col-xs-1">
												<span>10</span>
											</div>
											<div class="col-md-3 col-xs-3">
												<span>아맞네</span>
											</div>
											<div class="col-md-3 col-xs-3">
												<span>서울 마포구 쌍용코트</span>
											</div>
											<div class="col-md-3 col-xs-3">
												<span>2020-07-20 18:00</span>
											</div>
											<div class="col-md-1 col-xs-1">
												<span>미입력</span>
											</div>
											<div class="col-md-1 col-xs-1">
												<span>미입력</span>
											</div>
										</div>
									</li>
								</ul>

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
					
				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane" id="home">
						<div class="row">
							<div class="col-md-12">
								<div class="row top">
									<div class="col-md-12" align="left">

										<p class="subtitle-text playlog-count">
											미입력 플레이로그 <span class="text-orange">n</span> 개
										</p>
									</div>
								</div>
								<ul class="list-group">
									<li class="list-group-item board-body board-header">
										<div class="row">
											<div class="col-sm-2 col-xs-3">
												<span>번호</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>상대</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>장소</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>일시</span>
											</div>
											<div class="col-sm-2 col-xs-3">
												<span>남은 입력기간</span>
											</div>
										</div>
									</li>

									<li class="list-group-item board-body">
										<div class="row">
											<div class="col-sm-2 col-xs-3">
												<span>10</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>아맞네</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>서울 마포구 연남코트</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>2020-07-21 18:00</span>
											</div>
											<div class="col-sm-2 col-xs-3">
												<span>2일</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">
											<div class="col-sm-2 col-xs-3">
												<span>10</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>아맞네</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>서울 마포구 연남코트</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>2020-07-21 18:00</span>
											</div>
											<div class="col-sm-2 col-xs-3">
												<span>2일</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">
											<div class="col-sm-2 col-xs-3">
												<span>10</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>아맞네</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>서울 마포구 연남코트</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>2020-07-21 18:00</span>
											</div>
											<div class="col-sm-2 col-xs-3">
												<span>2일</span>
											</div>
										</div>
									</li>
								</ul>
								
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
				</div>	
				
				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane" id="home">
						<div class="row">
							<div class="col-md-12">
								<div class="row top">
									<div class="col-md-12" align="left">

										<p class="subtitle-text playlog-count">
											결과 대기 중 플레이로그 <span class="text-orange">n</span> 개
										</p>
									</div>
								</div>
								<ul class="list-group">
									<li class="list-group-item board-body board-header">
										<div class="row">
											<div class="col-sm-3 col-xs-3">
												<span>번호</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>상대</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>장소</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>일시</span>
											</div>
										</div>
									</li>

									<li class="list-group-item board-body">
										<div class="row">
											<div class="col-sm-3 col-xs-3">
												<span>10</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>아맞네</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>서울시 마포구 어디코트</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>2020-07-30</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">
											<div class="col-sm-3 col-xs-3">
												<span>10</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>아맞네</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>서울시 마포구 어디코트</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>2020-07-30</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">
											<div class="col-sm-3 col-xs-3">
												<span>10</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>아맞네</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>서울시 마포구 어디코트</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>2020-07-30</span>
											</div>
										</div>
									</li>
								</ul>
								
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