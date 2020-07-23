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


<title>코트 투표</title>

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
					<p class="title-text">코트 투표</p>
					<hr>
				</div>
				<div class="row">
				<div class="col-sm-1 col-xs-1"></div>
					<div class="col-sm-2 col-xs-3 panel panel-default">
					
						<div class="row  board-header board-body">
							<span class="subtitle-text">찬성</span>
						</div>
						<div class="row board-body  panel-body">
							<span class="subtitle-text">6</span>
						</div>
						<div class="row board-body  panel-body">
							<button type="button" class="btn btn-default btn">
								<span class="far fa-thumbs-up" style="font-size: 18px;"></span>
							</button>
						</div>
					</div>
					<div class="col-sm-1 col-xs-1"></div>
					<div class="col-sm-2 col-xs-3  panel panel-default">
						<div class="row  board-header board-body">
							<span class="subtitle-text">반대</span>
						</div>
						<div class="row board-body  panel-body">
							<span class="subtitle-text">6</span>
						</div>
						<div class="row board-body  panel-body">
							<button type="button" class="btn btn-default btn">
								<span class="far fa-thumbs-down" style="font-size: 18px;"></span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>