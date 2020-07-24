<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파티 생성</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/default.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/board.css">
<style type="text/css">

.err {
	color: red;
	font-size: 12px;
}

.board-header
{
	font-weight: bold;
	text-align: left;
}
.err-div
{
	text-align: right;
	padding-bottom: 1%;
}
</style>

</head>
<!-- playBasketball_party 팝업창  -->

<div class="col-md-6">
		<p class="subtitle-text">파티 선택</p>
	
		
		<div class="col-md-6 col-xs-6">
			<ul class="list-group">
				<li class="list-group-item board-body board-header">
					<div class="row">
						<div class="col-sm-12 col-xs-12">
							<span>친구 목록</span>
						</div>
					</div>
				</li>
				<li class="list-group-item board-body">
					<div class="row">
						<div class="col-sm-4 col-xs-4">
							<span>아맞네</span>
						</div>
						<div class="col-sm-4 col-xs-4">
							<span>2Level</span>
						</div>
						<div class="col-sm-4 col-xs-4">
							<button class="btn-xs btn-default btn btn-submit">추가</button>
						</div>
					</div>
				</li>
				<li class="list-group-item board-body">
					<div class="row">
						<div class="col-sm-4 col-xs-4">
							<span>아맞네</span>
						</div>
						<div class="col-sm-4 col-xs-4">
							<span>2Level</span>
						</div>
						<div class="col-sm-4 col-xs-4">
							<button class="btn-xs btn-default btn btn-submit">추가</button>
						</div>
					</div>
				</li>
				<li class="list-group-item board-body">
					<div class="row">
						<div class="col-sm-4 col-xs-4">
							<span>아맞네</span>
						</div>
						<div class="col-sm-4 col-xs-4">
							<span>2Level</span>
						</div>
						<div class="col-sm-4 col-xs-4">
							<button class="btn-xs btn-default btn btn-submit">추가</button>
						</div>
					</div>
				</li>
			</ul>
		</div>
		
		<div class="col-md-6 col-xs-6">
			<ul class="list-group">
				<li class="list-group-item board-body board-header">
					<div class="row">
						<div class="col-sm-12 col-xs-12">
							<span>파티 멤버</span>
						</div>
					</div>
				</li>
				<li class="list-group-item board-body">
					<div class="row">
						<div class="col-sm-4 col-xs-4">
							<span>아맞네</span>
						</div>
						<div class="col-sm-4 col-xs-4">
							<span>2Level</span>
						</div>
						<div class="col-sm-4 col-xs-4">
							<button class="btn-xs btn-default btn btn-submit">삭제</button>
						</div>
					</div>
				</li>
				<li class="list-group-item board-body">
					<div class="row">
						<div class="col-sm-4 col-xs-4">
							<span>아맞네</span>
						</div>
						<div class="col-sm-4 col-xs-4">
							<span>2Level</span>
						</div>
						<div class="col-sm-4 col-xs-4">
							<button class="btn-xs btn-default btn btn-submit">삭제</button>
						</div>
					</div>
				</li>
				<li class="list-group-item board-body">
					<div class="row">
						<div class="col-sm-4 col-xs-4">
							<span>아맞네</span>
						</div>
						<div class="col-sm-4 col-xs-4">
							<span>2Level</span>
						</div>
						<div class="col-sm-4 col-xs-4">
							<button class="btn-xs btn-default btn btn-submit">삭제</button>
						</div>
					</div>
				</li>
			</ul>

		</div>
		<div class="col-md-12 err-div">
			<span class="err">※ 파티원은 1명 이상, 9명 이하로 선택해주세요</span>
		</div>
		<div class="col-md-12 col-xs-12">
		<div class="col-md-3 col-xs-3"></div>
		<div class="col-md-3 col-xs-3">
		<button class="btn btn-default btn-block btn-submit" id="">선택 완료</button>
		</div>
		<div class="col-md-3 col-xs-3">
		<button class="btn btn-default btn-block">닫 기</button>
		</div>
		<div class="col-md-3 col-xs-3"></div>
		</div>

	</div>		

</html>