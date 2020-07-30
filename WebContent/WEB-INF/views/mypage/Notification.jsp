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
.board-body {
	text-align: left;
}

.board-header {
	font-weight: bold;
}
.btn-del
{
	text-align: right;
	margin-bottom: 1%;
}
</style>


</head>
<body>

	<c:import url="../base/Header.jsp"></c:import>
	<c:import url="../base/Submenu.jsp"></c:import>


	<div class="container-fuild main">
		<div class="section-title container">
			마이페이지 > 알림
			<hr />
		</div>
		<div class="col-md-2"></div>
		<div class="col-md-8 col-xs-8">
			<p class="subtitle-text">알림</p>
			<hr />

			<div class="col-md-12 col-xs-12 btn-del">
				<button class="btn btn-default btn-submit  btn-sm"> 선택 삭제</button>
				<button class="btn btn-default btn-submit  btn-sm"> 전체 삭제</button>
			</div>
			<div class="col-md-12 col-xs-12 notification">
				<ul class="list-group">
					<li class="list-group-item board-body board-header">
						<div class="row">
							<div class="col-sm-10 col-xs-10">
								<span>시스템 알림</span>
								<input type="checkbox" class="inline-checkbox" value="">
							</div>
							<div class="col-sm-2 col-xs-2">
								<span>2020-07-21 17:00</span>
							</div>

						</div>
					</li>
					<li class="list-group-item board-body">
						<div class="row">
							<div class="col-sm-11 col-xs-11">
								<span>아맞네</span>(으)로부터 <span>친구 신청</span>이 왔습니다.
							</div>

							<div class="col-sm-1 col-xs-1">
								<button class="btn btn-defualt btn-submit btn-block btn-sm">
									삭 제</button>
							</div>

						</div>
					</li>
				</ul>

				<ul class="list-group">
					<li class="list-group-item board-body board-header">
						<div class="row">
							<div class="col-sm-10 col-xs-10">
								<span>메시지 알림</span>
								<input type="checkbox" class="inline-checkbox" value="">
							</div>
							<div class="col-sm-2 col-xs-2">
								<span>2020-07-21 12:00</span>
							</div>

						</div>
					</li>
					<li class="list-group-item board-body">
						<div class="row">
							<div class="col-sm-11 col-xs-11">
								<span>아맞네동생</span>(으)로부터 <span>메시지</span>이(가) 왔습니다.
							</div>

							<div class="col-sm-1 col-xs-1">
								<button class="btn btn-defualt btn-submit btn-block btn-sm">
									삭 제</button>
							</div>

						</div>
					</li>
				</ul>
			</div>


		</div>
		<hr />
		<div class="col-md-2"></div>
	</div>


</body>
</html>