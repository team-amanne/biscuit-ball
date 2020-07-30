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
<title>메인</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="<%=cp %>/css/default.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style type="text/css">
.test-carousel {
	height: 500px;
}

.date-select {
	margin: 50px 20px 20px 40px;
	clear: both;
}

.p_default {
	padding-top: 10px;
}
.meeting_content
{
	padding-left: 70px;
}

.meeting_info
{
	/* padding-left: 20px; */
	margin-top: 2%;
	height: 90px;
	background-color: orange;
	background: #ffad33;
	font-weight: bold;
	color: white;
	font-size: 16pt;
}

.btn-link
{
margin-top: 23%;
}
.content-box
{
	padding-left: 40px;
}
.carousel-control 
{
	background: none !important; 
}
.main-img
{
	align-items: center;
}

.carousel-caption
{
	margin-left: 23%;
}
</style>


</head>
<body>

<c:import url="Header.jsp"></c:import>

<div class="container-fuild">
	<div id="carousel-example-generic"
		class="carousel slide test-carousel" data-ride="carousel" align="center">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active main-img" align="center">
				<img src="<%=cp %>/images/other/main_play.jpg" alt="농구하기" width="1200" height="500">
				<div class="carousel-caption" style="top: 25%; left: 15%; width: 450px; height: 200px; background-color: rgba(255, 255, 255, 0.5);">
					<h2 style="font-weight: bold;">지금 당장 농구하고 싶다면?</h2>
					<p style="margin-bottom: 20px; font-weight: bold;">BiscuitBall 은 당신의 참여를 기다립니다</p>
					<a href="<%=cp %>/play/party"><button type="button" class="btn" 
					 style="background-color: orange; color: white; border: none; padding: 10px 20px; font-weight: bold; font-size: 18px;">농구 하기</button></a>
				</div>
			</div>
			<div class="item" align="center">
				<img src="<%=cp %>/images/other/main_crew.jpg" alt="크루" width="1200" height="500">
				<div class="carousel-caption" style="top: 25%; left: 15%; width: 450px; height: 200px; background-color: rgba(255, 255, 255, 0.5);">
					<h2 style="font-weight: bold;">크루와 함께하세요!</h2>
					<p style="margin-bottom: 20px; font-weight: bold;">BiscuitBall의 유저들이 당신을 기다립니다</p>
					<a href="#"><button type="button" class="btn" 
					 style="background-color: orange; color: white; border: none; padding: 10px 20px; font-weight: bold; font-size: 18px;">크루 보기</button></a>
				</div>
			</div>
			<div class="item" align="center">
				<img src="<%=cp %>/images/other/main_court.jpg" alt="코트" width="1200" height="500">
				<div class="carousel-caption" style="top: 25%; left: 15%; width: 450px; height: 200px; background-color: rgba(255, 255, 255, 0.5);">
					<h2 style="font-weight: bold;">알고 있는 코트가 있으신가요?</h2>
					<p style="margin-bottom: 20px; font-weight: bold;">BiscuitBall 은 언제나 당신의 의견을 기다립니다</p>
					<a href="<%=cp %>/court/register"><button type="button" class="btn" 
					 style="background-color: orange; color: white; border: none; padding: 10px 20px; font-weight: bold; font-size: 18px;">코트 등록</button></a>
				</div>
			</div>
			
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	
	<div class="col-md-12 col-xs-12 date-select">
		<div class="col-md-2 col-xs-2"></div>
		<div class="col-md-1 col-xs-1">
			<a><span class="glyphicon glyphicon-chevron-left"></span></a>
			<span class="sr-only">Previous</span>
		</div>
		<div id="dateView" class="col-md-6 col-xs-6">
			<div class="col-md-1 col-xs-1">일</div>
			<div class="col-md-1 col-xs-1">월</div>
			<div class="col-md-1 col-xs-1">화</div>
			<div class="col-md-1 col-xs-1">수</div>
			<div class="col-md-1 col-xs-1">목</div>
			<div class="col-md-1 col-xs-1">금</div>
		</div>
		<div class="col-md-1 col-xs-1">
			<a><span class="glyphicon glyphicon-chevron-right"></span></a> 
			<span class="sr-only">Next</span>
		</div>
		<div class="col-md-2 col-xs-2"></div>
	</div>
	
	<div class="col-md-12 col-xs-12">
		<div class="col-md-2 col-xs-2"></div>
		<div class="col-md-8 col-xs-8 city-select">
			<ul class="nav nav-tabs city-select nav-justified">
				<li class="nav-item active"><a href="#ZQ01" class="nav-link" aria-controls="ZQ01" data-toggle='tab'>서울</a></li>
				<li class="nav-item"><a href="#ZQ02" class="nav-link" aria-controls="ZQ02" data-toggle='tab'>부산</a></li>
				<li class="nav-item"><a href="#ZQ03" class="nav-link" aria-controls="ZQ03" data-toggle='tab'>대구</a></li>
				<li class="nav-item"><a href="#ZQ04" class="nav-link" aria-controls="ZQ04" data-toggle='tab'>인천</a></li>
				<li class="nav-item"><a href="#ZQ05" class="nav-link" aria-controls="ZQ05" data-toggle='tab'>광주</a></li>
				<li class="nav-item"><a href="#ZQ06" class="nav-link" aria-controls="ZQ06" data-toggle='tab'>대전</a></li>
				<li class="nav-item"><a href="#ZQ07" class="nav-link" aria-controls="ZQ07" data-toggle='tab'>울산</a></li>
				<li class="nav-item"><a href="#ZQ08" class="nav-link" aria-controls="ZQ08" data-toggle='tab'>세종</a></li>
				<li class="nav-item"><a href="#ZQ09" class="nav-link" aria-controls="ZQ09" data-toggle='tab'>경기</a></li>
				<li class="nav-item"><a href="#ZQ10" class="nav-link" aria-controls="ZQ10" data-toggle='tab'>강원</a></li>
				<li class="nav-item"><a href="#ZQ11" class="nav-link" aria-controls="ZQ11" data-toggle='tab'>충북</a></li>
				<li class="nav-item"><a href="#ZQ12" class="nav-link" aria-controls="ZQ12" data-toggle='tab'>충남</a></li>
				<li class="nav-item"><a href="#ZQ13" class="nav-link" aria-controls="ZQ13" data-toggle='tab'>전북</a></li>
				<li class="nav-item"><a href="#ZQ14" class="nav-link" aria-controls="ZQ14" data-toggle='tab'>전남</a></li>
				<li class="nav-item"><a href="#ZQ15" class="nav-link" aria-controls="ZQ15" data-toggle='tab'>경북</a></li>
				<li class="nav-item"><a href="#ZQ16" class="nav-link" aria-controls="ZQ16" data-toggle='tab'>경남</a></li>
				<li class="nav-item"><a href="#ZQ17" class="nav-link" aria-controls="ZQ17" data-toggle='tab'>제주</a></li>
			</ul>
		</div>

	</div>

	<div class="col-md-12 ">
		<div class="col-md-2"></div>
		<div class="col-md-8 tab-content">
			<div class="col-md-12 tab-pane fade in active" id="ZQ01"><p class="p_default">전체 <span>0</span> 개의 모임</p></div>
			<div class="col-md-12 tab-pane fade" id="ZQ02"><p class="p_default">전체 <span>0</span> 개의 모임</p></div>
			<div class="col-md-12 tab-pane fade" id="ZQ03"><p class="p_default">전체 <span>0</span> 개의 모임</p></div>
			<div class="col-md-12 tab-pane fade" id="ZQ04"><p class="p_default">전체 <span>0</span> 개의 모임</p></div>
			<div class="col-md-12 tab-pane fade" id="ZQ05"><p class="p_default">전체 <span>0</span> 개의 모임</p></div>
			<div class="col-md-12 tab-pane fade" id="ZQ06"><p class="p_default">전체 <span>0</span> 개의 모임</p></div>
			<div class="col-md-12 tab-pane fade" id="ZQ07"><p class="p_default">전체 <span>0</span> 개의 모임</p></div>
			<div class="col-md-12 tab-pane fade" id="ZQ08"><p class="p_default">전체 <span>0</span> 개의 모임</p></div>
			<div class="col-md-12 tab-pane fade" id="ZQ09"><p class="p_default">전체 <span>0</span> 개의 모임</p></div>
			<div class="col-md-12 tab-pane fade" id="ZQ10"><p class="p_default">전체 <span>0</span> 개의 모임</p></div>
			<div class="col-md-12 tab-pane fade" id="ZQ11"><p class="p_default">전체 <span>0</span> 개의 모임</p></div>
			<div class="col-md-12 tab-pane fade" id="ZQ12"><p class="p_default">전체 <span>0</span> 개의 모임</p></div>
			<div class="col-md-12 tab-pane fade" id="ZQ13"><p class="p_default">전체 <span>0</span> 개의 모임</p></div>
			<div class="col-md-12 tab-pane fade" id="ZQ14"><p class="p_default">전체 <span>0</span> 개의 모임</p></div>
			<div class="col-md-12 tab-pane fade" id="ZQ15"><p class="p_default">전체 <span>0</span> 개의 모임</p></div>
			<div class="col-md-12 tab-pane fade" id="ZQ16"><p class="p_default">전체 <span>0</span> 개의 모임</p></div>
			<div class="col-md-12 tab-pane fade" id="ZQ17"><p class="p_default">전체 <span>0</span> 개의 모임</p></div>
			<%-- 
			<div class="col-md-12 tab-pane fade" id="ZQ02">
				<p class="p_default">전체 <span id="meetingCount">n</span> 개의 모임</p>

				<div class="panel panel-default">
					<div class="panel-body content-box">
						<div class="col-md-2 well meeting_info">
						<span>마포구</span>
						<h4>18:00</h4>
						</div>
						<div class="col-md-6 meeting_content" align="left">
						<h3>부산 근처에서 농구하실 분</h3>
						<p><span>서울</span> > <span>마포구</span> > <span>홍대입구 농구장</span></p>
						<p><span>일반</span> | <span>성별무관</span> | <span>LV1 - LV5</span> | <span>20 - 35 세</span></p>
						</div>
						<div class="col-md-3" align="center">
							<button class="btn btn-default btn-block btn-link">
							상세보기
							</button>
						</div>
					</div>
				</div>
			</div>
			 --%>

		</div>
		<div class="col-md-2"></div>
		
		
		

	</div>
	<br style="clear:both;" />
	
	<c:import url="Footer.jsp"></c:import>
