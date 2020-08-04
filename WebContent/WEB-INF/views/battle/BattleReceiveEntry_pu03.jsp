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
<p class="title-text">대전 엔트리 선택</p>
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
		
		<p>엔트리 선택</p>
		<ul class="list-group">
			<li class="list-group-item board-body board-header">
				<div class="row">
					<div class="col-sm-3 col-xs-3">
						<span>닉네임</span>
					</div>
					<div class="col-md-3 col-xs-2">
						<span>티어</span>
					</div>
					<div class="col-sm-3 col-xs-3">
						<span>키</span>
					</div>
					<div class="col-sm-2 col-xs-2">
						<span>포지션</span>
					</div>
					<div class="col-md-1 col-xs-1">
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
					<div class="col-sm-3 col-xs-3">
						<span>172cm</span>
					</div>
					<div class="col-sm-2 col-xs-2">
						<span>PG</span>
					</div>
					<div class="col-md-1 col-xs-1 custom-control custom-checkbox">
						<input type="checkbox" id="checkbox01" class="custom-control-input">
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
					<div class="col-sm-3 col-xs-3">
						<span>172cm</span>
					</div>
					<div class="col-sm-2 col-xs-2">
						<span>PG</span>
					</div>
					<div class="col-md-1 col-xs-1 custom-control custom-checkbox">
						<input type="checkbox" id="checkbox01" class="custom-control-input">
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
					<div class="col-sm-3 col-xs-3">
						<span>172cm</span>
					</div>
					<div class="col-sm-2 col-xs-2">
						<span>PG</span>
					</div>
					<div class="col-md-1 col-xs-1 custom-control custom-checkbox">
						<input type="checkbox" id="checkbox01" class="custom-control-input">
					</div>
				</div>
			</li>
		</ul>
		<hr />
		<p>엔트리</p>
		
		<ul class="list-group">
			<li class="list-group-item board-body board-header">
				<div class="row">
					<div class="col-md-1 col-xs-1">
						<span>번호</span>
					</div>
					<div class="col-sm-3 col-xs-3">
						<span>닉네임</span>
					</div>
					<div class="col-md-3 col-xs-2">
						<span>티어</span>
					</div>
					<div class="col-sm-3 col-xs-3">
						<span>키</span>
					</div>
					<div class="col-sm-2 col-xs-2">
						<span>포지션</span>
					</div>
				
				</div>
			</li>


			<li class="list-group-item board-body">
				<div class="row">
					<div class="col-md-1 col-xs-1">
						<span>1</span>
					</div>
					<div class="col-sm-3 col-xs-3">
						<span>아맞네</span>
					</div>
					<div class="col-md-3 col-xs-2">
						<span>2Level</span>
					</div>
					<div class="col-sm-3 col-xs-3">
						<span>173cm</span>
					</div>
					<div class="col-sm-2 col-xs-2">
						<span>PG</span>
					</div>
				
				</div>
			</li>
			<li class="list-group-item board-body">
				<div class="row">
					<div class="col-md-1 col-xs-1">
						<span>2</span>
					</div>
					<div class="col-sm-3 col-xs-3">
						<span>규쿤</span>
					</div>
					<div class="col-md-3 col-xs-2">
						<span>2Level</span>
					</div>
					<div class="col-sm-3 col-xs-3">
						<span>175cm</span>
					</div>
					<div class="col-sm-2 col-xs-2">
						<span>PF</span>
					</div>
				
				</div>
			</li>
			<li class="list-group-item board-body">
				<div class="row">
					<div class="col-md-1 col-xs-1">
						<span>3</span>
					</div>
					<div class="col-sm-3 col-xs-3">
						<span>규쿤동생</span>
					</div>
					<div class="col-md-3 col-xs-2">
						<span>4Level</span>
					</div>
					<div class="col-sm-3 col-xs-3">
						<span>175cm</span>
					</div>
					<div class="col-sm-2 col-xs-2">
						<span>C</span>
					</div>
				
				</div>
			</li>
		</ul>
 </div>
 <div class="col-md-3"></div>
 <div class="col-md-3">
 	<button class="btn btn-submit btn-default btn-block">엔트리 확정</button>
 </div>
 <div class="col-md-3">
 	<button class="btn btn-default btn-block">취 소</button>
 </div>
 <div class="col-md-3"></div>

</div>

</html>