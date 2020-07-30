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
<link rel="stylesheet" href="<%=cp%>/css/board.css" />
<style type="text/css">
.subtitle-text {
	font-weight: bold;
	color: orange;
	font-size: 12pt;
}

.battle-mode {
	font-size: 11pt;
	color: black;
}
</style>
</head>

<div class="col-md-6">

	<p class="title-text">대전 신청 수신</p>
	<hr />
	<div class="col-md-12">
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="col-md-12">
					<div class="col-md-3">
						<p class="subtitle-text">신청 크루 |</p>
					</div>
					<div class="col-md-6">

						<input type="text" disabled="disabled" value="아맞네 크루"
							class="form-control">
					</div>
					<div class="col-md-3">
						<p class="subtitle-text">
							경기 방식 | <span class="battle-mode">3 on 3</span>
						</p>
					</div>
				</div>
			</div>
		</div>


		<p>대전 정보</p>
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="col-md-12">
					<div class="col-md-3">
						<p class="subtitle-text">장소 |</p>
					</div>
					<div class="col-md-9">
						<p class="">서울 마포구 쌍용코트</p>
					</div>
				</div>

				<div class="col-md-12">
					<div class="col-md-3">
						<p class="subtitle-text">크루 리더 |</p>
					</div>
					<div class="col-md-9">
						<p class="">아맞네</p>
					</div>

				</div>
				<div class="col-md-12">
					<div class="col-md-3">
						<p class="subtitle-text">대전 시간 |</p>
					</div>
					<div class="col-md-9">
						<p class="">2020-07-29 13:00 - 14:00</p>
					</div>

				</div>

			</div>
		</div>

		<p>상대 크루 정보</p>
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="col-md-12">
					<div class="col-md-4">
						<p class="subtitle-text">크루 페어플레이 점수 |</p>
					</div>
					<div class="col-md-8">
						<span class="fa fa-star"></span> <span class="fa fa-star"></span>
						<span class="fa fa-star"></span> <span class="fa fa-star-half"></span>
					</div>
				</div>

				<div class="col-md-12">
					<div class="col-md-4">
						<p class="subtitle-text">심판 |</p>
					</div>
					<div class="col-md-8">
						<p class="">아맞네동생</p>
					</div>
				</div>
				<div class="col-md-12">
					<div class="col-md-4">
						<p class="subtitle-text">심판 페어플레이 점수 |</p>
					</div>
					<div class="col-md-8">
						<span class="fa fa-star"></span> <span class="fa fa-star"></span>
						<span class="fa fa-star"></span> <span class="fa fa-star-half"></span>
					</div>
				</div>
			</div>
		</div>

		<p>상대 크루 엔트리</p>
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
		<div class="col-md-4">
			<button class="btn btn-defualt btn-block btn-submit">
			수락
			</button>
		</div>
		<div class="col-md-4">
			<button class="btn btn-defualt btn-block btn-submit">
			거절
			</button>
		</div>
		<div class="col-md-4">
			<button class="btn btn-defualt btn-block btn-submit">
			재고
			</button>
		</div>
	</div>

</div>

</html>