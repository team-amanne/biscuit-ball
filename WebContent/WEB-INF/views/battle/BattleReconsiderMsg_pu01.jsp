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
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/board.css">
<style type="text/css">
.subtitle-text
{
	font-size: 14pt;
	font-weight: bold;
}

.title
{
	color: orange;
	font-size: 13pt;
	font-weight: bold;
}
.crew-name
{
	color: black;
	font-weight: normal;
	font-size: 12pt;
}
.btn
{
	font-weight: bold;
}

</style>
</head>

<div class="col-md-6">
	<p class="title-text">재고된 대전</p>
	<hr />
	<div class="col-md-12">
		<p class="subtitle-text">대전 참여 크루</p>	
		<div class="panel panel-default">
			<div class="panel-body">
			<p class="title"> 신청 크루 | &nbsp;&nbsp; <span class="crew-name"> 아맞네</span></p>
			<p class="title"> 수신 크루 | &nbsp;&nbsp; <span class="crew-name"> 규쿤네</span></p>
			</div>
		</div>

	</div>
	
	<div class="col-md-12">
	<p class="subtitle-text">기존 대전 정보</p>
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="col-md-12">
					<div class="col-md-3">
						<p class="title">장소 |</p>
					</div>
					<div class="col-md-9">
						<p class="">서울 마포구 쌍용코트</p>
					</div>
				</div>

				<div class="col-md-12">
					<div class="col-md-3">
						<p class="title">대전 시간 |</p>
					</div>
					<div class="col-md-9">
						<p class="">2020-07-29 13:00 - 14:00</p>
					</div>

				</div>
				
				<div class="col-md-12">
					<div class="col-md-3">
						<p class="title">경기 방식 |</p>
					</div>
					<div class="col-md-9">
						<p class="">3 on 3</p>
					</div>

				</div>

			</div>
		</div>
	</div>
	
	<div class="col-md-12">
	<p class="subtitle-text">신청 크루 <span>(아맞네)</span> 엔트리</p>
		<ul class="list-group">
			<li class="list-group-item board-body board-header">
				<div class="row">
					<div class="col-sm-3 col-xs-3">
						<span>닉네임</span>
					</div>
					<div class="col-md-3 col-xs-3">
						<span>티어</span>
					</div>
					<div class="col-md-3 col-xs-3">
						<span>키</span>
					</div>
					<div class="col-md-3 col-xs-3">
						<span>포지션</span>
					</div>
				</div>
			</li>


			<li class="list-group-item board-body">
				<div class="row">
					<div class="col-sm-3 col-xs-3">
						<span>아맞네</span>
					</div>
					<div class="col-md-3 col-xs-3">
						<span>2Level</span>
					</div>
					<div class="col-md-3 col-xs-3">
						<span>173cm</span>
					</div>
					<div class="col-md-3 col-xs-3">
						<span>PG</span>
					</div>
				</div>
			</li>
			<li class="list-group-item board-body">
				<div class="row">
					<div class="col-sm-3 col-xs-3">
						<span>규쿤</span>
					</div>
					<div class="col-md-3 col-xs-3">
						<span>3Level</span>
					</div>
					<div class="col-md-3 col-xs-3">
						<span>175cm</span>
					</div>
					<div class="col-md-3 col-xs-3">
						<span>PF</span>
					</div>
				</div>
			</li>
			<li class="list-group-item board-body">
				<div class="row">
					<div class="col-sm-3 col-xs-3">
						<span>성철쓰</span>
					</div>
					<div class="col-md-3 col-xs-3">
						<span>3Level</span>
					</div>
					<div class="col-md-3 col-xs-3">
						<span>173cm</span>
					</div>
					<div class="col-md-3 col-xs-3">
						<span>SG</span>
					</div>
				</div>
			</li>

		</ul>
		</div>
		<div class="col-md-12">
		<p class="subtitle-text">수신 크루 <span>(규쿤네)</span> 재고 사유</p>
		<div class="panel panel-default">
			<div class="panel-body">
				<span>3 대 3 보다 5대 5가 어떨까요?? 날짜는 주말이 편할 것 같습니다.</span>
			</div>
		</div>
		</div>
		
		<div class="col-md-4"></div>
		<div class="col-md-4">
			<button class="btn btn-default btn-block">
				닫 기
			</button>
		</div>
		<div class="col-md-4"></div>
</div>
</html>