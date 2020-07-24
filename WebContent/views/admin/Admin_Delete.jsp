<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>괸리자 계정삭제.jsp</title>
<style type="text/css">

.content_title_value
{
	background-color: orange !important;
}

.content
{
	height: 210px !important;
	font-size: 24pt !important;
	font-weight: bold !important;
}

.button
{
	margin-left: 32%;
}

.confirm
{
	margin-right: 10px;
}

</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/board.css">
</head>
<body>

	<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/Submenu.jsp"></c:import>

<div class="container-fluid">
      <div class="section-title container">
         <h5>관리자 계정 삭제</h5>
         <hr />
      </div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">	
			<div class="content_title">
				<input type="text" class="form-control content_title_value" id="content_title_value" value="게시물 변경" readonly="readonly">
			</div>
			
			<div class="form-control content">
				<div class="content_value align_center">
				<br>
						정말로 이 계정을 삭제시키시겠습니까?
				</div>
				<div class="button flex">
					<div class="confirm">
						<input type="button" class="btn btn-warning button_large" value="확인" id="confirm">
					</div>
					<div class="cancel">
						<input type="button" class="btn btn-warning button_large" value="취소" id="cancel">
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-2">
		</div>
	</div>
</div>

<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>