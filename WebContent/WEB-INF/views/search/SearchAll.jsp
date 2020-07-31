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
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=cp %>/css/default.css" />
<style type="text/css">
.search-panel {
	margin-top: 50px;
}

.title-text>.accent, .crew-info-title {
	color: orange;
}

.crew-info {
	padding-top: 1%;
}
.container
{
	padding-top: 2%;
}

.review
{
	color: orange;
	font-size: 14pt;
}
</style>
</head>
<body>

		<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/Submenu.jsp"></c:import>

	<div class="container-fuild main">
		<div class="section-title container">
			<h5>검색</h5>
			<hr />
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8 col-xs-12">
				<div class="row">
					<div class="col-md-12">
						<div class="col-md-10 col-xs-10">
							<p class="subtitle-text">통합 검색</p>
						</div>
						<div class="col-md-2 col-xs-2"></div>
					</div>
					<div class="col-md-12 col-xs-12 form-group">
						<div class="panel panel-default">
							<div class="panel-heading">검색</div>
							<div class="panel-body">
								<form action="">
									<div class="col-md-12 col-xs-12 ">
										<div class="col-md-12 col-xs-12 ">
											<p class="title-text">카테고리 검색</p>
										</div>
										<div class="form-group col-md-2 col-xs-2">
											<select class="form-control" id="">
												<option value="">전체</option>
												<option value="">사용자</option>
												<option value="">크루</option>
												<option value="">코트</option>
											</select>
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
					</div>

					<div class="container col-md-12 col-xs-12">
						<p class="title-text">
							"<span class="accent">아맞네</span>" 검색 결과 <span class="accent">n</span>건
						</p>
					</div>

				</div>
				<hr />

				<div class="container col-md-12 col-xs-12">
					<p class="title-text">
						유저 <span class="accent">(n)</span>
					</p>

				</div>
				<hr />
				<div class="container col-md-12 col-xs-12">

					<!-- 유저 검색 결과 -->
					<div class="col-md-3 col-xs-3">
						<div class="panel panel-default">
							<div class="panel-body">
								<div class="col-md-3 col-xs-3">
									<img src="" alt="프로필" />
								</div>
								<div class="col-md-9 col-xs-9" align="center">
									<p class="subtitle-text">아맞네</p>
								</div>

							</div>
						</div>
					</div>

					<div class="col-md-3 col-xs-3">
						<div class="panel panel-default">
							<div class="panel-body">
								<div class="col-md-3 col-xs-3">
									<img src="" alt="프로필" />
								</div>
								<div class="col-md-9 col-xs-9" align="center">
									<p class="subtitle-text">아맞네짱</p>
								</div>

							</div>
						</div>
					</div>

					<div class="col-md-3 col-xs-3">
						<div class="panel panel-default ">
							<div class="panel-body">
								<div class="col-md-3 col-xs-3">
									<img src="" alt="프로필" />
								</div>
								<div class="col-md-9 col-xs-9" align="center">
									<p class="subtitle-text">아맞네싫어</p>
								</div>

							</div>
						</div>
					</div>
					<!-- 늘어날 수 있음.  -->

				</div>
			
				<!-- 크루검색  -->
				<div class="container col-md-12 col-xs-12">
				<hr />
					<p class="title-text">
						크루 <span class="accent">(n)</span>
					</p>


					<!-- 크루검색 컨텐츠 -->
					<div class="container col-md-12 col-xs-12">
						<div class="panel panel-default">
							<div class="panel-body">
								<div class="col-md-1 col-xs-1">
									<img src="" alt="프로필" />
								</div>
								<div class="col-md-10 col-xs-11">
									<div class="col-md-3 col-xs-3">
										<p class="title-text">아맞네</p>
									</div>
									<div class="col-md-3 col-xs-3 crew-info">
										<p>
											<span class="crew-info-title subtitle-text">활동 지수 |</span><span>
												2100</span>
										</p>
									</div>
									<div class="col-md-3 col-xs-3 crew-info">
										<p>
											<span class="crew-info-title subtitle-text">크루 리더 |</span><span>
												아맞네</span>
										</p>
									</div>
									<div class="col-md-3 col-xs-3 crew-info">
										<p>
											<span class="crew-info-title subtitle-text">거점 지역 |</span><span>
												부산</span>
										</p>
									</div>

									<div class="col-md-12 col-xs-12 crew-info">
										<p>어서오세요! 환영합니다! ^^</p>
									</div>
									<div class="col-md-12 col-xs-12 crew-info">
										<p>
											<span class="crew-info-title subtitle-text">멤버 수 |</span><span>
												n / n </span>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="container col-md-12 col-xs-12">
						<div class="panel panel-default">
							<div class="panel-body">
								<div class="col-md-1 col-xs-1">
									<img src="" alt="프로필" />
								</div>
								<div class="col-md-10 col-xs-11">
									<div class="col-md-3 col-xs-3">
										<p class="title-text">아맞네</p>
									</div>
									<div class="col-md-3 col-xs-3 crew-info">
										<p>
											<span class="crew-info-title subtitle-text">활동 지수 |</span><span>
												2100</span>
										</p>
									</div>
									<div class="col-md-3 col-xs-3 crew-info">
										<p>
											<span class="crew-info-title subtitle-text">크루 리더 |</span><span>
												아맞네</span>
										</p>
									</div>
									<div class="col-md-3 col-xs-3 crew-info">
										<p>
											<span class="crew-info-title subtitle-text">거점 지역 |</span><span>
												부산</span>
										</p>
									</div>

									<div class="col-md-12 col-xs-12 crew-info">
										<p>어서오세요! 환영합니다! ^^</p>
									</div>
									<div class="col-md-12 col-xs-12 crew-info">
										<p>
											<span class="crew-info-title subtitle-text">멤버 수 |</span><span>
												n / n </span>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					
				<div class="container col-md-12 col-xs-12">
				<hr />
					<p class="title-text">
						코트 <span class="accent">(n)</span>
					</p>
				</div>
				
				<div class="container col-md-12 col-xs-12">
						<div class="panel panel-default">
							<div class="panel-body">
							
								<div class="col-md-3 col-xs-3">
								<p class="title-text">
								<span class="court-name">아맞네</span>
								<span>코트</span>
								</p>
								
								</div>
								
								
								<div class="col-md-9 col-xs-9">
									<div class="col-md-4 col-xs-4">
										<p class="star-icon">
										<span class="crew-info-title subtitle-text">만족도 | </span>
										
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star-half"></span>
									
										</p>
									</div>
									
									<div class="col-md-4 col-xs-4">
										<p>
										<span class="crew-info-title subtitle-text">관리등급 | </span>
										<span>B </span>
										</p>
									</div>
									
									<div class="col-md-4 col-xs-4">
										<p class="star-icon">
										<span class="crew-info-title subtitle-text">위치 | </span>
										<span>서울 마포구 </span>
										</p>
									</div>
									
									<div class="col-md-6 col-xs-6">
										<p>
										<span class="crew-info-title subtitle-text">시설 정보 | </span>
										
										<span class="fa fa-check-circle-o">화장실</span>
										&nbsp;
										<span class="fa fa-check-circle-o">주차장</span>
										&nbsp;
										<span class="fa fa-check-circle-o">샤워실</span>
									
										</p>
									</div>
									
									<div class="col-md-6 col-xs-6">
										<p class="star-icon">
										<span class="crew-info-title subtitle-text">적정플레이 인원 | </span>
										<span>4-8</span>
										</p>
									</div>
								
								<div class="col-md-12 col-xs-12">
									<p class="review">
									"<span>이 근방에서 제일 깨끗한 코트!</span>"
									</p>
									<p class="review">
									"<span>사람이 너무 많은 것이 유일한 단점...</span>"
									</p>
								</div>
									
								</div>
							
							
							</div>
						</div>
				</div>

				</div>

			</div>
			<div class="col-md-2"></div>
		</div>
	</div>


	<c:import url="../base/Footer.jsp"></c:import>
</body>
</html>