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

<style type="text/css">
.panel {
	margin: 100px 0px 0px 0px;
}

.btn-group {
	text-align: center;
	margin: 160px auto auto auto;
	padding-left: 5%;
}

.userName {
	font-size: 12px;
}

.col-err {
	padding-top: 25px;
	text-align: center;
}

.err {
	color: red;
	font-size: 12px;
}

.col-next {
	padding-top: 20px;
	text-align: right;
}
</style>

</head>
<!-- playBasketball_party 팝업창  -->

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-xs-12 col-md-6">
				<div class="row">
					<div class="col-sm-5 col-md-5">
						<div class="panel panel-default">
							<div class="panel-heading">내 친구 목록</div>
							<div class="panel-body">
								<h4>
									아맞네<span class="userName">(문승주)</span>
								</h4>
								<h4>
									아맞네<span class="userName">(문승주)</span>
								</h4>
								<h4>
									아맞네<span class="userName">(문승주)</span>
								</h4>
							</div>
						</div>
					</div>
					<div class="col-sm-2 col-md-2 btn-group">
						<button class="btn btn-default btn-out">
							<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						</button>
						<button class="btn btn-default btn-in">
							<span class="glyphicon glyphicon-chevron-right"
								aria-hidden="true"></span>
						</button>
					</div>
					<div class="col-sm-5 col-md-5">
						<div class="panel panel-default">
							<div class="panel-heading">파티 멤버</div>
							<div class="panel-body">
								<h4>
									아맞네<span class="userName">(문승주)</span>
								</h4>
								<h4>
									아맞네<span class="userName">(문승주)</span>
								</h4>
								<h4>
									아맞네<span class="userName">(문승주)</span>
								</h4>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3"></div>
		</div>


		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<div class="row">
					<div class="col-md-5 col-err">
						<span class="err">※ 최소 1명에서 9명 까지 선택 가능합니다.</span>
					</div>
					<div class="col-md-2"></div>
					<div class="col-md-5 col-next">
						<button class="btn btn-default next-page">다음</button>
					</div>
				</div>
			</div>
			<div class="col-md-3"></div>
		</div>
	</div>
</html>