<%@page import="java.util.Calendar"%>
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
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/default.css">
<script type="text/javascript" src="https://code.jquery.com/jquery.min.js"></script>
<style type="text/css">
.form-head {
	font-weight: bold;
}

.subject
{
	margin-bottom: 30px;
}

h4 {
	font-weight: bold;
}

h3 {
	font-weight: bold;
}

select
{
	font-size: 10pt;
}

.radio
{
	vertical-align: baseline;
	padding-bottom: 4px;
}

#total_playTime
{
	margin-left: 65%;
	color: red;
	font-size: 10pt;
}

#err
{
	color: red;
	font-size: 10pt;
}

.age
{
	padding-right: 0px;
	padding-left: 0px;
}

.middle
{
	padding-right: 5px;
	padding-top: 5px;	
}

</style>
<script type="text/javascript">
	var
</script>

</head>
<body>

	<!-- 헤더 -->
<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/PlaySubmenu.jsp"></c:import>

<!------------------------------------------ 바디 ------------------------------------------------>
	<div class="container-fluid main">
		<!------------------------------------------ 섹션 ---------------------------------------->
		<div class="section-title container">
			<h5>농구하기 > 사용자선택 > 모임개설</h5>
			<hr />
		</div>

		<!------------------------------------------ 컨텐츠 영역 --------------------------------->
		<div class="row">
			<div class="col-md-3"></div>
			<form action="" class="createMeeting-form">
				<div class="col-md-6">
					<div class="row">
					
					<!--------------------------------모임개설 입력 패널 ------------------------->
					<h3>모임 개설 입력 사항</h3>
					<br>
					<div class="panel panel-default">
						<div class="panel-body">
								<!-------------------------모임제목 ------------------------------>
								<div class="input-group input-group-lg subject">
								<span class="input-group-addon">모임 제목</span>
								<input type="text" class="form-control">
							</div>
							<!----------------------------모임 설정 패널 ------------------------->
							<h4>모임 정보 입력</h4>
							${user.userCode }
							<div class="row">
								<div class="col-md-8">
									<div class="panel panel-default">
									
										<div class="panel-heading">모임 지역 선택</div>
										<div class="panel-body">
											<div class="col-md-4">
												<select name="" id="" class="form-control">
													<option value=""> 
													<%=request.getParameter("citydata") %>
													</option>
													
												</select>
											</div>
											<div class="col-md-4">
												<select name="" id="" class="form-control">
													<option value=""><%=request.getParameter("regiondata") %></option>
												</select>
											</div>
											<div class="col-md-4">
												<button class="btn btn-default btn-md btn-block">
													지도검색</button>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="panel panel-default">
										<div class="panel-heading">빠른농구 여부</div>
										<div class="panel-body playtype">
											
											
											<label class="radio-inline radio" > 
											<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
												빠른농구
											</label> 
											<label class="radio-inline radio"> 
											<input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
												함께농구
											</label>
										
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="col-md-12">
											<div class="panel panel-default">
												<div class="panel-heading">
													모임 시간
													<span id="total_playTime">*예상 플레이 시간 : <span>n 시간</span></span>
												</div>
												<div class="panel-body">
												
													<div class="col-md-4">
														<div class="input-group">
														<input type="text" id="datePicker" class="form-control" placeholder="2020-07-06">
														<span class="input-group-btn">
															<button class="btn btn-default">달력 선택</button>
														</span>
														</div>
													</div>
													
													<div class="col-md-4">
														<div class="input-group">
														<span class="input-group-addon">시작 시간</span>
														<select name="" id="" class="form-control">
															<option value="">12:00</option>
														</select>
														</div>
													</div>

													<div class="col-md-4">
														<div class="input-group">
														<span class="input-group-addon">끝 시간</span>
														<select name="" id="" class="form-control">
															<option value="">14:00</option>
														</select>
														</div>
													</div>
												</div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">
												모집 종료 시간
												</div>
												<div class="panel-body">

													<div class="col-md-4">
														<div class="input-group">
														<%
															Calendar cal = Calendar.getInstance();
														%>

														<input type="text" id="datePicker" class="form-control" 
														placeholder="<%= cal.get(Calendar.YEAR) %>">
														</div>
													</div>
													<div class="col-md-3">
														<select name="" id="" class="form-control">
															<option value="">14:00</option>
														</select>
													</div>
													<div class="col-md-5">
													<span id="err">*모집 종료 시간은 모임 시작 3시간 전 까지 설정 가능.</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="col-md-4">
											<div class="panel panel-default">
												<div class="panel-heading">성별 조건</div>
												<div class="panel-body">
													<label class="radio-inline radio" > 
													<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
														나와 같은 성별
													</label> 
													<label class="radio-inline radio"> 
													<input type="radio" name="inlineRadioOptions" id="inlineRadio2" checked="checked" value="option2">
														상관 없음
													</label>
												</div>
											</div>
										</div>
										<div class="col-md-3">
											<div class="panel panel-default">
												<div class="panel-heading">최소 실력</div>
												<div class="panel-body">
													<select name="" id="" class="form-control">
														<option value="">실력 등급 선택</option>
													</select>
												</div>
											</div>
										</div>
										<div class="col-md-5">
											<div class="panel panel-default">
												<div class="panel-heading">나이 제한</div>
												<div class="panel-body">
													<div class="col-md-3 age">
													<select name="" id="" class="form-control">
														<option value="">20대</option>
													</select>
													</div>
													<div class="col-md-1">
													<p class="middle">~</p>
													</div>
													<div class="col-md-3 age">
													<select name="" id="" class="form-control">
														<option value="">30대</option>
													</select>
													</div>
													<div class="col-md-4">
													<label class="radio-inline radio"> 
													<input type="radio" name="inlineRadioOptions" id="inlineRadio2" checked="checked" value="option2">
														누구나
													</label>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="col-md-12">
											<h4>공지사항</h4>
											<div class="panel panel-default">
												<div class="panel-body">
													<textarea class="form-control"></textarea>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="row">
											<div class="col-md-4"></div>
											<div class="col-md-4">
												<div class="col-md-6">
													<button class="btn btn-default btn-lg btn-block">
														개설</button>
												</div>
												<div class="col-md-6">
													<button class="btn btn-default btn-lg btn-block">
														취소</button>
												</div>
											</div>
											<div class="col-md-4"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3"></div>
				</div>
				</div>
			</form>
		
		</div>
	</div>
<!----------------------------바디 영역 끝 ------------------------->
	<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>