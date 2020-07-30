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
														<div class="flex">
															<span class="form-control name">연령제한*</span>
																<select class="form-control age col-sm-3 col-xs-3" id="age">
																	<option selected="selected">최소 연령선택</option>
																	<option>10대</option>
																	<option>20대</option>
																	<option>30대</option>
																	<option>40대</option>
																	<option>50대</option>
																	<option>60대 이상</option>
																	<option>연령제한 없음</option>
																</select>
																<span style="font-size: 18pt; margin-left: 10px;"> ~ </span>
																<select class="form-control age2" id="age2">
																	<option selected="selected">최대 연령선택</option>
																	<option>10대</option>
																	<option>20대</option>
																	<option>30대</option>
																	<option>40대</option>
																	<option>50대</option>
																	<option>60대 이상</option>
																	<option>연령제한 없음</option>
																</select>
														</div>
														<div class="flex">
															<span class="form-control name">실력제한*</span>
																<select class="form-control ability" id="ability">
																	<option selected="selected">최소 실력선택</option>
																	<option>하</option>
																	<option>중</option>
																	<option>상</option>
																	<option>실력제한 없음</option>
																</select>
																<span style="font-size: 18pt; margin-left: 10px;"> ~ </span>
																<select class="form-control ability2" id="ability2">
																	<option selected="selected">최대 실력선택</option>
																	<option>하</option>
																	<option>중</option>
																	<option>상</option>
																	<option>실력제한 없음</option>
																</select>
														</div>
														<div class="flex">
															<span class="form-control name">페어플레이제한*</span>				
																<select class="form-control fairplay" id="fairplay">
																	<option selected="selected">최소 페어플레이 점수 제한</option>
																	<option>1점대</option>
																	<option>2점대</option>
																	<option>3점대</option>
																	<option>4점대</option>						
																	<option>5점대</option>
																	<option>점수제한 없음</option>
																</select>
																<span style="font-size: 18pt; margin-left: 10px;"> ~ </span>
																<select class="form-control fairplay2" id="fairplay2">
																	<option selected="selected">최대 페어플레이 점수 제한</option>
																	<option>1점대</option>
																	<option>2점대</option>
																	<option>3점대</option>
																	<option>4점대</option>						
																	<option>5점대</option>
																	<option>점수제한 없음</option>
																</select>
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