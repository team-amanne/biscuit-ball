<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>

<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js"
	crossorigin="anonymous"></script>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">


<title>심판프로필</title>

<!-- 부트스트랩/제이쿼리 -->
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<link rel="stylesheet" href="<%=cp%>/css/board.css" />
<link rel="stylesheet" href="<%=cp%>/css/default.css" />
</head>
<body>
	<div class="panel panel-default">
		<div class="col-md-4 panel-body">

			<div class="row">
				<div class="col-md-12">
					<p class="title-text">심판 프로필</p>
					<hr>
				</div>
			</div>
				<div class="panel panel-default">
					<div class="row" style="margin: 20px;">
						<div class="col-sm-3 col-xs-3 panel panel-default">
							<div class="row  board-header board-body">
								<span class="subtitle-text">심판신뢰도</span>
							</div>
							<div class="row board-body  panel-body">
								<span class="subtitle-text">80%</span>
							</div>
						</div>

						<div class="col-sm-1 col-xs-1"></div>
						<div class="col-sm-4 col-xs-4  panel panel-default">
							<div class="row  board-header board-body">
								<span class="subtitle-text">전체심판활동</span>
							</div>
							<div class="row board-body  panel-body">
								<span class="subtitle-text">10</span>
							</div>
						</div>

						<div class="col-sm-1 col-xs-1"></div>
						<div class="col-sm-3 col-xs-3  panel panel-default">
							<div class="row  board-header board-body">
								<span class="subtitle-text">무효경기</span>
							</div>
							<div class="row board-body  panel-body">
								<span class="subtitle-text">2</span>
							</div>
						</div>
						<div class="col-sm-1 col-xs-1"></div>
						
					</div>
					
				</div>
				<div class="row">
							<div class="col-sm-9 col-xs-9"></div>
							<div class="col-sm-3 col-xs-3">
								<button type="button" class="btn btn-default btn-link btn-block">확인</button>
							</div>
						</div>
			</div>
		</div>
</body>
</html>