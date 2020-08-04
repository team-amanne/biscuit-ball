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
<title>BiscuitBail > 모임관리</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/default.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style type="text/css">
.btn-serach {
	padding: 0px 0px 0px 0px;
}

.list-header {
	color: white;
	background: orange;
	font-size: 140%;
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


.count_post
{
	color: orange;
}
</style>
</head>
<body>

	<!-- 헤더 -->
		<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/PlaySubmenu.jsp"></c:import>

	<div class="container-fluid main">
		<div class="section-title container">
			<h5></h5>
			<hr />
		</div>
		<div class="col-md-12">
		<div class="col-md-2"></div>
		<div class="col-md-3">
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="col-md-9">
					<h4>참여 예정 모임</h4>
					</div>
					<div class="col-md-3">
					<h4><span class="count_post">6개</span></h4>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-2"></div>
		<div class="col-md-3">
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="col-md-9">
					<h4>미입력 플레이로그</h4>
					</div>
					<div class="col-md-3">
					<h4><span class="count_post">4개</span></h4>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-2"></div>
		</div>

		<!-- 모임 목록 -->
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row">
							<div class="col-md-12">
								<h4>참여 신청 모임</h4>
								<hr>
							</div>
						</div>
						<div class="row top-btn">
							<div class="col-md-4"></div>
							<div class="col-md-6"></div>
							<div class="col-md-2">
								<button class="btn btn-submit" type="button">더보기</button>
							</div>
						</div>

						<ul class="list-group">
							<li class="list-group-item list-header list-item">
								<div class="col-md-1">
									<span class="board-header">번호</span>
								</div>
								<div class="col-md-3">
									<span class="board-header">제목</span>
								</div>
								<div class="col-md-1">
									<span class="board-header">주장</span>
								</div>
								<div class="col-md-3">
									<span class="board-header">장소</span>
								</div>
								<div class="col-md-2">
									<span class="board-header">모임시간</span>
								</div>
								<div class="col-md-1">
									<span class="board-header">인원</span>
								</div>
								<div class="col-md-1">
									<span class="board-header">상태</span>
								</div>
							</li>
							<li class="list-group-item list-item">
								<div class="col-md-1">
									<span>10</span>
								</div>
								<div class="col-md-3">
									<span><a class="a-link" href="">동휘야 그만해 그만</a></span>
								</div>
								<div class="col-md-1">
									<span>주한별</span>
								</div>
								<div class="col-md-3">
									<span>서울 강남구 수남코트</span>
								</div>
								<div class="col-md-2">
									<span>2020-07-07</span>
								</div>
								<div class="col-md-1">
									<span>3/4</span>
								</div>
								<div class="col-md-1">
									<span style="color: blue;">모집중</span>
								</div>
							</li>
							<li class="list-group-item list-item">
								<div class="col-md-1">
									<span>9</span>
								</div>
								<div class="col-md-3">
									<span><a class="a-link" href="">수진아 그만해 그만</a></span>
								</div>
								<div class="col-md-1">
									<span>주한별</span>
								</div>
								<div class="col-md-3">
									<span>서울 왕십리 해남코트</span>
								</div>
								<div class="col-md-2">
									<span>2020-07-07</span>
								</div>
								<div class="col-md-1">
									<span>3/4</span>
								</div>
								<div class="col-md-1">
									<span style="color: blue;">모집중</span>
								</div>
							</li>
							<li class="list-group-item list-item">
								<div class="col-md-1">
									<span>8</span>
								</div>
								<div class="col-md-3">
									<span><a class="a-link" href="">진영아 그만해 그만</a></span>
								</div>
								<div class="col-md-1">
									<span>주한별</span>
								</div>
								<div class="col-md-3">
									<span>서울 강북구 한강코트</span>
								</div>
								<div class="col-md-2">
									<span>2020-07-07</span>
								</div>
								<div class="col-md-1">
									<span>1/4</span>
								</div>
								<div class="col-md-1">
									<span style="color: blue;">모집중</span>
								</div>
							</li>
							<li class="list-group-item list-item">
								<div class="col-md-1">
									<span>7</span>
								</div>
								<div class="col-md-3">
									<span><a class="a-link" href="">채빈아 그만해 그만</a></span>
								</div>
								<div class="col-md-1">
									<span>주한별</span>
								</div>
								<div class="col-md-3">
									<span>서울 은평구 은평코트</span>
								</div>
								<div class="col-md-2">
									<span>2020-07-07</span>
								</div>
								<div class="col-md-1">
									<span>4/4</span>
								</div>
								<div class="col-md-1">
									<span style="color: red;">마감</span>
								</div>
							</li>
							<li class="list-group-item list-item">
								<div class="col-md-1">
									<span>10</span>
								</div>
								<div class="col-md-3">
									<span><a class="a-link" href="">효림아 그만해 그만</a></span>
								</div>
								<div class="col-md-1">
									<span>주한별</span>
								</div>
								<div class="col-md-3">
									<span>서울 영등포구 영등코트</span>
								</div>
								<div class="col-md-2">
									<span>2020-07-07</span>
								</div>
								<div class="col-md-1">
									<span>4/4</span>
								</div>
								<div class="col-md-1">
									<span style="color: red;">마감</span>
								</div>
							</li>
							<li class="list-group-item list-item">
								<div class="col-md-1">
									<span>10</span>
								</div>
								<div class="col-md-3">
									<span><a class="a-link" href="">기혜야 그만해 그만</a></span>
								</div>
								<div class="col-md-1">
									<span>주한별</span>
								</div>
								<div class="col-md-3">
									<span>서울 마포구 연남코트</span>
								</div>
								<div class="col-md-2">
									<span>2020-07-07</span>
								</div>
								<div class="col-md-1">
									<span>4/4</span>
								</div>
								<div class="col-md-1">
									<span style="color: red;">마감</span>
								</div>
							</li>

						</ul>
						<div class="row">
							<div class="col-md-12"></div>
						</div>
						<div class="row">
							<div class="col-md-3"></div>
							<div class="col-md-3"></div>
						</div>
						<div class="row">
							<div class="col-md-12"></div>
						</div>

					</div>
					<div class="col-md-2"></div>
				</div>
			</div>
		</div>

		<br /> <br /> <br /> <hr /><br /> <br /> <br />

		<div class="col-md-12">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<div class="row">
						<div class="col-md-12">
							<h4>미입력 플레이로그</h4>
							<hr>
						</div>
					</div>
					<div class="row top-btn">
						<div class="col-md-4"></div>
						<div class="col-md-6"></div>
						<div class="col-md-2">
							<button class="btn btn-submit" type="button">더보기</button>
						</div>
					</div>

					<ul class="list-group">
						<li class="list-group-item list-header list-item">
							<div class="col-md-1">
								<span class="board-header">번호</span>
							</div>
							<div class="col-md-3">
								<span class="board-header">제목</span>
							</div>
							<div class="col-md-1">
								<span class="board-header">주장</span>
							</div>
							<div class="col-md-2">
								<span class="board-header">장소</span>
							</div>
							<div class="col-md-2">
								<span class="board-header">모임 날짜</span>
							</div>
							<div class="col-md-2">
								<span class="board-header">남은 입력시간</span>
							</div>
							<div class="col-md-1">
								<span class="board-header">인원</span>
							</div>
						</li>
						<li class="list-group-item list-item">
							<div class="col-md-1">
								<span class="board-header">10</span>
							</div>
							<div class="col-md-3">
								<span class="board-header">한게임 합시다.</span>
							</div>
							<div class="col-md-1">
								<span class="board-header">김동휘</span>
							</div>
							<div class="col-md-2">
								<span class="board-header">서울 마포구 연남코트</span>
							</div>
							<div class="col-md-2">
								<span class="board-header">2020-07-09</span>
							</div>
							<div class="col-md-2">
								<span class="board-header">3</span>
							</div>
							<div class="col-md-1">
								<span class="board-header">4</span>
							</div>
						</li>
						<li class="list-group-item list-item">
							<div class="col-md-1">
								<span class="board-header">10</span>
							</div>
							<div class="col-md-3">
								<span class="board-header">한게임 합시다.</span>
							</div>
							<div class="col-md-1">
								<span class="board-header">김동휘</span>
							</div>
							<div class="col-md-2">
								<span class="board-header">서울 마포구 연남코트</span>
							</div>
							<div class="col-md-2">
								<span class="board-header">2020-07-09</span>
							</div>
							<div class="col-md-2">
								<span class="board-header">3</span>
							</div>
							<div class="col-md-1">
								<span class="board-header">4</span>
							</div>
						</li>
						<li class="list-group-item list-item">
							<div class="col-md-1">
								<span class="board-header">10</span>
							</div>
							<div class="col-md-3">
								<span class="board-header">한게임 합시다.</span>
							</div>
							<div class="col-md-1">
								<span class="board-header">김동휘</span>
							</div>
							<div class="col-md-2">
								<span class="board-header">서울 마포구 연남코트</span>
							</div>
							<div class="col-md-2">
								<span class="board-header">2020-07-09</span>
							</div>
							<div class="col-md-2">
								<span class="board-header">3</span>
							</div>
							<div class="col-md-1">
								<span class="board-header">4</span>
							</div>
						</li>
						<li class="list-group-item list-item">
							<div class="col-md-1">
								<span class="board-header">10</span>
							</div>
							<div class="col-md-3">
								<span class="board-header">한게임 합시다.</span>
							</div>
							<div class="col-md-1">
								<span class="board-header">김동휘</span>
							</div>
							<div class="col-md-2">
								<span class="board-header">서울 마포구 연남코트</span>
							</div>
							<div class="col-md-2">
								<span class="board-header">2020-07-09</span>
							</div>
							<div class="col-md-2">
								<span class="board-header">3</span>
							</div>
							<div class="col-md-1">
								<span class="board-header">4</span>
							</div>
						</li>
						
					</ul>
					<div class="row">
						<div class="col-md-12"></div>
					</div>
					<div class="row">
						<div class="col-md-3"></div>
						<div class="col-md-3"></div>
					</div>
					<div class="row">
						<div class="col-md-12"></div>
					</div>
				</div>
			</div>


			<c:import url="../base/Footer.jsp"></c:import>
		</div>
	</div>

</body>
</html>