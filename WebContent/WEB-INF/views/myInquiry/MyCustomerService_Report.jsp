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
<title>내담당문의/신고 - 특정 신고조회.jsp</title>
<style type="text/css">


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
         <h5>내담당 문의/신고 > 특정 신고 조회</h5>
         <hr />
      </div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<div class="flex target">
				<div class="form-control target_name">
					신고대상
				</div>
				<div class="target_value">
					<input type="text" class="form-control target_value" id="report_target_value" value="태균쨩맨" readonly="readonly">
				</div>
			</div>
			<div class="flex report_info">
				<div class="form-control report_info_name">
					신고정보
				</div>
				<div class="report_info_value">
					<input type="text" class="form-control report_info_value" id="report_info_value" value="나는 빡빡이다 나는 빡빡이다" readonly="readonly">
				</div>
				
				<div class="form-control manager_date_name">
					담당배정일시
				</div>
				<div class="manager_date_value">
					<input type="text" class="form-control manager_date_value" id="report_manager_date_value" value="2020.07.10" readonly="readonly">
				</div>
			</div>
		</div>
		<div class="col-md-2">
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8 flex category">
				<div class="form-control category_name" id="report_category_name">
					카테고리
				</div>
				
				<div class="category_value">
					<input type="text" class="form-control category_value" id="report_category_value" value="도배/댓글반복" readonly="readonly">
				</div>
				
			<div class="flex manager">
				<div class="form-control manager_name">
					담당자
				</div>
				<div class="report_manager_value">
					<input type="text" class="form-control manager_value" id="report_manager_value" value="GM진녕" readonly="readonly">
				</div>
			</div>
			
			<div class="flex complete_date">
				<div class="form-control complete_date_name">
					처리완료일시
				</div>
				
				<div class="complete_date_value">
					<input type="text" class="form-control complete_date_value" id="report_complete_date_value" value="2020.07.11" readonly="readonly">
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
			<div class="flex username">
				<div class="form-control username_name">
					신고자
				</div>
				
				<div class="username_value">
					<input type="text" class="form-control username_value" id="report_reporter_value" value="동규는못말려12" readonly="readonly">
				</div>
			</div>
			
			<div class="flex report_date">
				<div class="form-control report_date_name">
					신고일
				</div>
				<div class="report_date_value">
					<input type="text" class="form-control report_date_value" id="report_date_value" value="2020.07.07" readonly="readonly">
				</div>
			</div>
			
			<div class="flex state">
				<div class="form-control state_name">
					진행상태
				</div>
				
				<div class="state_value">
					<input type="text" class="form-control state_value" id="report_progress_value" value="처리완료" readonly="readonly">
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
		
			<div class="flex title">
				<div class="form-control title_name" id="report_content_name">
					신고내용
				</div>
				
				<div class="title_value">
					<input type="text" class="form-control title_value" id="report_content_value" value="나는빡빡이다 만 100번쓴놈 있어요 영구정지좀 ㅡㅡ;" readonly="readonly">
				</div>
			</div>
		
			<div class="content">
				<textarea rows="25" cols="80" id="content_value" class="form-control content_value" readonly="readonly">
-----------------------------------------------------------------------
GM진녕 [ 태균쨩맨 ] 유저는 
확인결과 도배/댓글반복 위반으로 영구정지 처리 완료되었습니다 ^^
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