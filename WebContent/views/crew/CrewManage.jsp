<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<title>크루관리</title>

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
	text-align: center;
	color: blue;
	font-size: 120%;
	display: none;
}

.member-profile {
	text-align: center;
}
.right-btn {
	text-align: right;
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
			<span>크루 > 크루 관리</span>
			<hr />
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row">
							<div class="col-md-12">
								<span class="subtitle-text">크루관리</span>
								<hr>
							</div>
						</div>
						<div class="row">
							<label>가입조건 설정</label>
							<p></p>
						</div>
						<div class="panel panel-default">

							<div class="row">
								<div class="col-sm-1 col-xs-1"></div>
								<div class="col-sm-10 col-xs-10">
									<p></p>
									<div class="panel panel-default">

										<div class="row">

											<div class="col-sm-12 col-xs-12">
												<div class="row panel-body">
													<div class="col-sm-4 col-xs-4">
														<label>연령대</label>
													</div>
													<div class="col-sm-3 col-xs-3">
														<label class="radio-inline"> <input type="radio"
															name="inlineRadio1" id="inlineRadio1" value="option1">
															상관없음
														</label>
													</div>
													<div class="col-sm-4 col-xs-5">
														<label class="radio-inline"> <input type="radio"
															name="inlineRadio1" id="inlineRadio2" value="option2">
															나와 비슷한 연령대
														</label>
													</div>
													<div class="col-sm-1"></div>
												</div>

												<div class="row panel-body">
													<div class="col-sm-4 col-xs-4">
														<label>실력</label>
													</div>
													<div class="col-sm-3 col-xs-3">
														<label class="radio-inline"> <input type="radio"
															name="inlineRadio2" id="inlineRadio2-1" value="option1">
															상관없음
														</label>
													</div>
													<div class="col-sm-4 col-xs-4">
														<label class="radio-inline"> <input type="radio"
															name="inlineRadio2" id="inlineRadio2-1" value="option2">
															내 실력점수 이상
														</label>
													</div>
													<div class="col-sm-2 col-xs-2"></div>
												</div>




												<div class="row panel-body">
													<div class="col-sm-4 col-xs-4">
														<label>페어플레이점수</label>
													</div>
													<div class="col-sm-3 col-xs-3">
														<label class="radio-inline"> <input type="radio"
															name="inlineRadio3" id="inlineRadio1-2" value="option1">
															상관없음
														</label>
													</div>
													<div class="col-sm-4 col-xs-4">
														<label class="radio-inline"> <input type="radio"
															name="inlineRadio3" id="inlineRadio2-2" value="option2">
															내 페어플레이점수 이상
														</label>
													</div>
													<div class="col-sm-2 col-xs-2"></div>
												</div>
											</div>

										</div>
									</div>
									<div class="col-sm-1 col-xs-1"></div>
								</div>

								<div class="row panel-bady">
									<div class="col-sm-4 col-xs-4"></div>
									<div class="col-sm-4 col-xs-4">
										<p>
											<button type="button"
												class="btn btn-default btn-submit btn-block">설정</button>
										</p>
									</div>
									<div class="col-sm-4 col-xs-4"></div>

								</div>
							</div>
						</div>											
						<div class="row right-btn">
							<div class="col-sm-8 col-xs-8"></div>
								<div class="col-sm-4 col-xs-4">
									<button type="button" class="btn btn-default btn-link">
										프로필 설정
									</button>
									<button type="button" class="btn btn-default btn-link">
										멤버관리
									</button>
									<button type="button" class="btn btn-default" style="display: inline;">
										크루해체
									</button>
									<button type="button" class="btn btn-default" style="display: none;">
										크루해체취소
									</button>
								</div>
							</div>
						</div>							
					

				</div>
			</div>
		</div>
	</div>

	<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>