</div>



<script type="text/javascript">

	$(document).ready(function()
	{
		var now = new Date().getTime();
		dateList = [...new Array(10).keys()].map(i => new Date(now + i * 24 * 3600 * 1000));
				
		var dateView = dateList.reduce(function(acc, cur, idx) 
		{
			var dataStr = cur.getFullYear() + '-' + (cur.getMonth()+1+'').padStart(2, '0') + '-' + (cur.getDate() + '' ).padStart(2, '0');
			var viewStr = (cur.getMonth()+1+'').padStart(2, '0') + '/' + (cur.getDate() + '' ).padStart(2, '0');
			return acc + '<div style="cursor: pointer;"class="dateview__date col-md-1 col-xs-1"' + 'data-date="' + dataStr + '"' +'>' + viewStr + '</div>\n';
			
		}, "");
		
		$("#dateView").html(dateView);
		
		var nowStr = dateList[0].getFullYear() + '-' + (dateList[0].getMonth()+1+'').padStart(2, '0') + '-' + (dateList[0].getDate() + '' ).padStart(2, '0'); 
		
		$.ajax(
		{
			type: "GET"
			, url: "<%=cp %>/ajax/meetinglist/byregion"
			, data: {meetingDate: nowStr}
			, dataType: "json"
			, success: renderList
			, error: function (e)
			{
				console.log(e.responseText);
				alert(e.responseText);
			}
			
		});
		
		$(".dateview__date[data-date]").click(function() 
		{
			$.ajax({
				type: "GET"
				, url: "<%=cp %>/ajax/meetinglist/byregion"
				, data: {meetingDate: $(this).data("date")}
				, dataType: "json"
				, success: renderList
				, error: function (e)
				{
					console.log(e.responseText);
					alert(e.responseText);
				}
				
			});
			
			
		});
	});
	
	function renderList(regions) 
	{
		var region, meetings;
		var result = "";
		for(var i=0; i<regions.length; i++)
		{
			region = regions[i];
			
			result = '<p class="p_default">전체 <span>' + region.meetingCount + '</span> 개의 모임</p>';
			
			meetings = region.meetingList;
			
			for(var j=0; j<meetings.length; j++)
			{
				var [addr1, addr2] = meetings[j].cityName.split(" ");
				var [hour, minute, second] = meetings[j].meetingDate.split(" ")[1].split(":");
				
				result += '<div class="panel panel-default">';
				result += '<div class="panel-body content-box">';
				result += '<div class="col-md-2 well meeting_info">';
				
				result += '<span>' + addr2 + '</span>';
				result += '<h4>' + hour + ':' + minute + '</h4>';
				result += '</div>';
				
				result += '<div class="col-md-6 meeting_content" align="left">';
				result += '<h3>' + meetings[j].meetingSubject + '</h3>';
				
				result += '<p><span>' + addr1 + '</span> > <span>'+ addr2 +'</span> > <span>' + meetings[j].courtName + '</span></p>';
				result += '<p><span>';
				if(meetings[j].meetingTypeCode == 'ZL01')
					result += '시합';
				if(meetings[j].meetingTypeCode == 'ZL02')
					result += '일반';
				result += '</span> | <span>성별무관</span> | <span>LV';
				result += meetings[j].minTierCode + ' - LV' + meetings[j].maxTierCode + '</span> | <span>20 - 35 세</span></p>';
				
				result += '</div>';
				result += '<div class="col-md-3" align="center">';
				result += '<button class="btn btn-default btn-block btn-link" onclick="window.location.href=\'<%=cp %>/play/meeting/' + meetings[j].meetingCode + '\'">';
				result += '상세보기';
				result += '</button>';
				
				result += '</div>';
				result += '</div>';
				result += '</div>';
			}
			
			$("#" + region.regionCode).html(result);
		}
		
	}
	
</script>
</body>
</html>