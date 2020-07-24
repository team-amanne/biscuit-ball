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
<title>문의/신고 - 신고 담당자변경.jsp</title>
<style type="text/css">

.content_title_value
{
	background-color: orange !important;
}

.content
{
	height: 300px !important;
	font-size: 16pt !important;
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

.change
{
	margin-left: 43%;
	margin-bottom: 10px;
}

.button_small
{
	margin-left: 20px;
	margin-bottom: 10px;
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
         <h5>고객센터 > 문의/신고 > 신고조회 > 담당자변경</h5>
         <hr />
      </div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">		
			<div class="content_title">
				<input type="text" class="form-control content_title_value" id="content_title_value" value="담당자 변경" readonly="readonly">
			</div>
			
			<div class="form-control content">
				<div class="content_value align_center">
				<br>
					<div class="list">
						<div class="change flex">
							<div class="admin">
								<span>GM동규</span>
							</div>
							<div class="select">
								<input type="button" class="btn btn-warning button_small" value="선택">
							</div>
						</div>
						<div class="change flex">
							<div class="admin">
								<span>GM승주</span>
							</div>
							<div class="select">
								<input type="button" class="btn btn-warning button_small" value="선택">
							</div>
						</div>
						<div class="change flex">
							<div class="admin">
								<span>GM진녕</span>
							</div>
							<div class="select">
								<input type="button" class="btn btn-warning button_small" value="선택">
							</div>
						</div>
						<div class="change flex">
							<div class="admin">
								<span>GM한별</span>
							</div>
							<div class="select">
								<input type="button" class="btn btn-warning button_small" value="선택">
							</div>
						</div>
						<div class="change flex">
							<div class="admin">
								<span>GM성철</span>
							</div>
							<div class="select">
								<input type="button" class="btn btn-warning button_small" value="선택">
							</div>
						</div>
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