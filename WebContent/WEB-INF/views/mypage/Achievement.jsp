<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>

<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js"
	crossorigin="anonymous"></script>
 
<title>BiscuitBail > 업적 현황</title>

<!-- 부트스트랩/제이쿼리 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=cp %>/css/default.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"> </script> 

<style type="text/css">
/* 
.list-group-item {
	height: 50px;
	text-align: center;
} */

.latelyAchievement_item {
	margin-top: 10px;
} 

.sub_title {
	font-weight: bold;
}

.latelyAchievement img {
	margin : auto;
    width: 40px;
    height: 40px;
}

#latelyAchievement_header, .latelyAchievement {
	text-align: center;
	margin : auto;
}

.paging {
	text-align: center;
}

.graph {
	text-align: left;
}
#proIcon {
	display:none;
	color:white;
}

.pagination{
	display: block;
	text-align: center;
}

.pagination > li > a {
	float: none;
}
</style>

<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>

<script type="text/javascript">

	var pageNum = 1;

	$().ready( function() {
	
		$("#nextPage").click(function() {	
						
			pageNum += 6;
			
			if(pageNum > ${totalCountPersonalAchievements})
			{
				$("#nextPage").prop("disabled", true);
			}			
			if(pageNum >= 7)
			{
				$("#prePage").prop("disabled", false);
			}
			 
			pageCall();

			
		});
		
		$("#prePage").click(function() {
			
			pageNum -= 6; 
			
			if(pageNum==1)
			{
				$("#prePage").prop("disabled", true);
			}
			if(pageNum < ${totalCountPersonalAchievements})
			{
				$("#nextPage").prop("disabled", false);
				
			}
			
			pageCall();

		});
		
		

	});
	
	var pageCall = function() {
		
		$.ajax({
	           type: "get",
	           dataType: "json",
	           url: "<%=cp%>/ajax/achievemcentpaging",
	           data: {pageNum: pageNum},
	           success: function(data) {
	        	   
	        	   
	        	/* 	   
	              var result = "<option value=''>시·군·구</option>\n";
	              for(var i=0; i<data.length; i++)
	                 result += "<option value='" + data[i].cityCode +"'>" + data[i].cityName + "</option>\n";
	              
	              $("#tailAchievement").html(result);
	               */
	           },
	           error: function(e){
	              alert(e.responseText);
	           }
	        });
	        return false;
	}
	
</script>


