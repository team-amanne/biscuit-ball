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
	text-align: center;
	font-size: 12pt;
	padding-top: 1%;
}

</style>
</head>

<div class="col-md-6">

	<p class="title-text">대전 신청 수신</p>

	<div class="col-md-12">
		<div class="panel panel-default">
			<div class="panel-body">
				<p class="subtitle-text">
					대전 신청 수락이 완료됐습니다.
				</p>
			</div>
		</div>
	</div>
	
</div>

</html>