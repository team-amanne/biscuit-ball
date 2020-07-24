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
<title>회원관리 - 회원제재수정.jsp</title>
<style type="text/css">

.content
{
	margin-left: 30%;
	margin-top: 30px;
}

.content_title_name
{
	background-color: orange !important;
	color: white !important;
}

.content_frame
{
	height: 250px !important;
}

.type_name, .date_name, .reason_name
{
	width: 180px !important;
	text-align: center;
}

.type_value, .date_value, .reason_value
{
	width: 250px !important;
}

.calendar_value
{
	width: 50px !important;
	height: 30px !important;
}

.calendar_image
{
	font-size: 16pt;
}

.button
{
	margin-left: 12%;
	margin-top: 20px;
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
         <h5>회원관리 > 특정회원관리 > 회원제재수정</h5>
         <hr />
      </div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">	
			<div class="content_title">
				<input type="text" class="form-control content_title_name" id="content_title" value="회원제재수정" readonly="readonly">
			</div>
			
			<div class="form-control content_frame" id="content">
				<div class="content">
					<div class="type flex">
						<div class="form-control type_name" id="sanctions_type_name">제재종류</div>
						<select class="form-control type_value" id="type_value">
							<option selected="selected">제재종류를 선택해주세요</option>
							<option>정지 (사유, 기간 입력필요)</option>
							<option>경고 (사유 입력필요)</option>
							<option>제재취소</option>
						</select>
					</div>
					<div class="date flex">
							<div class="form-control date_name" id="calenda_time_name">기간</div>
								<input type="text" class="form-control date_value" id="calenda_time_value">
									<div class="form-control calendar_value" id="calenda_image_frame">
										<a href=""><span class="glyphicon glyphicon-calendar calendar_image" id="calenda_image"></span></a>
									</div>	
					</div>
					<div class="reason flex">
							<div class="form-control reason_name" id="calenda_reason_name">사유</div>
								<input type="text" class="form-control reason_value" id="calenda_reason_value">
					</div>	
									
					<div class="button">
						<input type="button" class="btn btn-warning button_middle" value="확인" id="confirm">
						<input type="button" class="btn btn-warning button_middle" value="취소" id="cancel">
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