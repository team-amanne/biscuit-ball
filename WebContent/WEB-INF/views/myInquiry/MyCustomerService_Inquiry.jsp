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
<title>내담당 문의/신고 - 특정문의조회.jsp</title>
<style type="text/css">

.inquiry_date_value
{
	background-color: white !important;
	cursor: auto !important;
	text-align: center;
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
         <h5>내담당 문의/신고 > 특정 문의 조회</h5>
         <hr />
      </div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<div class="manager_date flex">				
				<div class="form-control manager_date_name">
					담당배정일시
				</div>
				<div class="manager_date_value">
					<input type="text" class="form-control manager_date_value" id="inquiry_manager_date_value" value="2020.07.05" readonly="readonly">
				</div>
			</div>
		</div>
		<div class="col-md-2">
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8 flex">
			<div class="category flex">
				<div class="form-control category_name">
					카테고리
				</div>
				<div class="category_value">
					<input type="text" class="form-control category_value" id="inquiry_category_value" value="농구하기" readonly="readonly">
				</div>
			</div>
			<div class="manager flex">
				<div class="form-control manager_name">
					담당자
				</div>
				<div class="manager_value">
					<input type="text" class="form-control manager_value" id="inquiry_manager_value" value="GM한별" readonly="readonly">
				</div>
			</div>
			<div class="complete_date flex">
				<div class="form-control complete_date_name">
					처리완료일시
				</div>
				<div class="complete_date_value">
					<input type="text" class="form-control complete_date_value" id="inquiry_complete_date_value" value="2020.07.06" readonly="readonly">
				</div>
			</div>
		</div>
		<div class="col-md-2">
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8 flex">
			<div class="username flex">
				<div class="form-control username_name">
					문의자
				</div>
				<div class="username_value">
					<input type="text" class="form-control username_value" id="inquiry_username_value" value="일진승주" readonly="readonly">
				</div>
			</div>
			<div class="inquiry_date flex">
				<div class="form-control inquiry_date_name">
					문의일
				</div>
				<div class="inquiry_date_value">
					<input type="text" class="form-control inquiry_date_value" id="inquiry_date_value" value="2020.07.04" readonly="readonly">
				</div>
			</div>
			
			<div class="state flex">
				<div class="form-control state_name">
					진행상태
				</div>
				<div class="progress_value">
					<input type="text" class="form-control state_value" id="inquiry_state_value" value="처리완료" readonly="readonly">
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
			<div class="title flex">
				<div class="form-control title_name">
					문의제목
				</div>
				<div class="title_value">
					<input type="text" class="form-control title_value" id="inquiry_title_value" value="빠른농구가 다른지역만 잡힙니다. 미치겠어요" readonly="readonly">
				</div>
			</div>
			<div class="content">
				<textarea rows="25" cols="" id="inquiry_content_value" class="form-control content_value" readonly="readonly">
빠른농구를 시작하면 다른지역만 잡힙니다 

무슨 문제가 있는걸까요?

--------------------------------------------------------------------------------

				</textarea>
			</div>
		</div>
		<div class="col-md-2">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
		</div>
			<div class="col-md-8">	
				<div class="bottom_clickbutton">
					<div class="row"> 
						<div class="col-md-12 button_right">
							<button class="btn btn-warning button_middle" type="submit">돌아가기</button>
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