</head>
<body>
	<!-- 헤더 -->
	<c:import url="../base/Header.jsp"></c:import>
	<!-- 서브메뉴 -->
	<!-- 서브메뉴는 기능별(농구하기/코트검색/크루/...)로 복사해서 만들어두고 import 할 것 -->
	<c:import url="../base/MypageSubmenu.jsp?active=achievement"></c:import>

	<!-- 메인 -->
	<div class="main container-fluid">
		 <div class="section-title container">
			<hr />			
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row">
							<div class="col-md-12">
								<span class="subtitle-text">개인업적관리</span>
							</div>
						</div>
							<br><br>
						<div class="row">
							<div class="row">
							<div class="col-sm-2 col-md-2 col-xs-2">
								<span class="list-title sub_title">업적획득 달성률</span>
							</div>

							<div class="col-sm-1 col-md-1 col-xs-1">
								<span> ${getCountPersonalAchievements} / ${totalCountPersonalAchievements}</span>
								   </div>
							<div class="col-sm-1 col-md-1 col-xs-1">
								<span> | </span>
							</div>
							<div class="col-sm-8 col-md-8 col-xs-8 progress graph">
								<div class="progress-bar" role="progressbar"
									aria-valuenow="${totalGetPersonalAchievementsPercent }" aria-valuemin="0" aria-valuemax="100"
									style="width: ${totalGetPersonalAchievementsPercent}%;">
									<span>${totalGetPersonalAchievementsPercent}%</span>
								</div>
							</div>
							</div>
						</div>		
												
						<br>
						<div class="row">
							<div class="">
								<div class="row">
									<div class="col-md-12">
										<span class="list-title sub_title">최근 획득업적 현황</span>
									</div>
								</div>
								<div class="row">
										<p> </p>
								</div>
								<ul class="list-group">
									<li class="list-group-item board-body board-header">
										<div class="row" id="latelyAchievement_header">
											<div class="col-sm-2 col-xs-3">
												<span class="board-header">아이콘</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span class="board-header">업적이름</span>
											</div>
											<div class="col-sm-4 col-xs-3">
												<span class="board-header">업적조건</span>
											</div>
											<div class="col-sm-3 col-xs-3">
												<span class="board-header">획득일</span>
											</div>
										</div>
									</li>
									
										<c:set var="latelyAchievementList_number" value="1" />
										<c:forEach var="List_item" items="${ latelyAchievementList}">
										
											<li class="list-group-item board-body" id="latelyAchievement<c:out value="${latelyAchievementList_number}"/>">
													<div class="row latelyAchievement">										
														<div class="col-sm-2 col-xs-3">															
																<img alt="업적이미지<c:out value="${latelyAchievementList_number}"/>" src="${List_item.personalAchievementImg}">																																																										</div>
														<div class="col-sm-3 col-xs-3 latelyAchievement_item">
															<span>${List_item.personalAchievementName}</span>
														</div>
														<div class="col-sm-4 col-xs-3 latelyAchievement_item">
															<span>${List_item.personalAchievementCondition}</span>
														</div>
														<div class="col-sm-3 col-xs-3 latelyAchievement_item">
															<span>${List_item.personalAchievementGetDate}</span>
														</div>
													</div>
											</li>	
												 									
											<c:set var="latelyAchievementList_number" value="${latelyAchievementList_number + 1}"/>
										</c:forEach>									
									<c:remove var="latelyAchievementList_number"/>
								</ul>
								<br>											
							</div>
						</div>
						<div class="row">
							<div class="col-md-12"></div>
						</div>
						
						<div class="row">
									<div class="col-md-12">
										<span class="list-title sub_title">전체 업적</span>
										<p></p>
									</div>
									
						</div>
						
						<div class="row panel panel-default">

							<div class="col-md-1"></div>
							<div class="col-md-10">
								<div class="col-md-12"
									style="text-align: center; padding-top: 30px; padding-bottom: 20px;">
									
								</div>
								<div style="text-align: center;">
								
									<c:set var="tailAchievementNum" value="1"/>
									<div class="row" id="tailAchievement">								
									<c:forEach var="item" items="${ achievementList}">
										<div class="col-sm-4 col-xs-4" id="tailAchievement<c:out value='${tailAchievementNum}' />" name="tailAchievement<c:out value='${tailAchievementNum}' />">
											<ul class="list-group">
												<li class="list-group-item board-header">
													<div>
														<input type="radio"name="inlineRadio" id="inlineRadio2" value="option1">  <span
															id="proIcon">대표업적</span>
													</div>
													<div class="col-sm-4"></div>
												</li>
												<li class="list-group-item" style="height: 100px;">
													<div>
														<img src="${item.personalAchievementImg}" style="height: 80px; width: 80px;"/>
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>${item.personalAchievementName} </span>
													</div>
												</li>
												
												
												<li class="list-group-item">
													<div class="progress graph">								
														<div class="progress-bar <c:if test="${item.getAchievementStatus == 100}">progress-bar-warning</c:if>" role="progressbar"
															aria-valuenow="${item.getAchievementStatus}" aria-valuemin="0" aria-valuemax="100"
															style="width: ${item.getAchievementStatus}%; min-width: 2em;">
															<span>${item.getAchievementStatus}%</span>
														</div>
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>${item.personalAchievementCondition}</span>
													</div>
												</li>
												<li class="list-group-item">
													<div>
														<span>
															<c:choose>
														         <c:when test = "${item.personalAchievementGetDate != null}">
														      		 ${item.personalAchievementGetDate}</span>
														         </c:when>
														         <c:when test = "${item.personalAchievementGetDate == null}">
														             <br></span>
														         </c:when>
														    </c:choose>
														
													</div>
												</li>
											</ul>
										</div>
										<c:set var="tailAchievementNum" value="${tailAchievementNum + 1}"/>
									</c:forEach>	
									</div>


								</div>


								<div class="row">
									<div class="col-sm-3 col-xs-3"></div>
									<div class="col-sm-6 col-xs-2">
										<button class="btn btn-default btn-submit btn-block" type="button">대표업적등록</button>
									</div>
									<div class="col-sm-3 col-xs-3"></div>
								</div>
								<div class="col-md-1"></div>
								<div class="row" style="text-align: center;">
									<ul class="pagination">
										<!-- li태그의 클래스에 disabled를 넣으면 마우스를 위에 올렸을 때 클릭 금지 마크가 나오고 클릭도 되지 않는다.-->
										<!-- disabled의 의미는 앞의 페이지가 존재하지 않다는 뜻이다. -->
										<li class="disabled"><button id="prePage" type="button" disabled="disabled"> <span>«</span></button></li>
										<li><button id="nextPage" type="button"> <span>»</span></button></li>
									</ul>
								</div>
							</div>
	
						</div>
						<div class="col-md-2"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<c:import url="../base/Footer.jsp"></c:import>
</body>
</html>