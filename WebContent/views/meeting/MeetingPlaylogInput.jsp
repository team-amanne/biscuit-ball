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
<title>BiscuitBail > 플레이로그입력</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" href="<%=cp%>/css/board.css" />

<style type="text/css">
.info-title {
	font-size: 12pt;
	font-weight: bold;
	/* text-align: center; */
	padding-left: 0px;
	padding-right: 0px;
}

.eval-user {
	height: 30px;
	color: orange;
	font-size: 8pt;
	width: 100px;
	margin-left: 30px;
	font-family: "Font Awesome 5 Free";
	font-weight: 900;
}


.user-info {
	text-align: center;
}

.btn_action {
	text-align: center;
}
</style>

</head>
<body>

		<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/PlaySubmenu.jsp"></c:import>

	<div class="container-fluid main">
		<div class="section-title container">
			<h5></h5>
			<hr />
		</div>
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<div class="row">
					<div class="col-md-12">
						<div class="col-md-10">
							<h3>플레이로그</h3>
						</div>
						<div class="col-md-2"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-body">
								<div class="panel panel-default">
									<div class="panel-body center-move">
										<div class="col-md-6">
											<div class="col-md-4 info-title">
												<span>제목</span>
											</div>
											<div class="col-md-6">제목입니다아</div>
										</div>
										<div class="col-md-3">
											<div class="col-md-4 info-title">
												<span>주장</span>
											</div>
											<div class="col-md-8">아맞네</div>
										</div>
										<div class="col-md-3">
											<div class="col-md-6 info-title">
												<span>인원</span>
											</div>
											<div class="col-md-6">4명</div>
										</div>

									</div>
								</div>

								<h4>모임 정보</h4>

								<div class="panel panel-default">
									<div class="panel-body center-move">
										<div class="col-md-6">
											<div class="col-md-4 info-title">
												<span>시합</span>
											</div>
											<div class="col-md-8">일반</div>
										</div>
										<div class="col-md-6">
											<div class="col-md-4 info-title">
												<span>장소</span>
											</div>
											<div class="col-md-8">서울 마포구 아맞네 코트</div>
										</div>
										<div class="col-md-6">
											<div class="col-md-4 info-title">
												<span>시작일시</span>
											</div>
											<div class="col-md-8">2020-07-10 12:00</div>
										</div>

										<div class="col-md-6">
											<div class="col-md-4 info-title">
												<span>종료일시</span>
											</div>
											<div class="col-md-8">2020-07-10 14:00</div>
										</div>

									</div>
								</div>


								<h4>참여자 정보</h4>

								<ul class="list-group">
							<li class="list-group-item board-body board-header">
								<div class="row">															
									<div class="col-sm-4 col-xs-4">
										<span>닉네임</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span>티어</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span>페어플레이 점수</span>
									</div>
										
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-4 col-xs-4">
										<span>아맞네</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span>2Level</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star-half"></span>
									</div>
										
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-4 col-xs-4">
										<span>아맞네</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span>2Level</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star-half"></span>
									</div>
										
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-4 col-xs-4">
										<span>아맞네</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span>2Level</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span class="fa fa-star star-score"></span>
										<span class="fa fa-star star-score"></span>
										<span class="fa fa-star star-score"></span>
										<span class="fa fa-star-half star-score"></span>
									</div>
										
								</div>
							</li>
								
						</ul>

								<p class="subtitle-text">플레이로그 입력</p>
								<ul class="list-group">
									<li class="list-group-item board-body board-header">
										<div class="row">
											<div class="col-sm-4 col-xs-4">
												<span>닉네임</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>실력평가</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>페어플레이 평가</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">
											<div class="col-sm-4 col-xs-4">
												<span>아맞네</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<select name="" id="" class="form-control">
													<option value="">UP</option>
													<option value="">SAME</option>
													<option value="">DOWN</option>
												</select>
											</div>
											<div class="col-sm-4 col-xs-4">
												<div id="half-stars-example">
													<div id="half-stars-example">
														<div class="rating-group">
															<input class="rating__input rating__input--none" checked
																name="rating2" id="rating2-0" value="0" type="radio">
															<label aria-label="0 stars" class="rating__label"
																for="rating2-0">&nbsp;</label> <label
																aria-label="0.5 stars"
																class="rating__label rating__label--half"
																for="rating2-05"><i
																class="rating__icon rating__icon--star fa fa-star-half"></i></label>
															<input class="rating__input" name="rating2"
																id="rating2-05" value="0.5" type="radio"> <label
																aria-label="1 star" class="rating__label"
																for="rating2-10"><i
																class="rating__icon rating__icon--star fa fa-star"></i></label>
															<input class="rating__input" name="rating2"
																id="rating2-10" value="1" type="radio"> <label
																aria-label="1.5 stars"
																class="rating__label rating__label--half"
																for="rating2-15"><i
																class="rating__icon rating__icon--star fa fa-star-half"></i></label>
															<input class="rating__input" name="rating2"
																id="rating2-15" value="1.5" type="radio"> <label
																aria-label="2 stars" class="rating__label"
																for="rating2-20"><i
																class="rating__icon rating__icon--star fa fa-star"></i></label>
															<input class="rating__input" name="rating2"
																id="rating2-20" value="2" type="radio"> <label
																aria-label="2.5 stars"
																class="rating__label rating__label--half"
																for="rating2-25"><i
																class="rating__icon rating__icon--star fa fa-star-half"></i></label>
															<input class="rating__input" name="rating2"
																id="rating2-25" value="2.5" type="radio" checked>
															<label aria-label="3 stars" class="rating__label"
																for="rating2-30"><i
																class="rating__icon rating__icon--star fa fa-star"></i></label>
															<input class="rating__input" name="rating2"
																id="rating2-30" value="3" type="radio"> <label
																aria-label="3.5 stars"
																class="rating__label rating__label--half"
																for="rating2-35"><i
																class="rating__icon rating__icon--star fa fa-star-half"></i></label>
															<input class="rating__input" name="rating2"
																id="rating2-35" value="3.5" type="radio"> <label
																aria-label="4 stars" class="rating__label"
																for="rating2-40"><i
																class="rating__icon rating__icon--star fa fa-star"></i></label>
															<input class="rating__input" name="rating2"
																id="rating2-40" value="4" type="radio"> <label
																aria-label="4.5 stars"
																class="rating__label rating__label--half"
																for="rating2-45"><i
																class="rating__icon rating__icon--star fa fa-star-half"></i></label>
															<input class="rating__input" name="rating2"
																id="rating2-45" value="4.5" type="radio"> <label
																aria-label="5 stars" class="rating__label"
																for="rating2-50"><i
																class="rating__icon rating__icon--star fa fa-star"></i></label>
															<input class="rating__input" name="rating2"
																id="rating2-50" value="5" type="radio">
														</div>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">
											<div class="col-sm-4 col-xs-4">
												<span>규쿤</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<select name="" id="" class="form-control">
													<option value="">UP</option>
													<option value="">SAME</option>
													<option value="">DOWN</option>
												</select>
											</div>
											<div class="col-sm-4 col-xs-4">
												<div id="half-stars-example">
    <div class="rating-group">
        <input class="rating__input rating__input--none" checked name="rating2_1" id="rating2-0_1" value="0" type="radio">
        <label aria-label="0 stars" class="rating__label" for="rating2-0_1">&nbsp;</label>
        <label aria-label="0.5 stars" class="rating__label rating__label--half" for="rating2-05_1"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
        <input class="rating__input" name="rating2_1" id="rating2-05_1" value="0.5" type="radio">
        <label aria-label="1 star" class="rating__label" for="rating2-10_1"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
        <input class="rating__input" name="rating2_1" id="rating2-10_1" value="1" type="radio">
        <label aria-label="1.5 stars" class="rating__label rating__label--half" for="rating2-15_1"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
        <input class="rating__input" name="rating2_1" id="rating2-15_1" value="1.5" type="radio">
        <label aria-label="2 stars" class="rating__label" for="rating2-20_1"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
        <input class="rating__input" name="rating2_1" id="rating2-20_1" value="2" type="radio">
        <label aria-label="2.5 stars" class="rating__label rating__label--half" for="rating2-25_1"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
        <input class="rating__input" name="rating2_1" id="rating2-25_1" value="2.5" type="radio" checked>
        <label aria-label="3 stars" class="rating__label" for="rating2-30_1"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
        <input class="rating__input" name="rating2_1" id="rating2-30_1" value="3" type="radio">
        <label aria-label="3.5 stars" class="rating__label rating__label--half" for="rating2-35_1"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
        <input class="rating__input" name="rating2_1" id="rating2-35_1" value="3.5" type="radio">
        <label aria-label="4 stars" class="rating__label" for="rating2-40_1"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
        <input class="rating__input" name="rating2_1" id="rating2-40_1" value="4" type="radio">
        <label aria-label="4.5 stars" class="rating__label rating__label--half" for="rating2-45_1"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
        <input class="rating__input" name="rating2_1" id="rating2-45_1" value="4.5" type="radio">
        <label aria-label="5 stars" class="rating__label" for="rating2-50_1"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
        <input class="rating__input" name="rating2_1" id="rating2-50_1" value="5" type="radio">
    </div>
