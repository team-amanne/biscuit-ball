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
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" href="<%=cp%>/css/board.css" />

<style type="text/css">
.title-info {
	font-size: 13pt;
	color: orange;
	font-weight: bold;
}

.map-info {
	background-color: gray;
	width: 500px;
	height: 400px;
	margin: 2% 0 0 2%;
}

.vote-result
{
	font-weight: bold;
	margin-top: 2%;
}
</style>

</head>

	<div class="col-md-6">
		<p class="title-text">삭제 요청 승인 대기 코트</p>
		<hr />
		<div class="col-md-12">
			<p class="subtitle-text">코트 정보</p>
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="col-md-4">
						<span class="title-info"> 코트 번호 &nbsp;&nbsp;&nbsp;&nbsp;| </span>
						<span class=""> 1234 </span>
					</div>
					<div class="col-md-8">
						<span class="title-info"> 코트 이름 &nbsp;&nbsp;&nbsp;&nbsp;| </span>
						<span class=""> 아맞네 코트 </span>
					</div>
					<div class="col-md-4">
						<span class="title-info"> 관리 등급 &nbsp;&nbsp;&nbsp;&nbsp;| </span>
						<span class=""> A </span>
					</div>
					<div class="col-md-4">
						<span class="title-info"> 내 코트 수 &nbsp;&nbsp;&nbsp;| </span> <span
							class=""> 123 </span>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-12">
			<p class="subtitle-text">코트 위치</p>
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="col-md-12">
						<span class="title-info"> 지역 
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| </span> <span
							class=""> <span>서울</span>&nbsp; <span>마포구</span>
						</span>
					</div>
					<div class="col-md-12">
						<span class="title-info"> 지도상 위치 &nbsp;&nbsp;&nbsp;&nbsp;|
						</span>

					</div>
					<div class="col-md-12 map-info">지도영역</div>
				</div>
			</div>
		</div>

		<div class="col-md-12">
			<p class="subtitle-text">삭제 요청 정보</p>
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="col-md-3">
						<span class="title-info"> 삭제 신청 유저 &nbsp;&nbsp;| </span>
					</div>
					<div class="col-md-3">
						<span class=""> 아맞네동생 </span>
					</div>
					<div class="col-md-3">
						<span class="title-info"> 삭제 요청일 &nbsp;&nbsp;&nbsp;&nbsp;| </span>
					</div>
					<div class="col-md-3">
						<span class=""> 2020-07-12 </span>
					</div>
					
					<div class="col-md-12">
						<span class="title-info"> 투표 현황 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| </span>
						<span class=""> </span>
					</div>

					<div class="col-md-6 vote-result">
						<ul class="list-group">
							<li class="list-group-item board-body board-header">
								<div class="row">
									<div class="col-sm-12 col-xs-12">
										<span>삭제 찬성</span>
									</div>

								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">
									<div class="col-sm-12 col-xs-12">
										<span>33</span>
									</div>
								</div>
							</li>
						</ul>
					</div>

					<div class="col-md-6 vote-result">
						<ul class="list-group">
							<li class="list-group-item board-body board-header">
								<div class="row">
									<div class="col-sm-12 col-xs-12">
										<span>삭제 반대</span>
									</div>

								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">
									<div class="col-sm-12 col-xs-12">
										<span>6</span>
									</div>
								</div>
							</li>
						</ul>
					</div>

				</div>
			</div>
		</div>
		
		<!-- 결정 버튼 -->
		<div class="col-md-3"></div>
		<div class="col-md-3">
			<button class="btn btn-default btn-block btn-submit">
				삭제 승인
			</button>
		</div>
		<div class="col-md-3">
			<button class="btn btn-default btn-block btn-submit">
				삭제 거절
			</button>
		</div>
		<div class="col-md-3"></div>
		
	</div>

</html>