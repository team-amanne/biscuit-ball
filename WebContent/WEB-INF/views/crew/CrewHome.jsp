<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>

<title>크루메인</title>

<style type="text/css">
.subtitle-text {
	font-weight: bold;
}

.crew-name {
	font-size: 130%;
	padding-top: 5px;
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
			<span>메인 > 크루</span>
			<hr />
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row top">
							<div class="col-md-12">
								<p class="subtitle-text">크루</p>
								<hr>
							</div>
						</div>
						<div class="row">
							<div class="panel panel-default">
								<div class="panel-heading subtitle-text">
									<span>크루</span>
								</div>
								<div class="panel-body">
									<form action="form-horizontal">
										<div class="col-md-12 col-xs-12 ">
											<div class="form-group col-md-2 col-xs-2">
												<p class="crew-name">크루이름</p>
											</div>
											<div class="form-group col-md-8 col-xs-8">
												<input type="text" class="form-control">
											</div>
											<div class="col-md-2 col-xs-2">
												<button class="btn btn-default btn-link btn-block">검색</button>
											</div>
										</div>
									</form>
								</div>
							</div>
							<!-- panel panel-default -->


							<!-- 최근크루 -->

							<div class="row">
								<div class="col-md-12">
									<p class="subtitle-text">최근활동top3 크루</p>
									<hr>
								</div>
							</div>
							<ul class="nav nav-tabs">
								<li role="presentation" class="active"><a href="#"><span class="fa fa-mars" style="font-size: 15px;"></span>남자</a></li>										
								<li role="presentation"><a href="#"><i class="fa fa-venus" style="font-size: 15px;"></i>여자</a></li>
							</ul>
							<div class="row" style="padding-bottom: 3px;">
								<p></p>
							</div>
							
							<div class="row">
								<div class="panel panel-default">
									<div class="panel-body">
										<div class="col-sm-1 col-xs-1">
											<img src="<%=cp%>/views/img/UserProfile.jpg" height="50px;"
												width="50px;" />
										</div>
										<div class="col-sm-5 col-xs-4">
											<span class="title-text">길동네 크루</span> <span
												class="subtitle-text text-orange"> LV.5 </span> <label>(
												활동 지수</label> <label class="text-orange">3000P </label> <label>)</label>
										</div>

										<div class="col-sm-3 col-xs-3">
											<label class="subtitle-text">홈코트｜ </label> <span
												class="subtitle-text  text-orange">길동이네</span>
										</div>
										<div class="col-sm-3 col-xs-3">
											<label class="subtitle-text">인원수｜ </label> <span
												class="subtitle-text  text-orange">6/10</span>
										</div>
									</div>
									<hr>
									<div class="panel-body">
										<div class="col-sm-3 col-xs-3">
											<label>리더 ｜ </label> <span>동규</span>
										</div>
										<div class="col-sm-3 col-xs-2"></div>
										<div class="col-sm-3 col-xs-7">
											<label class="subtitle-text">페어플레이점수｜ </label> <span
												class="subtitle-text  text-orange">4.3</span>
										</div>
										<div class="col-xs-6"></div>
									</div>
								</div>

								<div class="panel panel-default">
									<div class="panel-body">
										<div class="col-sm-1 col-xs-1">
											<img src="<%=cp%>/views/img/UserProfile.jpg" height="50px;"
												width="50px;" />
										</div>
										<div class="col-sm-5 col-xs-4">
											<span class="title-text">둘리 크루</span> <span
												class="subtitle-text text-orange"> LV.5 </span> <label>(
												활동 지수</label> <label class="text-orange">2000P </label> <label>)</label>
										</div>

										<div class="col-sm-3 col-xs-3">
											<label class="subtitle-text">홈코트｜ </label> <span
												class="subtitle-text  text-orange">길동이네</span>
										</div>
										<div class="col-sm-3 col-xs-3">
											<label class="subtitle-text">인원수｜ </label> <span
												class="subtitle-text  text-orange">6/10</span>
										</div>
									</div>
									<hr>
									<div class="panel-body">
										<div class="col-sm-3 col-xs-3">
											<label>리더 ｜ </label> <span>동규</span>
										</div>
										<div class="col-sm-3 col-xs-2"></div>
										<div class="col-sm-3 col-xs-7">
											<label class="subtitle-text">페어플레이점수｜ </label> <span
												class="subtitle-text  text-orange">4.3</span>
										</div>
										<div class="col-xs-6"></div>
									</div>
								</div>

								<div class="panel panel-default">
									<div class="panel-body">
										<div class="col-sm-1 col-xs-1">
											<img src="<%=cp%>/views/img/UserProfile.jpg" height="50px;"
												width="50px;" />
										</div>
										<div class="col-sm-5 col-xs-4">
											<span class="title-text">고길동네 둘리 크루</span> <span
												class="subtitle-text text-orange"> LV.5 </span> <label>(
												활동 지수</label> <label class="text-orange">1500P </label> <label>)</label>
										</div>

										<div class="col-sm-3 col-xs-3">
											<label class="subtitle-text">홈코트｜ </label> <span
												class="subtitle-text  text-orange">길동이네</span>
										</div>
										<div class="col-sm-3 col-xs-3">
											<label class="subtitle-text">인원수｜ </label> <span
												class="subtitle-text  text-orange">6/10</span>
										</div>
									</div>
									<hr>
									<div class="panel-body">
										<div class="col-sm-3 col-xs-3">
											<label>리더 ｜ </label> <span>동규</span>
										</div>
										<div class="col-sm-3 col-xs-2"></div>
										<div class="col-sm-3 col-xs-7">
											<label class="subtitle-text">페어플레이점수｜ </label> <span
												class="subtitle-text  text-orange">4.3</span>
										</div>
										<div class="col-xs-6"></div>
									</div>
								</div>
							</div>
						</div>

						<hr>												

						<div class="row">
							<div class="col-md-12">
								<p class="subtitle-text">신생 크루</p>
							</div>
						</div>
						
						
						<ul class="nav nav-tabs">
								<li role="presentation" class="active"><a href="#"><span class="fa fa-mars" style="font-size: 15px;"></span>남자</a></li>										
								<li role="presentation"><a href="#"><i class="fa fa-venus" style="font-size: 15px;"></i>여자</a></li>
							</ul>
							<div class="row" style="padding-bottom: 3px;">
								<p></p>
							</div>
						
						
						
						<div class="row">
							<div class="panel panel-default">
								<div class="panel-body">
									<div class="col-sm-1 col-xs-1">
										<img src="<%=cp%>/views/img/UserProfile.jpg" height="50px;"
											width="50px;" />
									</div>

									<div class="col-sm-5 col-xs-4">
										<a href="#"> <span class="title-text">초보 크루</span>
										</a> <span class="subtitle-text text-orange"> LV.1 </span> <label
											class="text-primary">가등록 </label>
									</div>


									<div class="col-sm-3 col-xs-3">
										<label class="subtitle-text">홈코트｜ </label> <span
											class="subtitle-text  text-orange">길동이네</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<label class="subtitle-text">인원수｜ </label> <span
											class="subtitle-text  text-orange">1/10</span>
									</div>
								</div>
								<hr>
								<div class="panel-body">
									<div class="col-sm-3 col-xs-3">
										<label>리더 ｜ </label> <a href="#"> <span>동규</span>
										</a>
									</div>
									<div class="col-sm-3 col-xs-2">
										<label>생성날짜 ｜ </label> <span>2020/07/17</span>
									</div>
									<div class="col-sm-3 col-xs-7">
										<label class="subtitle-text">페어플레이점수｜ </label> <span
											class="subtitle-text  text-orange">4.3</span>
									</div>
									<div class="col-xs-6"></div>
								</div>
							</div>

							<div class="panel panel-default">
								<div class="panel-body">
									<div class="col-sm-1 col-xs-1">
										<img src="<%=cp%>/views/img/UserProfile.jpg" height="50px;"
											width="50px;" />
									</div>

									<div class="col-sm-5 col-xs-4">
										<a href="#"> <span class="title-text">초보 크루</span>
										</a> <span class="subtitle-text text-orange"> LV.1 </span> <label
											class="text-primary">가등록 </label>
									</div>


									<div class="col-sm-3 col-xs-3">
										<label class="subtitle-text">홈코트｜ </label> <span
											class="subtitle-text  text-orange">길동이네</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<label class="subtitle-text">인원수｜ </label> <span
											class="subtitle-text  text-orange">1/10</span>
									</div>
								</div>
								<hr>
								<div class="panel-body">
									<div class="col-sm-3 col-xs-3">
										<label>리더 ｜ </label> <a href="#"> <span>동규</span>
										</a>
									</div>
									<div class="col-sm-3 col-xs-2">
										<label>생성날짜 ｜ </label> <span>2020/07/17</span>
									</div>
									<div class="col-sm-3 col-xs-7">
										<label class="subtitle-text">페어플레이점수｜ </label> <span
											class="subtitle-text  text-orange">4.3</span>
									</div>
									<div class="col-xs-6"></div>
								</div>
							</div>

							<div class="panel panel-default">
								<div class="panel-body">
									<div class="col-sm-1 col-xs-1">
										<img src="<%=cp%>/views/img/UserProfile.jpg" height="50px;"
											width="50px;" />
									</div>

									<div class="col-sm-5 col-xs-4">
										<a href="#"> <span class="title-text">초보 크루</span>
										</a> <span class="subtitle-text text-orange"> LV.1 </span> <label
											class="text-primary">가등록 </label>
									</div>


									<div class="col-sm-3 col-xs-3">
										<label class="subtitle-text">홈코트｜ </label> <span
											class="subtitle-text  text-orange">길동이네</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<label class="subtitle-text">인원수｜ </label> <span
											class="subtitle-text  text-orange">1/10</span>
									</div>
								</div>
								<hr>
								<div class="panel-body">
									<div class="col-sm-3 col-xs-3">
										<label>리더 ｜ </label> <a href="#"> <span>동규</span>
										</a>
									</div>
									<div class="col-sm-3 col-xs-2">
										<label>생성날짜 ｜ </label> <span>2020/07/17</span>
									</div>
									<div class="col-sm-3 col-xs-7">
										<label class="subtitle-text">페어플레이점수｜ </label> <span
											class="subtitle-text  text-orange">4.3</span>
									</div>
									<div class="col-xs-6"></div>
								</div>
							</div>


							<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4 paging">
									<ul class="pagination">
										<!-- li태그의 클래스에 disabled를 넣으면 마우스를 위에 올렸을 때 클릭 금지 마크가 나오고 클릭도 되지 않는다.-->
										<!-- disabled의 의미는 앞의 페이지가 존재하지 않다는 뜻이다. -->
										<li class="disabled"><a href="#"> <span>«</span>
										</a></li>
										<!-- li태그의 클래스에 active를 넣으면 색이 반전되고 클릭도 되지 않는다. -->
										<!-- active의 의미는 현재 페이지의 의미이다. -->
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
			<!-- 신생크루 -->




			<div class="row">
				<div class="col-md-12"></div>
			</div>
		</div>
		<div class="col-md-2"></div>
	</div>


	<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>