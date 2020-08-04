<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
%>

<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BiscuitBail > 모임개설</title>
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
$(function() {
	
	var tier = "${userDto.tierName}";
	var now = new Date();
    var year = now.getFullYear();
    var month = now.getMonth() + 1;
    var date = now.getDate();
	var userBirthday = "${userDto.userBirthday}".substring(0,4);
	var age = year - parseInt(userBirthday)+1;
	
	
	for(var i=parseInt(tier); i<=5; i=i+1) {        
        var html;
        html += "<option value="+userBirthday+">LV."+i+"</option>"
    }
    $("#tier-check").append(html);
    
    
    for(var i=0; i<=Math.floor(age/10)*10; i=i+10) {        
        var minage;
        minage += "<option value="+i+">"+i+"대</option>"
    }
    $("#minage-check").append(minage);

    for(var i=Math.floor(age/10)*10; i<=100; i=i+10) {        
        var maxage;
        maxage += "<option value="+i+">"+i+"대</option>"
    }
    $("#maxage-check").append(maxage);

    
    $("#mapSearch").click(function() {

    	var regionSelect = $("#regionSelect").val();
    	var citySelect = $("#citySelect").val();
    	var cityCode = $("#city-code").val();
    	alert(cityCode);
    	window.open('<%=cp%>/play/meeting/create/select?regionSelect=' + regionSelect + 
    			'&citySelect=' + citySelect + '&cityCode=' + cityCode
    			, "map", "width = 500, height = 500, top = 100, left = 200, location = no");
   	});
    
});



</script>


</head>
<body>

<!-- ?email='+ email" -->
	<!-- 헤더 -->
<c:import url="../base/Header.jsp?active=play"></c:import>
<c:import url="../base/PlaySubmenu.jsp"></c:import>

<!------------------------------------------ 바디 ------------------------------------------------>
	<div class="container-fluid main">
		<!------------------------------------------ 섹션 ---------------------------------------->
		<div class="section-title container">
			<h5></h5>
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
							<c:out value="${today}"/>

							<div class="row">
								<div class="col-md-8">
									<div class="panel panel-default">
									
										<div class="panel-heading">모임 지역 선택</div>
										<div class="panel-body">
											<div class="col-sm-4">
												<input type="text" name="regionSelect" id="regionSelect" class="form-control" value="<%=request.getParameter("regiondata") %>">
												<input type="hidden" name="region-code" id="region-code" value="<%=request.getParameter("region_select") %>">													
											</div>
											<div class="col-sm-4">	
												<input type="text" name="citySelect" id="citySelect" class="form-control" value="<%=request.getParameter("citydata") %>">
												<input type="hidden" name="city-code" id="city-code" value="<%=request.getParameter("city_select") %>">									
												
											</div>
											<div class="col-sm-3">
												<button class="btn btn-default btn-submit btn-block" id="mapSearch">
													검색</button>
											</div>
											<hr>
										<div class="row">
											<div class="col-sm-2">
											</div>
											<div class="col-sm-6">
												<input type="text" name="courtSelect" id="courtSelect" class="form-control" value="코트이름" disabled="disabled">
											</div>
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
														<input type="text" id="datePicker" class="form-control" placeholder="<%= sf.format(nowTime) %>">
														</div>
													</div>
													
													<div class="col-md-4">
														<div class="input-group">
														<span class="input-group-addon">시작 시간</span>
														<select name="start-time" id="start-time7" class="form-control">
															<option value="">시간선택</option>
														</select>
														</div>
													</div>

													<div class="col-md-4">
														<div class="input-group">
														<span class="input-group-addon">끝 시간</span>
														<select name="end-time" id="end-time" class="form-control">
															<option value="">시간선택</option>
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
														placeholder="<%= sf.format(nowTime) %>">
														</div>
													</div>
													<div class="col-md-3">
														<select name="" id="" class="form-control">
															<c:forEach var="i" begin="0" end="24">
													<option value="${i}">
														<c:choose>
															<c:when test="${i <10}">
							                                 	0${i }:00
							                                 </c:when>
															<c:otherwise>
						                                 		${i }:00
						                                 	</c:otherwise>
														</c:choose>
													</option>
												</c:forEach>
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
													<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="">
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
													<select name="tier-check" id="tier-check" class="form-control">
														<option value="">누구나</option>
													</select>
												</div>
											</div>
										</div>
										<div class="col-md-5">
											<div class="panel panel-default">
												<div class="panel-heading">나이 제한</div>
												<div class="panel-body">
													<div class="col-md-3 age">
													<select name="minage-check" id="minage-check" class="form-control">
														<option value="ZY01">최소나이</option>
													</select>
													</div>
													<div class="col-md-1">
													<p class="middle">~</p>
													</div>
													<div class="col-md-3 age">
													<select name="maxage-check" id="maxage-check" class="form-control">
														<option value="">최대나이</option>
													</select>
													</div>
													<div class="col-md-4">
													<label class="radio-inline radio"> 
													<input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
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
													<button type="button" class="btn btn-default btn-lg btn-block">
														개설</button>
												</div>
												<div class="col-md-6">
													<button type="button" class="btn btn-default btn-lg btn-block" >
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