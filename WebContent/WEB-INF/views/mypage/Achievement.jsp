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


<title>BiscuitBail > 업적 현황</title>

<!-- 부트스트랩/제이쿼리 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=cp %>/css/default.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style type="text/css">
/* 
.list-group-item {
	height: 50px;
	text-align: center;
} */
.paging {
	text-align: center;
}

.graph {
	text-align: left;
}
#proIcon {
	display:none;
	color:white;
}

.pagination{
	display: block;
	text-align: center;
}

.pagination > li > a {
	float: none;
}
</style>

</head>
<body>
	<!-- 헤더 -->
	<c:import url="../base/Header.jsp"></c:import>
	<!-- 서브메뉴 -->
	<!-- 서브메뉴는 기능별(농구하기/코트검색/크루/...)로 복사해서 만들어두고 import 할 것 -->
	<c:import url="../base/MypageSubmenu.jsp?active=achievement"></c:import>

	<!-- 메인 -->
	<div class="main container-fluid">
		 <div class="section-title container">
			<span>마이페이지 > 개인 업적 관리</span>	
			<hr />
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row">
							<div class="col-md-12">
								<span class="subtitle-text">개인업적관리</span>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">								
								<div class="row">
									<div class="col-md-12">
										<span class="list-title">최근 획득업적 현황</span>
									</div>
								</div>
								<div class="row">
									<p> </p>
								</div>
								<ul class="list-group">
									<li class="list-group-item board-body board-header">
										<div class="row">
											<div class="col-sm-2 col-xs-3">
												<span class="board-header">아이콘</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span class="board-header">업적이름</span>
											</div>
											<div class="col-sm-4 col-xs-3">
												<span class="board-header">업적조건</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span class="board-header">획득일시</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body" id="latelyAchievement1">
										<div class="row">
											<div class="col-sm-2 col-xs-3">
												<span class="glyphicon glyphicon-star"></span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>오늘의 농구왕</span>
											</div>
											<div class="col-sm-4 col-xs-3">
												<span>오늘 농구 플레이 수 1위</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>20-07-01</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body" id="latelyAchievement2">
										<div class="row">
											<div class="col-sm-2 col-xs-3">
												<span class="glyphicon glyphicon-star"></span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>오늘의 농구왕</span>
											</div>
											<div class="col-sm-4 col-xs-3">
												<span>오늘 농구 플레이 수 1위</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>20-07-01</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body"  id="latelyAchievement3">
										<div class="row">
											<div class="col-sm-2 col-xs-3">
												<span class="glyphicon glyphicon-star"></span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>오늘의 농구왕</span>
											</div>
											<div class="col-sm-4 col-xs-3">
												<span>오늘 농구 플레이 수 1위</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span>20-07-01</span>
											</div>
										</div>
									</li>

								</ul>
								<div class="row">
									<div class="col-md-12"></div>
								</div>
								<div class="row">
									<div class="col-sm-3 col-xs-3">
										<span class="list-title">업적힉득 달성률</span>
									</div>
									<div class="col-sm-1 col-xs-1">
										<span> | </span>
									</div>
									<div class="col-sm-8 col-xs-8 progress graph">
										<div class="progress-bar" role="progressbar"
											aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
											style="width: 60%;">
											<span>60%</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12"></div>
						</div>
						<div class="row panel panel-default">

							<div class="col-md-1"></div>
							<div class="col-md-10">
								<div class="col-md-12"
									style="text-align: center; padding-top: 30px; padding-bottom: 20px;">
									<span>전체 업적</span>
								</div>
								<div style="text-align: center;">


									<div class="row" id="tailAchievement">
										<div class="col-sm-4 col-xs-4" id="tailAchievement1" name="tailAchievement1">
											<ul class="list-group">
												<li class="list-group-item board-header">
													<div>
														<input type="radio"name="inlineRadio" id="inlineRadio1" value="option1"> <span
															id="proIcon" style="display: inline";>대표업적</span>
													</div>
													<div class="col-sm-4"></div>
												</li>
												<li class="list-group-item" style="height: 100px;">
													<div>
														<img
															src="https://img.icons8.com/windows/64/000000/music.png" />
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>농구왕</span>
													</div>
												</li>
												<li class="list-group-item">
													<div class="progress graph">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
															style="width: 100%; min-width: 2em;">
															<span>100%</span>
														</div>
													</div>
													<div class="carousel-caption">This is a caption</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>10/10</span>
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>농구하기 10 연승</span>
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>(20-07-01)</span>
													</div>
												</li>
											</ul>
										</div>
										<div class="col-sm-4 col-xs-4" id="tailAchievement2" name="tailAchievement2">
											<ul class="list-group">
												<li class="list-group-item board-header">
													<div>
														<input type="radio"name="inlineRadio" id="inlineRadio2" value="option1">  <span
															id="proIcon">대표업적</span>
													</div>
													<div class="col-sm-4"></div>
												</li>
												<li class="list-group-item" style="height: 100px;">
													<div>
														<img
															src="https://img.icons8.com/windows/64/000000/music.png" />
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>농구왕</span>
													</div>
												</li>
												<li class="list-group-item">
													<div class="progress graph">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
															style="width: 100%; min-width: 2em;">
															<span>100%</span>
														</div>
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>10/10</span>
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>농구하기 10 연승</span>
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>(20-07-01)</span>
													</div>
												</li>
											</ul>
										</div>
										<div class="col-sm-4 col-xs-4" id="tailAchievement3" name="tailAchievement3">
											<ul class="list-group">
												<li class="list-group-item board-header">
													<div>
														<input type="radio"name="inlineRadio" id="inlineRadio3" value="option1">  <span
															id="proIcon">대표업적</span>
													</div>
													<div class="col-sm-4"></div>
												</li>
												<li class="list-group-item" style="height: 100px;">
													<div>
														<img
															src="https://img.icons8.com/windows/64/000000/music.png" />
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>농구왕</span>
													</div>
												</li>
												<li class="list-group-item">
													<div class="progress graph">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
															style="width: 100%; min-width: 2em;">
															<span>100%</span>
														</div>
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>10/10</span>
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>농구하기 10 연승</span>
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>(20-07-01)</span>
													</div>
												</li>
											</ul>
										</div>
										<div class="col-sm-4 col-xs-4" id="tailAchievement4" name="tailAchievement4">
											<ul class="list-group">
												<li class="list-group-item board-header">
													<div>
														<input type="radio"name="inlineRadio" id="inlineRadio4" value="option1"> <span
															id="proIcon">대표업적</span>
													</div>
													<div class="col-sm-4"></div>
												</li>
												<li class="list-group-item" style="height: 100px;">
													<div>
														<img
															src="https://img.icons8.com/windows/64/000000/music.png" />
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>농구왕</span>
													</div>
												</li>
												<li class="list-group-item">
													<div class="progress graph">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
															style="width: 100%; min-width: 2em;">
															<span>100%</span>
														</div>
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>10/10</span>
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>농구하기 10 연승</span>
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>(20-07-01)</span>
													</div>
												</li>
											</ul>
										</div>
										<div class="col-sm-4 col-xs-4"  id="tailAchievement5" name="tailAchievement5">
											<ul class="list-group">
												<li class="list-group-item board-header">
													<div>
														<input type="radio"name="inlineRadio" id="inlineRadio5" value="option1"> <span
															id="proIcon">대표업적</span>
													</div>
													<div class="col-sm-4"></div>
												</li>
												<li class="list-group-item" style="height: 100px;">
													<div>
														<img
															src="https://img.icons8.com/windows/64/000000/music.png" />
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>농구왕</span>
													</div>
												</li>
												<li class="list-group-item">
													<div class="progress graph">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
															style="width: 100%; min-width: 2em;">
															<span>100%</span>
														</div>
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>10/10</span>
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>농구하기 10 연승</span>
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>(20-07-01)</span>
													</div>
												</li>
											</ul>
										</div>
										<div class="col-sm-4 col-xs-4" id="tailAchievement6" name="tailAchievement6">
											<ul class="list-group">
												<li class="list-group-item board-header">
													<div>
														<input type="radio"name="inlineRadio" id="inlineRadio6" value="option1"> 
														<span
															id="proIcon">대표업적</span>
													</div>
													<div class="col-sm-4"></div>
												</li>
												<li class="list-group-item" style="height: 100px;">
													<div>
														<img
															src="https://img.icons8.com/windows/64/000000/music.png" />
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>농구왕</span>
													</div>
												</li>
												<li class="list-group-item">
													<div class="progress graph">
														<div class="progress-bar" role="progressbar"
															aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
															style="width: 100%; min-width: 2em;">
															<span>100%</span>
														</div>
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>10/10</span>
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>농구하기 10 연승</span>
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>(20-07-01)</span>
													</div>
												</li>
											</ul>
										</div>

									</div>


								</div>


								<div class="row">
									<div class="col-sm-3 col-xs-3"></div>
									<div class="col-sm-6 col-xs-2">
										<button class="btn btn-default btn-submit btn-block" type="button">대표업적등록</button>
									</div>
									<div class="col-sm-3 col-xs-3"></div>
								</div>
								<div class="col-md-1"></div>
								<div class="row" style="text-align: center;">
									<ul class="pagination">
										<!-- li태그의 클래스에 disabled를 넣으면 마우스를 위에 올렸을 때 클릭 금지 마크가 나오고 클릭도 되지 않는다.-->
										<!-- disabled의 의미는 앞의 페이지가 존재하지 않다는 뜻이다. -->
										<li class="disabled"><a href="#"> <span>«</span></a></li>
										<li><a href="#"> <span>»</span></a></li>
									</ul>
								</div>
							</div>
							
							


						</div>
						<div class="col-md-2"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<c:import url="../base/Footer.jsp"></c:import>
</body>
</html>