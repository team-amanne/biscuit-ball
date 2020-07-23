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
.select-info {
	padding-top: 1%;
}

.notice-select {
	font-size: 9pt;
	color: red;
	padding-top: 2%;
}
</style>
</head>

<div class="col-md-6">
	<p class="title-text">대전 신청</p>
	<hr />
	<div class="panel panel-default">
		<div class="panel-body">
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="col-md-3">
						<span class="text-orange subtitle-text"> 상대 크루
							&nbsp;&nbsp;&nbsp; | </span>
					</div>

					<div class="col-md-9">
						<input type="text" class="form-control" disabled="disabled"
							value="아맞네">
					</div>
				</div>
			</div>
			<p class="subtitle-text">대전 정보</p>
			<div class="panel panel-default">
				<div class="panel-body">

					<div class="col-md-12">
						<div class="col-md-3">
							<span class="text-orange subtitle-text"> 대전 장소
								&nbsp;&nbsp;&nbsp; | </span>
						</div>

						<div class="col-md-3">
							<select class="form-control" name="" id="">
								<option value="">광역시·도 선택</option>
							</select>
						</div>
						<div class="col-md-3">
							<select class="form-control" name="" id="">
								<option value="">시·군·구 선택</option>
							</select>
						</div>
						<div class="col-md-3">
							<button class="btn btn-default btn-submit btn-block">
								<span class="fa fa-map-marker"></span>&nbsp;&nbsp;코트 선택
							</button>
						</div>
					</div>


					<div class="col-md-12 select-info">

						<div class="col-md-3">
							<span class="text-orange subtitle-text"> 대전 날짜
								&nbsp;&nbsp;&nbsp; | </span>
						</div>

						<div class="col-md-3">
							<div class="input-group">
								<input type="text" class="form-control" disabled="disabled"
									value="2020-07-21"> <span class="input-group-btn">
									<button class="btn btn-default">
										<span class="fa fa-calendar"></span>
									</button>
								</span>
							</div>
						</div>



						<div class="col-md-3">
							<select class="form-control" name="" id="">
								<option value="">시작 시간</option>
							</select>
						</div>

						<div class="col-md-3">
							<select class="form-control" name="" id="">
								<option value="">종료 시간</option>
							</select>
						</div>
					</div>


					<div class="col-md-12 select-info">
						<div class="col-md-3">
							<span class="text-orange subtitle-text"> 심판 선택
								&nbsp;&nbsp;&nbsp; | </span>
						</div>

						<div class="col-md-4">
							<select class="form-control" name="" id="">
								<option value="">심판 선택</option>
							</select>
						</div>

						<div class="col-md-5 notice-select">
							<span class="">※ 심판 멤버는 경기에 참여할 수 없습니다.</span>
						</div>

					</div>

				</div>
			</div>
			<hr />
			<p class="subtitle-text">엔트리 선택</p>
			<ul class="list-group">
				<li class="list-group-item board-body board-header">
					<div class="row">
						<div class="col-sm-3 col-xs-3">
							<span>닉네임</span>
						</div>
						<div class="col-md-3 col-xs-2">
							<span>티어</span>
						</div>
						<div class="col-sm-2 col-xs-2">
							<span>키</span>
						</div>
						<div class="col-sm-2 col-xs-2">
							<span>포지션</span>
						</div>
						<div class="col-md-2 col-xs-2">
							<span>선택</span>
						</div>
					</div>
				</li>


				<li class="list-group-item board-body">
					<div class="row">
						<div class="col-sm-3 col-xs-3">
							<span>아맞네</span>
						</div>
						<div class="col-md-3 col-xs-2">
							<span>2Level</span>
						</div>
						<div class="col-sm-2 col-xs-2">
							<span>172cm</span>
						</div>
						<div class="col-sm-2 col-xs-2">
							<span>PG</span>
						</div>
						<div class="col-md-2 col-xs-2 custom-control custom-checkbox">
							<input type="checkbox" id="checkbox01"
								class="custom-control-input">
						</div>
					</div>
				</li>
				<li class="list-group-item board-body">
					<div class="row">
						<div class="col-sm-3 col-xs-3">
							<span>아맞네</span>
						</div>
						<div class="col-md-3 col-xs-2">
							<span>2Level</span>
						</div>
						<div class="col-sm-2 col-xs-2">
							<span>172cm</span>
						</div>
						<div class="col-sm-2 col-xs-2">
							<span>PG</span>
						</div>
						<div class="col-md-2 col-xs-2 custom-control custom-checkbox">
							<input type="checkbox" id="checkbox01"
								class="custom-control-input">
						</div>
					</div>
				</li>
				<li class="list-group-item board-body">
					<div class="row">
						<div class="col-sm-3 col-xs-3">
							<span>아맞네</span>
						</div>
						<div class="col-md-3 col-xs-2">
							<span>2Level</span>
						</div>
						<div class="col-sm-2 col-xs-2">
							<span>172cm</span>
						</div>
						<div class="col-sm-2 col-xs-2">
							<span>PG</span>
						</div>
						<div class="col-md-2 col-xs-2 custom-control custom-checkbox">
							<input type="checkbox" id="checkbox01"
								class="custom-control-input">
						</div>
					</div>
				</li>
			</ul>
			<hr />
			<p class="subtitle-text">엔트리</p>

			<ul class="list-group">
				<li class="list-group-item board-body board-header">
					<div class="row">
						<div class="col-md-2 col-xs-2">
							<span>번호</span>
						</div>
						<div class="col-sm-3 col-xs-3">
							<span>닉네임</span>
						</div>
						<div class="col-md-3 col-xs-3">
							<span>티어</span>
						</div>
						<div class="col-sm-2 col-xs-2">
							<span>키</span>
						</div>
						<div class="col-sm-2 col-xs-2">
							<span>포지션</span>
						</div>

					</div>
				</li>


				<li class="list-group-item board-body">
					<div class="row">
						<div class="col-md-2 col-xs-2">
							<span>1</span>
						</div>
						<div class="col-sm-3 col-xs-3">
							<span>아맞네</span>
						</div>
						<div class="col-md-3 col-xs-3">
							<span>2Level</span>
						</div>
						<div class="col-md-2 col-xs-2">
							<span>173cm</span>
						</div>
						<div class="col-sm-2 col-xs-2">
							<span>PG</span>
						</div>

					</div>
				</li>
				<li class="list-group-item board-body">
					<div class="row">
						<div class="col-md-2 col-xs-2">
							<span>2</span>
						</div>
						<div class="col-sm-3 col-xs-3">
							<span>규쿤</span>
						</div>
						<div class="col-md-3 col-xs-3">
							<span>2Level</span>
						</div>
						<div class="col-md-2 col-xs-2">
							<span>175cm</span>
						</div>
						<div class="col-sm-2 col-xs-2">
							<span>PF</span>
						</div>

					</div>
				</li>
				<li class="list-group-item board-body">
					<div class="row">
						<div class="col-md-2 col-xs-2">
							<span>3</span>
						</div>
						<div class="col-sm-3 col-xs-3">
							<span>규쿤동생</span>
						</div>
						<div class="col-md-3 col-xs-3">
							<span>4Level</span>
						</div>
						<div class="col-md-2 col-xs-2">
							<span>175cm</span>
						</div>
						<div class="col-sm-2 col-xs-2">
							<span>C</span>
						</div>

					</div>
				</li>
			</ul>

		</div>
	</div>

	<div class="col-md-3"></div>
	<div class="col-md-3">
		<button class="btn btn-default btn-submit btn-block">대전 신청</button>
	</div>
	<div class="col-md-3">
		<button class="btn btn-default btn-block">취 소</button>
	</div>
	<div class="col-md-3"></div>


</div>
</html>