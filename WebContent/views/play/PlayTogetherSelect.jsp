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
<link rel="stylesheet" href="<%=cp %>/css/board.css" />
<link rel="stylesheet" href="<%=cp %>/css/default.css" />
<style type="text/css">
.radio {
	vertical-align: baseline;
	padding-bottom: 4px;
}

.time-ridio {
	margin-bottom: 7px;
}

.end-time {
	margin: 7px auto 7px auto;
	vertical-align: baseline;
}

.map-container {
	width: 450px;
	height: 500px;
	background-color: gray;
}

.btn-mapSearch {
	padding-left: 0px;
}

.satisfy {
	text-align: center;
}

.courtInfo {
	font-weight: bold;
}

.star-score {
	color: orange;
}

.btn-serach {
	padding: 0px 0px 0px 0px;
}

.list-header {
	color: white;
	background: orange;
	font-size: 130%;
}

.paging {
	text-align: center;
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
}

</style>
</head>
<body>

	<!-- 헤더 -->
		<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/PlaySubmenu.jsp"></c:import>

	<div class="container-fluid main">
		<div class="section-title container">
			<h5>농구하기 > 사용자선택 > 함께농구 조건 선택</h5>
			<hr />
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="row">
					<div class="col-md-12">
						<p class="title-text">모임 조건 설정</p>
						<br>
						<div class="row">
							<div class="col-md-3">
								<div class="panel panel-default">
									<div class="panel-heading panel-head">경기/일반 선택</div>
									<div class="panel-body">
										<label class="radio-inline radio"> <input type="radio"
											name="inlineRadioOptions" id="inlineRadio1" value="option1">
											경기
										</label> <label class="radio-inline radio"> <input
											type="radio" name="inlineRadioOptions" id="inlineRadio2"
											value="option2"> 일반
										</label>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading panel-head">날짜 선택</div>
									<div class="panel-body">
										<div class="input-group">
											<input type="text" class="form-control"
												placeholder="2020-07-07"> <span
												class="input-group-btn">
												<button class="btn btn-default calender" type="button">
													<span class="glyphicon glyphicon-calendar"></span>
												</button>
											</span>
										</div>
										<!-- /input-group -->

									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading panel-head">시간 선택</div>
									<div class="panel-body">
										<label class="radio-inline time-ridio"> <input
											type="radio" name="inlineRadioOptions" id="inlineRadio1"
											value="option1"> 오전
										</label> <label class="radio-inline time-ridio"> <input
											type="radio" name="inlineRadioOptions" id="inlineRadio2"
											value="option2"> 오후
										</label> <select class="form-control">
											<option value="">00:00</option>
										</select>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading panel-head">모집 종료 시간</div>
									<div class="panel-body">
										<div class="input-group">
											<input type="text" class="form-control"
												placeholder="2020-07-07"> <span
												class="input-group-btn">
												<button class="btn btn-default calender" type="button">
													<span class="glyphicon glyphicon-calendar"></span>
												</button>
											</span>
										</div>
										<!-- /input-group -->
										<label class="radio-inline end-time"> <input
											type="radio" name="inlineRadioOptions" id="inlineRadio1"
											value="option1"> 오전
										</label> <label class="radio-inline end-time"> <input
											type="radio" name="inlineRadioOptions" id="inlineRadio2"
											value="option2"> 오후
										</label> <select class="form-control">
											<option value="">00:00</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-md-9">
								<div class="panel panel-default">
									<div class="panel-heading panel-head">모임 장소 선택</div>
									<div class="panel-body">
										<div class="col-md-4">
											<select name="" id="" class="form-control">
												<option value="">광역시·도</option>
											</select>
										</div>
										<div class="col-md-4">
											<select name="" id="" class="form-control">
												<option value="">시·군·구</option>
											</select>
										</div>
										<div class="col-md-2 btn-mapSearch">
											<button class="btn btn-default btn-md btn-block">
												지도검색 <span class="glyphicon glyphicon-map-marker"></span>
											</button>
										</div>
										<div class="col-md-2">
											<label class="checkbox-inline radio"> <input
												type="checkbox" name="inlineCheckOptions" id="inlineRadio2"
												value="option2"> 홈코트
											</label>
										</div>
									</div>
								</div>

								<div class="panel panel-default">
									<div class="panel-heading panel-head">지도 선택</div>
									<div class="panel-body">
										<div class="col-md-8 map-container">지도영역</div>
										<div class="col-md-4">
											<h4>코트 정보</h4>
											<ul class="list-group">
												<li class="list-group-item">
													<div class="col-md-7 courtInfo"><span class="">코트이름</span></div>
													<p>아맞네</p>
												</li>
												<li class="list-group-item">
													<div class="col-md-7 courtInfo"><span class="">적정인원</span></div>
													<p>4~8</p>
												</li>
												<li class="list-group-item">
													<div class="col-md-7 courtInfo"><span class="">코트등급</span></div>
													<p>B</p>
												</li>
												<li class="list-group-item satisfy">
													<div class="col-md-12 courtInfo"><span class="">만족도</span></div> <span
													class="star-score">★★★☆☆</span>
												</li>
											</ul>
											<h4>코트 시설</h4>
											<ul class="list-group">
												<li class="list-group-item">
													<div class="col-md-7 courtInfo"><span class="">화장실</span></div> <span
													class="glyphicon glyphicon-ok-sign"></span>
												</li>
												<li class="list-group-item">
													<div class="col-md-7 courtInfo"><span class="">샤워실</span></div> <span
													class="glyphicon glyphicon-remove-sign"></span>
												</li>
												<li class="list-group-item">
													<div class="col-md-7 courtInfo"><span class="">주차장</span></div> <span
													class="glyphicon glyphicon-remove-sign"></span>
												</li>
											</ul>

											<div class="col-md-12 btn-serach">
												<button class="btn btn-default btn-block btn-lg">
													함께농구 검색</button>
												<button class="btn btn-default btn-block btn-lg">
													함께농구 개설</button>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- <div class="col-md-1"></div> -->
		<hr />

		<!-- 모임 목록 -->
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row top">
							<div class="col-md-12">
								<p class="subtitle-text">모임 목록</p>
								<hr>
							</div>
						</div>
						<ul class="list-group">
							<li class="list-group-item board-body board-header">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>번호</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>제목</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>주장</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>장소</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>일시</span>
									</div>	
									<div class="col-md-1 col-xs-1">
										<span>인원</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>1</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>안녕하십니까 한판합시다</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>아맞네짱</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>서울 마포구 쌍용코트</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020-07-17 12:00</span>
									</div>	
									<div class="col-md-1 col-xs-1">
										<span>3/4</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>1</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>안녕하십니까 한판합시다</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>아맞네짱</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>서울 마포구 쌍용코트</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020-07-17 12:00</span>
									</div>	
									<div class="col-md-1 col-xs-1">
										<span>3/4</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>1</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>안녕하십니까 한판합시다</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>아맞네짱</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>서울 마포구 쌍용코트</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020-07-17 12:00</span>
									</div>	
									<div class="col-md-1 col-xs-1">
										<span>3/4</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>1</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>안녕하십니까 한판합시다</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>아맞네짱</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>서울 마포구 쌍용코트</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020-07-17 12:00</span>
									</div>	
									<div class="col-md-1 col-xs-1">
										<span>3/4</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>1</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>안녕하십니까 한판합시다</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>아맞네짱</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>서울 마포구 쌍용코트</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020-07-17 12:00</span>
									</div>	
									<div class="col-md-1 col-xs-1">
										<span>3/4</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>1</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>안녕하십니까 한판합시다</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>아맞네짱</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>서울 마포구 쌍용코트</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020-07-17 12:00</span>
									</div>	
									<div class="col-md-1 col-xs-1">
										<span>3/4</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>1</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>안녕하십니까 한판합시다</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>아맞네짱</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>서울 마포구 쌍용코트</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020-07-17 12:00</span>
									</div>	
									<div class="col-md-1 col-xs-1">
										<span>3/4</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>1</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>안녕하십니까 한판합시다</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>아맞네짱</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>서울 마포구 쌍용코트</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020-07-17 12:00</span>
									</div>	
									<div class="col-md-1 col-xs-1">
										<span>3/4</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>1</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>안녕하십니까 한판합시다</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>아맞네짱</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>서울 마포구 쌍용코트</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020-07-17 12:00</span>
									</div>	
									<div class="col-md-1 col-xs-1">
										<span>3/4</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>1</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>안녕하십니까 한판합시다</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>아맞네짱</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>서울 마포구 쌍용코트</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020-07-17 12:00</span>
									</div>	
									<div class="col-md-1 col-xs-1">
										<span>3/4</span>
									</div>
								</div>
							</li>	
						</ul>
						
						<div class="row"> 
						<div class="col-md-12  right-btn">
								<button class="btn btn-default btn-link" type="submit">모임 개설</button>
						</div>	
						</div>
						
							
						</div>
						
						<div class="row">
							<div class="col-md-4"></div>
							<div class="col-md-4 paging">
								<ul class="pagination">
									<li class="disabled"><a href="#"> <span>«</span>
									</a></li>
									<li class="active"><a href="#" class="select-page">1</a></li>
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
						<div class="row">
							<div class="col-md-12"></div>
						</div>
					</div>
					<div class="col-md-2"></div>
				</div>
			</div>
	</div>


	<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>