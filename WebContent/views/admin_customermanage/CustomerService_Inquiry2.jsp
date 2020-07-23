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
<title>문의/신고 - 문의조회.jsp</title>
<style type="text/css">

/* flex용  */
.flex
{
	display: flex;
}

/* 문의대상입력, 문의정보입력  */
#inquiry_target_value, #inquiry_info_value 
{
	width: 480px;
	cursor: auto;
	background-color: white;
}

/* 문의내용, 문의카테고리, 문의일, 문의대상, 문의정보, 문의자, 담당자, 처리완료일시, 진행상태, 담당배정일시 */
#inquiry_content_name, #inquiry_category_name, #inquiry_date_name, #inquiry_target_name, #inquiry_info_name
,#inquiry_reporter_name, #inquiry_manager_name, #inquiry_complete_date_name, #inquiry_progress_name			
{
	width: 120px;
	text-align: center;
	margin-bottom: 5px;
	background-color: orange;
	font-weight: bold;
}

/* 담당배정 */
#inquiry_manager_date_name
{
	width: 120px;
	margin-left: 15.9cm;
	margin-bottom: 5px;
	background-color: orange;
	font-weight: bold;
}

/* 문의카테고리입력, 문의자입력, 문의일입력, 담당자입력 */
#inquiry_category_value, #inquiry_reporter_value, #inquiry_date_value, #inquiry_manager_value
{
	width: 180px;
	margin-bottom: 5px;
	cursor: auto;
	background-color: white;
}

/* 문의내용 입력 */
#inquiry_content_value 
{
	width: 796px;
	text-align: center;
	cursor: auto;
	background-color: white;
}

/* 담당배정일, 처리완료일, 진행상태 */
#inquiry_manager_date_value, #inquiry_complete_date_value, #inquiry_progress_value
{
	width: 196px;
	cursor: auto;
	background-color: white;
}

.buttons
{
	display: flex;
	margin-left: auto;
	margin-top: 5px;
}

.sub_button
{
	margin-left: 5px;
}

/* 큰 내용(답변)입력 */
#inquiry_answer 
{
	resize: none;
	margin-bottom: 7px;
	cursor: auto;
	background-color: white;
}

/* 진행상태입력, 담당자 입력 */
#inquiry_progress_value, #inquiry_manager_value
{
	color: red;
	font-weight: bold;
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
         <h5>고객센터 > 문의/신고 > 문의조회</h5>
         <hr />
      </div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">

			<div class="flex">				
				<div class="form-control" id="inquiry_manager_date_name">
					담당배정일시
				</div>
				
				<div>
					<input type="text" class="form-control" id="inquiry_manager_date_value" value="2020.07.05" readonly="readonly">
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
				<div class="form-control" id="inquiry_category_name">
					카테고리
				</div>
				
				<div>
					<input type="text" class="form-control" id="inquiry_category_value" value="농구하기" readonly="readonly">
				</div>
				
			<div class="flex">
				<div class="form-control" id="inquiry_manager_name">
					담당자
				</div>
				
				<div>
					<input type="text" class="form-control" id="inquiry_manager_value" value="GM한별" readonly="readonly">
				</div>
			</div>
			
			<div class="flex">
				<div class="form-control" id="inquiry_complete_date_name">
					처리완료일시
				</div>
				
				<div>
					<input type="text" class="form-control" id="inquiry_complete_date_value" value="2020.07.06" readonly="readonly">
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
		
			<div class="flex">
				<div class="form-control" id="inquiry_reporter_name">
					문의자
				</div>
				
				<div>
					<input type="text" class="form-control" id="inquiry_reporter_value" value="일진승주" readonly="readonly">
				</div>
			</div>
			
			<div class="flex">
				<div class="form-control" id="inquiry_date_name">
					문의일
				</div>
				
				<div>
					<input type="text" class="form-control" id="inquiry_date_value" value="2020.07.04" readonly="readonly">
				</div>
			</div>
			
			<div class="flex">
				<div class="form-control" id="inquiry_progress_name">
					진행상태
				</div>
				
				<div>
					<input type="text" class="form-control" id="inquiry_progress_value" value="처리완료" readonly="readonly">
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
		
			<div class="flex">
				<div class="form-control" id="inquiry_content_name">
					문의제목
				</div>
				
				<div>
					<input type="text" class="form-control" id="inquiry_content_value" value="빠른농구가 다른지역만 잡힙니다. 미치겠어요" readonly="readonly">
				</div>
			</div>
		
			<div>
				<textarea rows="25" cols="80" id="inquiry_answer" class="form-control" readonly="readonly">
빠른농구를 시작하면 다른지역만 잡힙니다 

무슨 문제가 있는걸까요?

--------------------------------------------------------------------------------

안녕하세요! GM한별 입니다!  문의해주신 내용은 잘 읽어보았습니다~

확인해본결과 데이터베이스 서버점검 으로 인해서 발생한 오류인것 같습니다.

현재 서버에 대한 조치를 취하는 중이오니 10~20분뒤 안정화 될 예정입니다.

불편을 끼쳐 죄송합니다. 더욱더 즐겁고 쾌적한 비스킷볼이 되도록 하겠습니다

감사합니다 ^^.
				</textarea>
			</div>
		</div>
		<div class="col-md-2">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
		</div>
			<div class="col-md-8 buttons">	
				<div class="buttons">
					<div class="sub_button">
						<button type="button" class="btn btn-warning" >담당자변경</button> 
					</div>
					<div class="sub_button">
						<button type="button" class="btn btn-warning" >게시물 이동</button> 
					</div>
					<div class="sub_button">
						<button type="button" class="btn btn-warning" >처리완료</button> 
					</div>
					<div class="sub_button">
						<button type="button" class="btn btn-warning" >돌아가기</button> 
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