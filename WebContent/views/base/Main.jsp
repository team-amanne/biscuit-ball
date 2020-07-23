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
<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style type="text/css">
.test-carousel {
	height: 500px;
}

.date-select {
	margin: 50px 20px 20px 40px;
	clear: both;
}

.p_default {
	padding-top: 10px;
}
.meeting_content
{
	padding-left: 70px;
}

.meeting_info
{
	/* padding-left: 20px; */
	margin-top: 2%;
	height: 90px;
	background-color: orange;
	background: #ffad33;
	font-weight: bold;
	color: white;
	font-size: 16pt;
}

.btn-link
{
margin-top: 23%;
}
.content-box
{
	padding-left: 40px;
}
.carousel-control 
{
	background: none !important; 
}
.main-img
{
	align-items: center;
}
</style>
<link rel="stylesheet" href="<%=cp %>/css/default.css" />

<script type="text/javascript">

		$(document).ready(function()
		{
			$("#userLogout").click(function()
			{
				$(location).attr("href", "<%=cp%>/logout");
			});			
		});
</script>
</head>
<body>

	<c:import url="Header.jsp"></c:import>

<div class="container-fuild">
	<div id="carousel-example-generic"
		class="carousel slide test-carousel" data-ride="carousel" align="center">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active main-img" align="center">
				<img src="<%=cp %>/views/img/main_play.jpg" alt="농구하기" width="1200" height="500">
				<div class="carousel-caption">
				</div>
			</div>
			<div class="item" align="center">
				<img src="<%=cp %>/views/img/main_crew.jpg" alt="크루" width="1200" height="500">
				<div class="carousel-caption"></div>
			</div>
			<div class="item" align="center">
				<img src="<%=cp %>/views/img/main_court.jpg" alt="코트" width="1200" height="500">
				<div class="carousel-caption"></div>
			</div>
			
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	
	<div class="col-md-12 col-xs-12 date-select">
		<div class="col-md-2 col-xs-2"></div>
		<div class="col-md-1 col-xs-1">
			<a><span class="glyphicon glyphicon-chevron-left"></span></a> <span
				class="sr-only">Previous</span>
		</div>

		<div class="col-md-1 col-xs-1">일</div>
		<div class="col-md-1 col-xs-1">월</div>
		<div class="col-md-1 col-xs-1">화</div>
		<div class="col-md-1 col-xs-1">수</div>
		<div class="col-md-1 col-xs-1">목</div>
		<div class="col-md-1 col-xs-1">금</div>

		<div class="col-md-1 col-xs-1">
			<a><span class="glyphicon glyphicon-chevron-right"></span></a> <span
				class="sr-only">Next</span>
		</div>
		<div class="col-md-2 col-xs-2"></div>
	</div>
	
	<div class="col-md-12 col-xs-12">
		<div class="col-md-2 col-xs-2"></div>
		<div class="col-md-8 col-xs-8 city-select">
			<ul class="nav nav-tabs city-select nav-justified">
				<li class="nav-item"><a href="" class="nav-link active"
					data-toggle='tab'>서울</a></li>
				<li class="nav-item"><a href="" class="nav-link"
					data-toggle='tab'>경기</a></li>
				<li class="nav-item"><a href="" class="nav-link"
					data-toggle='tab'>인천</a></li>
				<li class="nav-item"><a href="" class="nav-link"
					data-toggle='tab'>부산</a></li>
				<li class="nav-item"><a href="" class="nav-link"
					data-toggle='tab'>대구</a></li>
				<li class="nav-item"><a href="" class="nav-link"
					data-toggle='tab'>광주</a></li>
				<li class="nav-item"><a href="" class="nav-link"
					data-toggle='tab'>대전</a></li>
				<li class="nav-item"><a href="" class="nav-link"
					data-toggle='tab'>경상</a></li>
				<li class="nav-item"><a href="" class="nav-link"
					data-toggle='tab'>전라</a></li>
				<li class="nav-item"><a href="" class="nav-link"
					data-toggle='tab'>충청</a></li>
				<li class="nav-item"><a href="" class="nav-link"
					data-toggle='tab'>강원</a></li>
				<li class="nav-item"><a href="" class="nav-link"
					data-toggle='tab'>제주</a></li>
			</ul>
		</div>

	</div>

	<div class="col-md-12 ">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div class="col-md-12">
				<p class="p_default">
					전체 <span>n</span> 개의 모임
				</p>

				<div class="panel panel-default">
					<div class="panel-body content-box">
						<div class="col-md-2 well meeting_info">
						<span>마포구</span>
						<h4>18:00</h4>
						</div>
						<div class="col-md-6 meeting_content" align="left">
						<h3>홍대 근처에서 농구하실 분</h3>
						<p><span>서울</span> > <span>마포구</span> > <span>홍대입구 농구장</span></p>
						<p><span>일반</span> | <span>성별무관</span> | <span>LV1 - LV5</span> | <span>20 - 35 세</span></p>
						</div>
						<div class="col-md-3" align="center">
							<button class="btn btn-default btn-block btn-link">
							상세보기
							</button>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-body content-box">
						<div class="col-md-2 well meeting_info">
						<span>마포구</span>
						<p>18:00</p>
						</div>
						<div class="col-md-6 meeting_content" align="left">
						<h3>홍대 근처에서 농구하실 분</h3>
						<p><span>서울</span> > <span>마포구</span> > <span>홍대입구 농구장</span></p>
						<p><span>일반</span> | <span>성별무관</span> | <span>LV1 - LV5</span> | <span>20 - 35 세</span></p>
						</div>
						<div class="col-md-3" align="center">
							<button class="btn btn-default btn-link btn-block">
							상세보기
							</button>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-body content-box">
						<div class="col-md-2 well meeting_info">
						<span>마포구</span>
						<p>18:00</p>
						</div>
						<div class="col-md-6 meeting_content" align="left">
						<h3>홍대 근처에서 농구하실 분</h3>
						<p><span>서울</span> > <span>마포구</span> > <span>홍대입구 농구장</span></p>
						<p><span>일반</span> | <span>성별무관</span> | <span>LV1 - LV5</span> | <span>20 - 35 세</span></p>
						</div>
						<div class="col-md-3" align="center">
							<button class="btn btn-default btn-block btn-link">
							상세보기
							</button>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-body content-box">
						<div class="col-md-2 well meeting_info">
						<span>마포구</span>
						<p>18:00</p>
						</div>
						<div class="col-md-6 meeting_content" align="left">
						<h3>홍대 근처에서 농구하실 분</h3>
						<p><span>서울</span> > <span>마포구</span> > <span>홍대입구 농구장</span></p>
						<p><span>일반</span> | <span>성별무관</span> | <span>LV1 - LV5</span> | <span>20 - 35 세</span></p>
						</div>
						<div class="col-md-3" align="center">
							<button class="btn btn-default btn-link btn-block">
							상세보기
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-2"></div>
		
		
		

	</div>
	<br style="clear:both;" />
	
	<c:import url="Footer.jsp"></c:import>
</div>

</body>


</html>