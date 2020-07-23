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
<title>문의/신고 - 신고조회.jsp</title>
<style type="text/css">

.flex /* flex용  */
{
	display: flex;
}

/* 신고대상입력, 신고정보입력  */
#report_target_value, #report_info_value 
{
	width: 480px;
	cursor: auto;
	background-color: white;
}

/* 신고내용, 신고카테고리, 신고일, 신고대상, 신고정보, 신고자, 담당자, 처리완료일시, 진행상태, 담당배정일시,  */
#report_content_name, #report_category_name, #report_date_name, #report_target_name, #report_info_name
,#report_reporter_name, #report_manager_name, #report_complete_date_name, #report_progress_name
,#report_manager_date_name				
{
	width: 120px;
	text-align: center;
	margin-bottom: 5px;
	background-color: orange;
	font-weight: bold;
}

/* 신고카테고리입력, 신고자입력, 신고일입력, 담당자입력 */
#report_category_value,#report_reporter_value, #report_date_value, #report_manager_value
{
	width: 180px;
	margin-bottom: 5px;
	cursor: auto;
	background-color: white;
}

/* 신고내용 입력 */
#report_content_value 
{
	width: 796px;
	text-align: center;
	cursor: auto;
	background-color: white;
}

#report_manager_date_value, #report_complete_date_value, #report_progress_value
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

#report_answer /* 큰 내용(답변)입력 */
{
	resize: none;
	margin-bottom: 7px;
	cursor: auto;
	background-color: white;
}

#report_manager_value
{
	color: red;
	font-weight: bold;
}

#report_progress_value
{
	color: blue;
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
         <h5>고객센터 > 문의/신고 > 신고조회</h5>
         <hr />
      </div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<div class="flex">
				<div class="form-control" id="report_target_name">
					신고대상
				</div>
				
				<div>
					<input type="text" class="form-control" id="report_target_value" value="태균쨩맨" readonly="readonly">
				</div>
			</div>
			
			<div class="flex">
				<div class="form-control" id="report_info_name">
					신고정보
				</div>
				
				<div>
					<input type="text" class="form-control" id="report_info_value" value="나는 빡빡이다 나는 빡빡이다" readonly="readonly">
				</div>
				
				<div class="form-control" id="report_manager_date_name">
					담당배정일시
				</div>
				
				<div>
					<input type="text" class="form-control" id="report_manager_date_value" value="2020.07.10" readonly="readonly">
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
				<div class="form-control" id="report_category_name">
					카테고리
				</div>
				
				<div>
					<input type="text" class="form-control" id="report_category_value" value="도배/댓글반복" readonly="readonly">
				</div>
				
			<div class="flex">
				<div class="form-control" id="report_manager_name">
					담당자
				</div>
				
				<div>
					<input type="text" class="form-control" id="report_manager_value" value="GM진녕" readonly="readonly">
				</div>
			</div>
			
			<div class="flex">
				<div class="form-control" id="report_complete_date_name">
					처리완료일시
				</div>
				
				<div>
					<input type="text" class="form-control" id="report_complete_date_value" readonly="readonly">
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
				<div class="form-control" id="report_reporter_name">
					신고자
				</div>
				
				<div>
					<input type="text" class="form-control" id="report_reporter_value" value="동규는못말려12" readonly="readonly">
				</div>
			</div>
			
			<div class="flex">
				<div class="form-control" id="report_date_name">
					신고일
				</div>
				
				<div>
					<input type="text" class="form-control" id="report_date_value" value="2020.07.07" readonly="readonly">
				</div>
			</div>
			
			<div class="flex">
				<div class="form-control" id="report_progress_name">
					진행상태
				</div>
				
				<div>
					<input type="text" class="form-control" id="report_progress_value" value="처리중" readonly="readonly">
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
				<div class="form-control" id="report_content_name">
					신고내용
				</div>
				
				<div>
					<input type="text" class="form-control" id="report_content_value" value="나는빡빡이다 만 100번쓴놈 있어요 영구정지좀 ㅡㅡ;" readonly="readonly">
				</div>
			</div>
		
			<div>
				<textarea rows="25" cols="80" id="report_answer" class="form-control"></textarea>
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
						<button type="button" class="btn btn-warning" >반려처리</button> 
					</div>
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