</div>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">
											<div class="col-sm-4 col-xs-4">
												<span>성철쓰</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<select name="" id="" class="form-control">
													<option value="">UP</option>
													<option value="">SAME</option>
													<option value="">DOWN</option>
												</select>
											</div>
											<div class="col-sm-4 col-xs-4">
												
												<div id="half-stars-example">

    <div class="rating-group">
    	<!-- 한 페이지에 여러번 사용할 경우 name, id(label for="") 바꿔주세요 -->
        <input class="rating__input rating__input--none" checked name="rating3" id="rating2-0_2" value="0" type="radio">
        <label aria-label="0 stars" class="rating__label" for="rating2-0_2">&nbsp;</label>
        
        <label aria-label="0.5 stars" class="rating__label rating__label--half" for="rating2-05_2">
        	<i class="rating__icon rating__icon--star fa fa-star-half"></i>
        </label>
        <input class="rating__input" name="rating3" id="rating2-05_2" value="0.5" type="radio">
        
        <label aria-label="1 star" class="rating__label" for="rating2-10_2">
        	<i class="rating__icon rating__icon--star fa fa-star"></i>
        </label>
        <input class="rating__input" name="rating3" id="rating2-10_2" value="1" type="radio">
        
        <label aria-label="1.5 stars" class="rating__label rating__label--half" for="rating2-15_2">
        	<i class="rating__icon rating__icon--star fa fa-star-half"></i>
        </label>
        <input class="rating__input" name="rating3" id="rating2-15_2" value="1.5" type="radio">
        
        <label aria-label="2 stars" class="rating__label" for="rating2-20_2">
        	<i class="rating__icon rating__icon--star fa fa-star"></i>
        </label>
        <input class="rating__input" name="rating3" id="rating2-20_2" value="2" type="radio">
        
        <label aria-label="2.5 stars" class="rating__label rating__label--half" for="rating2-25_2">
        	<i class="rating__icon rating__icon--star fa fa-star-half"></i>
        </label>
        <input class="rating__input" name="rating3" id="rating2-25_2" value="2.5" type="radio" checked>
        
        <label aria-label="3 stars" class="rating__label" for="rating2-30_2">
        	<i class="rating__icon rating__icon--star fa fa-star"></i>
        </label>
        <input class="rating__input" name="rating3" id="rating2-30_2" value="3" type="radio">
        
        <label aria-label="3.5 stars" class="rating__label rating__label--half" for="rating2-35_2">
        	<i class="rating__icon rating__icon--star fa fa-star-half"></i>
        </label>
        <input class="rating__input" name="rating3" id="rating2-35_2" value="3.5" type="radio">
        
        <label aria-label="4 stars" class="rating__label" for="rating2-40_2">
        	<i class="rating__icon rating__icon--star fa fa-star"></i>
        </label>
        <input class="rating__input" name="rating3" id="rating2-40_2" value="4" type="radio">
        
        <label aria-label="4.5 stars" class="rating__label rating__label--half" for="rating2-45_2">
        	<i class="rating__icon rating__icon--star fa fa-star-half"></i>
        </label>
        <input class="rating__input" name="rating3" id="rating2-45_2" value="4.5" type="radio">
        
        <label aria-label="5 stars" class="rating__label" for="rating2-50_2">
        	<i class="rating__icon rating__icon--star fa fa-star"></i>
        </label>
        <input class="rating__input" name="rating3" id="rating2-50_2" value="5" type="radio">
        
    </div>
</div>
												
											</div>
										</div>
									</li>

								</ul>


								<div class="btn_action">
									<button class="btn btn-default btn-lg btn-submit">입력완료</button>
									<button class="btn btn-default btn-lg">목록으로</button>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3"></div>
		</div>
	</div>



	<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>