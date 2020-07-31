<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<title>크루멤버관리</title>

<style type="text/css">
.panel-body {
	height: 50px;
}

.subtitle-text {
	font-weight: bold;
}

.crew-name {
	font-size: 130%;
	padding-top: 5px;
}

.crew-leader {
	color: blue;
	display: none;
}

.member-profile {
	text-align: center;
}
</style>

<!-- 부트스트랩/제이쿼리 -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
   href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" href="<%=cp%>/css/board.css" />
</head>

<body>
	<!-- 헤더 -->
	<c:import url="../base/Header.jsp"></c:import>
	<!-- 서브메뉴 -->
	<!-- 서브메뉴는 기능별(농구하기/코트검색/크루/...)로 복사해서 만들어두고 import 할 것 -->
	<c:import url="../base/CrewSubmenu.jsp"></c:import>
	<!-- 메인 -->
	<div class="main container-fluid">
		<div class="section-title container">
			<span>크루 > 크루 관리 > 크루멤버관리</span>
			<hr />
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row">
							<div class="col-md-12">
								<span class="subtitle-text">크루멤버관리</span>
								<label class="text-orange">5</label>
								<label>/10명</label>								<p></p>
								<hr>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12"></div>
						</div>
						<div class="row">

							<div class="panel panel-default">
								<div class="row panel-body">
									<div class="col-sm-2 col-xs-2 member-profile">
										<div class="row">
											<img src="<%=cp%>/views/img/UserProfile.jpg" height="50px;"
												width="50px;" />
										</div>
										<div class="row">
											<span class="fas fa-crown text-orange"></span>
											<label class="crew-leader" style="display:inline;">
												리더
											</label>
										</div>
									</div>
									<div class="col-sm-3 col-xs-4">
										<span class="subtitle-text">시골영감</span> <span>(</span> <label
											class="text-orange">33세</label> <span>)</span>
									</div>
									<div class="col-sm-3 col-xs-4 subtitle-text">
										<span>실력 ｜ </span> <label class="text-orange subtitle-text">LV.3</label>
									</div>
									<div class="col-sm-4 col-xs-6 subtitle-text">
										<span>페어플레이점수 ｜ </span> <label
											class="text-orange subtitle-text">4.8</label>
									</div>

								</div>
								<hr>
								<div class="row panel-body">
									<div class="col-sm-3 col-xs-3">
										<span>가입날짜 ｜ </span> <span>2020/07/17</span>
									</div>
									<div class="col-sm-6 col-xs-6"></div>
									<div class="col-sm-3 col-xs-3 ">
										<button type="button" class="btn btn-default btn-danger"
										style="display:none;">
											추방
										</button>
										<button type="button" class="btn btn-default btn-submit"
										style="display:none;">
											리더위임
										</button>
									</div>

								</div>

							</div>





							<div class="panel panel-default">
								<div class="row panel-body">
									<div class="col-sm-2 col-xs-2 member-profile">
										<div class="row">
											<img src="<%=cp%>/views/img/UserProfile.jpg" height="50px;"
												width="50px;" />
										</div>
										<div class="row">
											<label class="crew-leader">리더</label>
										</div>
									</div>
									<div class="col-sm-3 col-xs-4">
										<span class="subtitle-text">시골영감</span> <span>(</span> <label
											class="text-orange">33세</label> <span>)</span>
									</div>
									<div class="col-sm-3 col-xs-4 subtitle-text">
										<span>실력 ｜ </span> <label class="text-orange subtitle-text">LV.3</label>
									</div>
									<div class="col-sm-4 col-xs-6 subtitle-text">
										<span>페어플레이점수 ｜ </span> <label
											class="text-orange subtitle-text">4.5</label>
									</div>

								</div>
								<hr>
								<div class="row panel-body">
									<div class="col-sm-3 col-xs-3">
										<span>가입날짜 ｜ </span> <span>2020/07/17</span>
									</div>
									<div class="col-sm-6 col-xs-6"></div>
									<div class="col-sm-3 col-xs-3 ">
										<button type="button" class="btn btn-default btn-danger">
											추방
										</button>
										<button type="button" class="btn btn-default btn-submit"
										style="display:inline;">
											리더위임
										</button>
									</div>

								</div>

							</div>





							<div class="panel panel-default">
								<div class="row panel-body">
									<div class="col-sm-2 col-xs-2 member-profile">
										<div class="row">
											<img src="<%=cp%>/views/img/UserProfile.jpg" height="50px;"
												width="50px;" />
										</div>
										<div class="row">
											<label class="crew-leader">리더</label>
										</div>
									</div>
									<div class="col-sm-3 col-xs-4">
										<span class="subtitle-text">시골영감</span> <span>(</span> <label
											class="text-orange">33세</label> <span>)</span>
									</div>
									<div class="col-sm-3 col-xs-4 subtitle-text">
										<span>실력 ｜ </span> <label class="text-orange subtitle-text">LV.3</label>
									</div>
									<div class="col-sm-4 col-xs-6 subtitle-text">
										<span>페어플레이점수 ｜ </span> <label
											class="text-orange subtitle-text">3.0</label>
									</div>

								</div>
								<hr>
								<div class="row panel-body">
									<div class="col-sm-3 col-xs-3">
										<span>가입날짜 ｜ </span> <span>2020/07/17</span>
									</div>
									<div class="col-sm-6 col-xs-6"></div>
									<div class="col-sm-3 col-xs-3 ">
										<button type="button" class="btn btn-default btn-danger">
											추방
										</button>
										<button type="button" class="btn btn-default btn-submit"
										style="display:none;">
											리더위임
										</button>
									</div>

								</div>

							</div>


							<div class="panel panel-default">
								<div class="row panel-body">
									<div class="col-sm-2 col-xs-2 member-profile">
										<div class="row">
											<img src="<%=cp%>/views/img/UserProfile.jpg" height="50px;"
												width="50px;" />
										</div>
										<div class="row">
											<label class="crew-leader">리더</label>
										</div>
									</div>
									<div class="col-sm-3 col-xs-4">
										<span class="subtitle-text">동수</span> <span>(</span> <label
											class="text-orange">33세</label> <span>)</span>
									</div>
									<div class="col-sm-3 col-xs-4 subtitle-text">
										<span>실력 ｜ </span> <label class="text-orange subtitle-text">LV.3</label>
									</div>
									<div class="col-sm-4 col-xs-6 subtitle-text">
										<span>페어플레이점수 ｜ </span> <label
											class="text-orange subtitle-text">4.5</label>
									</div>

								</div>
								<hr>
								<div class="row panel-body">
									<div class="col-sm-3 col-xs-3">
										<span>가입날짜 ｜ </span> <span>2020/07/17</span>
									</div>
									<div class="col-sm-6 col-xs-6"></div>
									<div class="col-sm-3 col-xs-3 ">
										<button type="button" class="btn btn-default btn-danger">
											추방
										</button>
										<button type="button" class="btn btn-default btn-submit"
										style="display:inline;">
											리더위임
										</button>
									</div>

								</div>

							</div>


							<div class="panel panel-default">
								<div class="row panel-body">
									<div class="col-sm-2 col-xs-2 member-profile">
										<div class="row">
											<img src="<%=cp%>/views/img/UserProfile.jpg" height="50px;"
												width="50px;" />
										</div>
										<div class="row">
											<label class="crew-leader">리더</label>
										</div>
									</div>
									<div class="col-sm-3 col-xs-4">
										<span class="subtitle-text">동규길</span> <span>(</span> <label
											class="text-orange">20세</label> <span>)</span>
									</div>
									<div class="col-sm-3 col-xs-4 subtitle-text">
										<span>실력 ｜ </span> <label class="text-orange subtitle-text">LV.3</label>
									</div>
									<div class="col-sm-4 col-xs-6 subtitle-text">
										<span>페어플레이점수 ｜ </span> <label
											class="text-orange subtitle-text">3.2</label>
									</div>

								</div>
								<hr>
								<div class="row panel-body">
									<div class="col-sm-3 col-xs-3">
										<span>가입날짜 ｜ </span> <span>2020/07/17</span>
									</div>
									<div class="col-sm-6 col-xs-6"></div>
									<div class="col-sm-3 col-xs-3 ">
										
										<button type="button" class="btn btn-default btn-danger">
											추방
										</button>
										<button type="button" class="btn btn-default btn-submit"
										style="display:none;">
											리더위임
										</button>
									</div>

								</div>

							</div>

						<hr>
						
						
						<!-- 가입신청 -->
						<div class="row">
							<div class="col-sm-10 col-xs-10">
								<span class="subtitle-text">크루가입신청 관리</span>
															</div>
							<div class="col-sm-2 col-xs-2">
								<button class="btn btn-default btn-block btn-link">크루 초대</button>
								<hr>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12"></div>
						</div>
						<div class="row">

							<div class="panel panel-default">
								<div class="row panel-body">
									<div class="col-sm-2 col-xs-2 member-profile">
										<div class="row">
											<img src="<%=cp%>/views/img/UserProfile.jpg" height="50px;"
												width="50px;" />
										</div>										
									</div>
									<div class="col-sm-3 col-xs-4">
										<span class="subtitle-text">도시초보</span> <span>(</span> <label
											class="text-orange">23세</label> <span>)</span>
									</div>
									<div class="col-sm-3 col-xs-4 subtitle-text">
										<span>실력 ｜ </span> <label class="text-orange subtitle-text">LV.1</label>
									</div>
									<div class="col-sm-4 col-xs-6 subtitle-text">
										<span>페어플레이점수 ｜ </span> <label
											class="text-orange subtitle-text">4.1</label>
									</div>

								</div>
								<hr>
								<div class="row panel-body">
									<div class="col-sm-3 col-xs-2">
										<span>가입신청날짜 ｜ </span> <span>2020/07/17</span>
									</div>
									<div class="col-sm-2 col-xs-4">
										<label>주 포지션 ｜ </label> <label>Center </label>
									</div>
									<div class="col-sm-2 col-xs-2">
										<label>키 ｜ </label> <label>180</label>
									</div>
									<div class="col-sm-2">
									</div>
									<div class="col-sm-3 col-xs-4">
										<button type="button" class="btn btn-default btn-danger"
										style="display:inline;">
											거절
										</button>
										<button type="button" class="btn btn-default btn-submit"
										style="display:inlint;">
											수락
										</button>
									</div>

								</div>

							</div>
							
							
							
							<div class="panel panel-default">
								<div class="row panel-body">
									<div class="col-sm-2 col-xs-2 member-profile">
										<div class="row">
											<img src="<%=cp%>/views/img/UserProfile.jpg" height="50px;"
												width="50px;" />
										</div>										
									</div>
									<div class="col-sm-3 col-xs-4">
										<span class="subtitle-text">시골장인</span> <span>(</span> <label
											class="text-orange">43세</label> <span>)</span>
									</div>
									<div class="col-sm-3 col-xs-4 subtitle-text">
										<span>실력 ｜ </span> <label class="text-orange subtitle-text">LV.5</label>
									</div>
									<div class="col-sm-4 col-xs-6 subtitle-text">
										<span>페어플레이점수 ｜ </span> <label
											class="text-orange subtitle-text">4.8</label>
									</div>

								</div>
								<hr>
								<div class="row panel-body">
									<div class="col-sm-3 col-xs-2">
										<span>가입신청날짜 ｜ </span> <span>2020/07/17</span>
									</div>
									<div class="col-sm-2 col-xs-4">
										<label>주 포지션 ｜ </label> <label>Center </label>
									</div>
									<div class="col-sm-2 col-xs-2">
										<label>키 ｜ </label> <label>180</label>
									</div>
									<div class="col-sm-2">
									</div>
									<div class="col-sm-3 col-xs-4">
										<button type="button" class="btn btn-default btn-danger"
										style="display:inline;">
											거절
										</button>
										<button type="button" class="btn btn-default btn-submit"
										style="display:inlint;">
											수락
										</button>
									</div>

								</div>

							</div>
							<!-- 가입신청 -->



						</div>


						









						<div class="row">
							<div class="col-md-12"></div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="row">
									<div class="col-md-3"></div>
									<div class="col-md-3"></div>
									<div class="col-md-3"></div>
									<div class="col-md-3"></div>
								</div>
								<div class="row">
									<div class="col-md-3"></div>
									<div class="col-md-3"></div>
									<div class="col-md-3"></div>
									<div class="col-md-3"></div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-8"></div>
							<div class="col-md-4"></div>
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