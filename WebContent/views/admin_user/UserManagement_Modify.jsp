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

/* 내용 틀*/
#content
{
	height: 300px;
}

/* 내용 */
.content
{
	cursor: auto;
	background-color: white;
}

/* 게시물변경 팝업명  */
#content_title
{
	background-color: orange;
	cursor: auto;
	font-size: 18pt;
	font-weight: bold;
}

/* 확인, 취소 버튼 */
#confirm, #cancel
{
	font-size: 24pt;
	font-weight: bold;
	width: 200px;
	margin-left: 10px;
}

/* 확인, 취소 버튼 크기 및 위치정렬 */
.button
{
	margin-top: 35px;
	text-align: center;
}

/* 달력 그림 크기 */
#calenda_image
{
	font-size: 24pt;
}

/* 달력 그림 감싸기용 div */
#calenda_image_frame
{
	width: 60px;
	height: 44px;
	text-align: center;
	margin-left: 5px;
}

/* 기간입력 이름, 사유입력 이름 */
#calenda_time_name, #calenda_reason_name
{
	width: 120px;
	text-align: center;
	background-color: orange;
	font-weight: bold;
	font-size: 14pt;
}

/* 제재종류 이름 */
#sanctions_type_name
{
	width: 120px;
	background-color: orange;
	font-weight: bold;
	font-size: 14pt;
	margin-bottom: 5px;
}

/* 제재종류 선택(셀랙트) */
#sanctions_type_value
{
	width: 250px;
}

/* 기간 입력창 */
#calenda_time_value
{
	width: 340px;
}

/* 사유 입력창 */
#calenda_reason_value
{
	width: 404px;
}


/* 내용물 작성 */
.text
{
	margin-top: 20px;
	font-size: 14pt;
	text-align: center;
	font-weight: bold;
	display: flex;
	margin-left: auto;
	width: 74%;
}

.text2
{
	display: flex;
	margin-top: 5px;
	margin-left: auto;
	width: 74%;
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
			
			<div class="frame">
				<input type="text" class="form-control" id="content_title" value="회원제재수정" readonly="readonly">
			</div>
			
			<div class="form-control" id="content">
				<div class="content">
					<div class="text">
						<div class="form-control" id="sanctions_type_name">제재종류</div>
						<select class="form-control" id="sanctions_type_value">
							<option selected="selected">제재종류를 선택해주세요</option>
							<option>정지 (사유, 기간 입력필요)</option>
							<option>경고 (사유 입력필요)</option>
							<option>제재취소</option>
						</select>
					</div>
					<div class="text2">
							<div class="form-control" id="calenda_time_name">기간</div>
								<input type="text" class="form-control" id="calenda_time_value">
									<div class="form-control" id="calenda_image_frame">
										<a href=""><span class="glyphicon glyphicon-calendar" id="calenda_image"></span></a>
									</div>	
					</div>
					<div class="text2">
							<div class="form-control" id="calenda_reason_name">사유</div>
								<input type="text" class="form-control" id="calenda_reason_value">
					</div>	
									
					<div class="button">
						<input type="button" class="btn btn-warning" value="확인" id="confirm">
						<input type="button" class="btn btn-warning" value="취소" id="cancel">
					</div>
				</div>
			</div>
		</div>
		
		<div class="col-md-2">
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">		
		</div>
		<div class="col-md-2">
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
		</div>
		<div class="col-md-2">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">		
		</div>
		<div class="col-md-2">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
		</div>
			<div class="col-md-8">			
			</div>
		<div class="col-md-2">
		</div>
	</div>
</div>

<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>