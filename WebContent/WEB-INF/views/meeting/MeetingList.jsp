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
<title>BiscuitBail > 모임 목록</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style type="text/css">
.btn-serach {
	padding: 0px 0px 0px 0px;
}

.list-header {
	color: white;
	background: orange;
	font-size: 140%;
}

.top-btn {
	padding-bottom: 10px;
	color: white;
}

.top-btn .col-md-2 {
	text-align: right;
}

.list-item {
	height: 50px;
	text-align: center;
}

.count_post {
	color: orange;
}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

$(function() 
{
$.ajax
({
 	type: "get",
    dataType: "json",
    url: "<%=cp%>/ajax/manage/list",
 success : function(data)
 {

    var listPrint = "<li class='list-group-item list-header list-item'><div class='row'>"
          + "<div class='col-md-3 col-xs-3'><span>제목</span></div>"
          + "<div class='col-md-2 col-xs-2'><span>주장</span></div>"
          + "<div class='col-md-3 col-xs-3'><span>장소</span></div>"
          + "<div class='col-md-2 col-xs-2'><span>모임시간</span></div>"
          + "<div class='col-md-1 col-xs-1'><span>인원</span></div>"
          + "<div class='col-md-1 col-xs-1'><span>상태</span></div></div></li>";
    
          
          if (data.length==0)
			{
				listPrint += "<div align='center' style='font-size: 14pt; margin-top: 2%;'>해당 조건의 모임이 존재하지 않습니다.</div>"
			}
          else
          {
          	for (var i=0; i<data.length; i++)
	            {
	            	
	            	
	            	listPrint += "<li class='list-group-item list-item'><div class='row'><div class='col-md-3 col-xs-3'>";
	               	listPrint += "<span class='meetingPage' id='"+ data[i].meetingCode +"'>"+ data[i].meetingSubject+ "</span>";
	               	listPrint += "</div><div class='col-md-2 col-xs-2'>";
	               	listPrint += "<span class='captainName' id='"+ data[i].captainAcctCode +"'>"+ data[i].captainName+ "</span>";
	               	listPrint += "</div><div class='col-md-3 col-xs-3'>";
	               	listPrint += "<span class='courtName' id='"+ data[i].courtRegistrationCode +"'>"+ data[i].courtName+ "</span>";
	               	listPrint += "</div><div class='col-md-2 col-xs-2'>";
	               	listPrint += "<span>"+ data[i].meetingDate+ "</span>";
	               	listPrint += "</div><div class='col-md-1 col-xs-1'>";
	               	listPrint += "<span>"+ data[i].nowPeopleNumber+ "/"+ data[i].meetingPeopleNumber+ "</span>";
	               	listPrint += "</div><div class='col-md-1 col-xs-1'>";
	               	if(data[i].nowPeopleNumber==data[i].meetingPeopleNumber)
	            	{
	               		listPrint +=  "<span style='color: red;'>마감</span>"; 
	            	}
	               	else
	               	{
	               		listPrint +=  "<span style='color: blue;'>모집중</span>"; 
	               	}
	            	listPrint += "</div></div></li>";
	            }
          	
          }
          
          $("#meetingList").html(listPrint);
          
          //alert(listPrint);
          
          
          // 모임 제목 클릭하면 모임으로
          $(".meetingPage").click(function()
          {
             //var id = ($(this).attr('id'));
             var meetingCode = $(this).attr('id');
             $(location).attr("href","<%=cp%>/play/meeting/"+ meetingCode);
             //childWindow.resizeTo(800, 800);
          });

          // 주장 이름 클릭하면 프로필로
          $(".captainName").click(function()
          {
             //var id = ($(this).attr('id'));
             var captainAcctCode = $(this).attr('id');
             $(location).attr("href","<%=cp%>/userpage/"+ captainAcctCode);
             //childWindow.resizeTo(800, 800);
          });

          // 코트 이름 클릭하면 코트 페이지로
          $(".courtName").click(function()
          {
             var courtCode = ($(this).attr('id'));
             
             $(location).attr("href","<%=cp%>/court/"+ courtCode);
          });
          
   
    
 },
 error : function(e)
 {
    alert(e.responseText+"오류");
 }
       
	});
});

</script>


</head>
<body>

	<!-- 헤더 -->
	<c:import url="../base/Header.jsp?active=play"></c:import>
   	<c:import url="../base/PlaySubmenu.jsp?active=manage/list"></c:import>

	<div class="container-fluid main">
		<div class="section-title container">
			<h5></h5>
			<hr />
		</div>


		<!-- 모임 목록 -->
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row">
							<div class="col-md-12">
								<h4>참여 신청 모임</h4>
								<hr>
							</div>
						</div>
						<div class="row top-btn">
							<div class="col-md-4"></div>
							<div class="col-md-6"></div>
							<div class="col-md-2">
								<button class="btn btn-submit" type="button">더보기</button>
							</div>
						</div>
						<ul class="list-group" id="meetingList">
							
							<!-- 게시판 출력 영역 -->
						</ul>
					</div>
					<div class="col-md-2"></div>
				</div>
			</div>
		</div>
		<c:import url="../base/Footer.jsp"></c:import>
	</div>
</body>
</html>