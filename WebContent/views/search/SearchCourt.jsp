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
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=cp%>/css/default.css" />
<style type="text/css">
.subtitle-text {
	font-weight: bold;
}

.court-info-title {
	color: orange;
	font-size: 12pt;
	font-weight: bold;
}

.correct-percent {
	color: orange;
}
</style>
</head>

<body>

		<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/Submenu.jsp"></c:import>

	<div class="container-fuild main">
		<div class="section-title container">
			<h5>메인페이지 > 코트 검색</h5>
			<hr />
		</div>
		<div class="row">

			<div class="col-md-2 col-xs-2"></div>
			<div class="col-md-8 col-xs-12">


				<div class="col-md-12 col-xs-12 form-group">
					<div class="panel panel-default">
						<div class="panel-heading">검색</div>
						<div class="panel-body">
							<form action="">
								<div class="col-md-12 col-xs-12 ">
									<div class="col-md-6 col-xs-6">
										<div class="col-md-12 col-xs-12 ">
											<p class="subtitle-text">지역 선택</p>
										</div>
										<div class="form-group col-md-6 col-xs-6">
											<select class="form-control" id="">
												<option value="">광역시·도</option>
												<option value="">서울</option>
												<option value="">경기</option>
												<option value="">부산</option>
												<option value="">인천</option>
												<option value="">대구</option>
												<option value="">대전</option>
												<option value="">광주</option>
												<option value="">울산</option>
												<option value="">경상</option>
												<option value="">전라</option>
												<option value="">충청</option>
												<option value="">강원</option>
												<option value="">제주</option>
											</select>

										</div>

										<div class="form-group col-md-6 col-xs-6">
											<select class="form-control" id="">
												<option value="">시·군·구</option>
											</select>

										</div>
									</div>
									<div class="form-group col-md-6 col-xs-6">
										<div class="col-md-12 col-xs-12">
											<p class="subtitle-text">선택조건</p>
										</div>
										<div class="col-md-4 col-xs-4">
											<select class="form-control" id="">
												<option value="">적정 인원</option>
												<option value="">1 ~ 4</option>
												<option value="">4 ~ 8</option>
												<option value="">8명 이상</option>
											</select>
										</div>
										<div class="col-md-4 col-xs-4 checkbox">
											<label for="inlineCheckbox1" class="checkbox-inline">

												<input type="checkbox" name="inlineCheckOptions"
												id="inlineCheckbox1" value="option2">가등록 제외
											</label>
										</div>
										<div class="col-md-4 col-xs-4">
											<button class="btn btn-default btn-link btn-block">검색</button>
										</div>
									</div>

								</div>
							</form>
						</div>
					</div>
				</div>

				<div class="col-md-12 col-xs-12">
					<p class="subtitle-text">지도에서 코트 선택</p>
					<hr />

				</div>

				<div class="col-md-12 col-xs-12">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="col-md-8 col-xs-8"
								style="height: 500px; background-color: gray">
								<!-- <img src="" alt="" /> -->
								지도영역
							</div>

							<!-- 선택 코트에 따라 바뀌는 정보 -->
							<div class="col-md-4 col-xs-4">
								<div class="col-md-12 col-xs-12">
									<div class="col-md-8 col-xs-8">
										<p class="subtitle-text">코트 정보</p>
									</div>
									<div class="col-md-4 col-xs-4">
										<button class="btn btn-defualt btn-xs btn-link">코트
											페이지</button>
									</div>

								</div>
								<div class="col-md-12 col-xs-12">
									<div class="panel panel-default">

										<div class="panel-body">
											<div class="col-md-12 col-xs-12">
												<p>
													<span class="court-info-title">코트이름 |</span><span>
														아맞네</span><span>(신뢰도<span class="correct-percent">n%</span>)
													</span>
												</p>
											</div>
											<div class="col-md-12 col-xs-12">
												<p>
													<span class="court-info-title">적정인원 |</span><span> 2
														~ 4 </span><span>(신뢰도<span class="correct-percent">n%</span>)
													</span>
												</p>
											</div>
											<div class="col-md-12 col-xs-12">
												<p>
													<span class="court-info-title">시설등급 |</span><span> B
													</span><span>(신뢰도<span class="correct-percent">n%</span>)
													</span>
												</p>
											</div>
											<div class="col-md-12 col-xs-12">
												<p>
													<span class="court-info-title">만족도 |</span> &nbsp; <span
														class="fa fa-star"></span> <span class="fa fa-star"></span>
													<span class="fa fa-star"></span> <span
														class="fa fa-star-half"></span>
												</p>

											</div>

										</div>
									</div>
								</div>
							</div>

							<div class="col-md-4 col-xs-4">
								<div class="col-md-12 col-xs-12">
									<div class="col-md-12 col-xs-12">
										<p class="subtitle-text">시설 정보</p>
									</div>


								</div>
								<div class="col-md-12 col-xs-12">
									<div class="panel panel-default">

										<div class="panel-body">
											<div class="col-md-12 col-xs-12">
												<p>
													<span class="court-info-title">보유시설 |</span>
												</p>
												<p>
													화장실<span class="fa fa-check-circle-o"></span> &nbsp; 주차장<span
														class="fa fa-check-circle-o"></span> &nbsp; 샤워실<span
														class="fa fa-check-circle-o"></span>
												</p>
											</div>


										</div>
									</div>
									
									<div class="col-md-12 col-xs-12">
									<p class="subtitle-text">
										찾는 코트가 없다면 ? 
									</p>
										<button class="btn btn-defualt btn-block btn-link">코트 등록 GO!</button>
									</div>
								</div>
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