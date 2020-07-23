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
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" href="<%=cp%>/css/board.css" />
<style type="text/css">
.info-header {
	font-size: 14pt;
	color: orange;
	font-weight: bold;
}

.title {
	font-size: 14pt;
}

.radio-btn {
	margin-top: 5px;
}
</style>
</head>
<body>

		<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/BattleSubmenu.jsp"></c:import>


	<div class="container-fuild main">
		<div class="section-title container">
			대전 > 플레이로그 > 플레이로그 입력
			<hr />
		</div>
		<div class="col-md-2"></div>
		<div class="col-md-8 col-xs-8">
			<p class="subtitle-text">대전 플레이로그 입력 - 리더</p>
			<hr />
			<div class="col-md-12 col-xs-12">
				<ul class="list-group">
					<li class="list-group-item board-body">
						<div class="row">
							<div class="col-sm-3 col-xs-3">
								<span class="info-header">대전번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</span>
								<span>123</span>
							</div>
							<div class="col-sm-3 col-xs-3">
								<span class="info-header">상대
									크루&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</span> <span>아맞네</span>
							</div>
							<div class="col-sm-3 col-xs-3">
								<span class="info-header">장소&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</span>
								<span>서울 마포구 연남코트</span>
							</div>
							<div class="col-sm-3 col-xs-3">
								<span class="info-header">경기
									방식&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</span> <span>3 on 3</span>
							</div>
						</div>
					</li>
				</ul>
			</div>

			<div class="col-md-12 col-xs-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<p class="title">경기 결과</p>


						<ul class="list-group">
							<li class="list-group-item board-body">
								<div class="row">
									<div class="col-sm-2 col-xs-2">
										<span class="info-header">승리팀&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</span>
									</div>
									<div class="col-sm-2 col-xs-2">
										<label for="myCrew" class="radio-inline">규쿤네
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"
											name="winner" id="myCrew" value="" class="radio-inline">
										</label>
									</div>
									<div class="col-sm-2 col-xs-2">
										<label for="rivalCrew" class="radio-inline">아맞네
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"
											name="winner" id="rivalCrew" value="" class="radio-inline">
										</label>
									</div>
									<div class="col-sm-2 col-xs-2">
										<label for="sameScore" class="radio-inline">무승부
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"
											name="winner" id="sameScore" value="" class="radio-inline">
										</label>
									</div>
								</div>
							</li>
						</ul>

						<p class="title">페어플레이 점수 입력</p>


						<ul class="list-group">
							<li class="list-group-item board-body">
								<div class="row">
									<div class="col-sm-2 col-xs-2">
										<span class="info-header">상대 크루&nbsp;&nbsp;&nbsp;|</span>
									</div>

									<div class="col-sm-2 col-xs-2">
										<span>아맞네</span>
									</div>

									<div class="col-sm-2 col-xs-2">
										<!-- 별점평가  -->
										<div id="half-stars-example">

											<div class="rating-group">
												<!-- 한 페이지에 여러번 사용할 경우 name, id(label for="") 바꿔주세요 -->
												<input class="rating__input rating__input--none" checked
													name="rival-fps" id="rival-fps-0" value="0" type="radio">
												<label aria-label="0 stars" class="rating__label"
													for="rival-fps-0">&nbsp;</label> <label
													aria-label="0.5 stars"
													class="rating__label rating__label--half"
													for="rival-fps-05"> <i
													class="rating__icon rating__icon--star fa fa-star-half"></i>
												</label> <input class="rating__input" name="rival-fps"
													id="rival-fps-05" value="0.5" type="radio"> <label
													aria-label="1 star" class="rating__label"
													for="rival-fps-10"> <i
													class="rating__icon rating__icon--star fa fa-star"></i>
												</label> <input class="rating__input" name="rival-fps"
													id="rival-fps-10" value="1" type="radio"> <label
													aria-label="1.5 stars"
													class="rating__label rating__label--half"
													for="rival-fps-15"> <i
													class="rating__icon rating__icon--star fa fa-star-half"></i>
												</label> <input class="rating__input" name="rival-fps"
													id="rival-fps-15" value="1.5" type="radio"> <label
													aria-label="2 stars" class="rating__label"
													for="rival-fps-20"> <i
													class="rating__icon rating__icon--star fa fa-star"></i>
												</label> <input class="rating__input" name="rival-fps"
													id="rival-fps-20" value="2" type="radio"> <label
													aria-label="2.5 stars"
													class="rating__label rating__label--half"
													for="rival-fps-25"> <i
													class="rating__icon rating__icon--star fa fa-star-half"></i>
												</label> <input class="rating__input" name="rival-fps"
													id="rival-fps-25" value="2.5" type="radio" checked>

												<label aria-label="3 stars" class="rating__label"
													for="rival-fps-30"> <i
													class="rating__icon rating__icon--star fa fa-star"></i>
												</label> <input class="rating__input" name="rival-fps"
													id="rival-fps-30" value="3" type="radio"> <label
													aria-label="3.5 stars"
													class="rating__label rating__label--half"
													for="rival-fps-35"> <i
													class="rating__icon rating__icon--star fa fa-star-half"></i>
												</label> <input class="rating__input" name="rival-fps"
													id="rival-fps-35" value="3.5" type="radio"> <label
													aria-label="4 stars" class="rating__label"
													for="rival-fps-40"> <i
													class="rating__icon rating__icon--star fa fa-star"></i>
												</label> <input class="rating__input" name="rival-fps"
													id="rival-fps-40" value="4" type="radio"> <label
													aria-label="4.5 stars"
													class="rating__label rating__label--half"
													for="rival-fps-45"> <i
													class="rating__icon rating__icon--star fa fa-star-half"></i>
												</label> <input class="rating__input" name="rival-fps"
													id="rival-fps-45" value="4.5" type="radio"> <label
													aria-label="5 stars" class="rating__label"
													for="rival-fps-50"> <i
													class="rating__icon rating__icon--star fa fa-star"></i>
												</label> <input class="rating__input" name="rival-fps"
													id="rival-fps-50" value="5" type="radio">

											</div>
										</div>

									</div>




								</div>
							</li>
						</ul>

						<ul class="list-group">
							<li class="list-group-item board-body">
								<div class="row">
									<div class="col-sm-2 col-xs-2">
										<span class="info-header">심판&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</span>
									</div>
									<div class="col-sm-2 col-xs-2">
										<span>규쿤네 </span>
									</div>

									<div class="col-sm-2 col-xs-2">

										<!-- Star rating 시작 -->
										<div id="half-stars-example">

											<div class="rating-group">
												<!-- 한 페이지에 여러번 사용할 경우 name, id(label for="") 바꿔주세요 -->
												<input class="rating__input rating__input--none" checked
													name="referee-fps" id="referee-fps-0" value="0"
													type="radio"> <label aria-label="0 stars"
													class="rating__label" for="referee-fps-0">&nbsp;</label> <label
													aria-label="0.5 stars"
													class="rating__label rating__label--half"
													for="referee-fps-05"> <i
													class="rating__icon rating__icon--star fa fa-star-half"></i>
												</label> <input class="rating__input" name="referee-fps"
													id="referee-fps-05" value="0.5" type="radio"> <label
													aria-label="1 star" class="rating__label"
													for="referee-fps-10"> <i
													class="rating__icon rating__icon--star fa fa-star"></i>
												</label> <input class="rating__input" name="referee-fps"
													id="referee-fps-10" value="1" type="radio"> <label
													aria-label="1.5 stars"
													class="rating__label rating__label--half"
													for="referee-fps-15"> <i
													class="rating__icon rating__icon--star fa fa-star-half"></i>
												</label> <input class="rating__input" name="referee-fps"
													id="referee-fps-15" value="1.5" type="radio"> <label
													aria-label="2 stars" class="rating__label"
													for="referee-fps-20"> <i
													class="rating__icon rating__icon--star fa fa-star"></i>
												</label> <input class="rating__input" name="referee-fps"
													id="referee-fps-20" value="2" type="radio"> <label
													aria-label="2.5 stars"
													class="rating__label rating__label--half"
													for="referee-fps-25"> <i
													class="rating__icon rating__icon--star fa fa-star-half"></i>
												</label> <input class="rating__input" name="referee-fps"
													id="referee-fps-25" value="2.5" type="radio" checked>

												<label aria-label="3 stars" class="rating__label"
													for="referee-fps-30"> <i
													class="rating__icon rating__icon--star fa fa-star"></i>
												</label> <input class="rating__input" name="referee-fps"
													id="referee-fps-30" value="3" type="radio"> <label
													aria-label="3.5 stars"
													class="rating__label rating__label--half"
													for="referee-fps-35"> <i
													class="rating__icon rating__icon--star fa fa-star-half"></i>
												</label> <input class="rating__input" name="referee-fps"
													id="referee-fps-35" value="3.5" type="radio"> <label
													aria-label="4 stars" class="rating__label"
													for="referee-fps-40"> <i
													class="rating__icon rating__icon--star fa fa-star"></i>
												</label> <input class="rating__input" name="referee-fps"
													id="referee-fps-40" value="4" type="radio"> <label
													aria-label="4.5 stars"
													class="rating__label rating__label--half"
													for="referee-fps-45"> <i
													class="rating__icon rating__icon--star fa fa-star-half"></i>
												</label> <input class="rating__input" name="referee-fps"
													id="referee-fps-45" value="4.5" type="radio"> <label
													aria-label="5 stars" class="rating__label"
													for="referee-fps-50"> <i
													class="rating__icon rating__icon--star fa fa-star"></i>
												</label> <input class="rating__input" name="referee-fps"
													id="referee-fps-50" value="5" type="radio">

											</div>
										</div>
										<!-- Strar rating 끝 -->

									</div>

								</div>
							</li>
						</ul>


						<p class="title">MVP 선정 - 상대 크루</p>

						<ul class="list-group">
							<li class="list-group-item board-body board-header">
								<div class="row">
									<div class="col-md-4 col-xs-4">
										<span>닉네임</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span>포지션</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span>MVP</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">
									<div class="col-md-4 col-xs-4">
										<span>아맞네</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span>PG</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<input type="radio" class="radio-inline" name="mvp-or-not">
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">
									<div class="col-md-4 col-xs-4">
										<span>아맞네</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span>PG</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<input type="radio" class="radio-inline" name="mvp-or-not">
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">
									<div class="col-md-4 col-xs-4">
										<span>아맞네</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span>PG</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<input type="radio" class="radio-inline" name="mvp-or-not">
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>


			</div>
			
			<div class="col-md-3 col-xs-3"></div>
			<div class="col-md-3 col-xs-3">
				<button class="btn btn-default btn-block btn-submit"> 입력 완료 </button>
			</div>
			<div class="col-md-3 col-xs-3">
				<button class="btn btn-default btn-block btn-link"> 플레이로그 목록 </button>
			</div>
			<div class="col-md-3 col-xs-3"></div>
		</div>
		<div class="col-md-2"></div>
	</div>


	<br style="clear: both;" />

	<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>