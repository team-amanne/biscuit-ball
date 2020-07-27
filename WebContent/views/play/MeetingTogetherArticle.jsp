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
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
      
 <style type="text/css">
	.info-title
	{
		font-size: 12pt;
		font-weight: bold;
		text-align: center;
		
	}
	
	.user-info
	{
		text-align: center;
	}
	
	.yesorno
	{
		text-align: center;
	}
	
	
   
 </style>

</head>
<body>

		<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/PlaySubmenu.jsp"></c:import>

	<div class="container-fluid main">
	<div class="section-title container">
		<h5>농구하기 > 함께농구</h5>
		<hr />
	</div>
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<div class="row">
					<div class="col-md-12">
					<div class="col-md-10"><h3>모임</h3></div>
					<div class="col-md-2">

					</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
						<div class="panel-body">
							<div class="panel panel-default">
								<div class="panel-body center-move">
								<div class="col-md-6">
									<div class="col-md-4 info-title">
									<span class="">제목</span>
									</div>
									<div class="col-md-8">
									${meetingdto.meetingSubject}
									</div>
								</div>
								<div class="col-md-4">
									<div class="col-md-4 info-title">
									<span class="">주장</span>
									</div>
									<div class="col-md-8">
									${meetingdto.captainName}
									</div>
								</div>
								<div class="col-md-2 info-title">
									<button class="btn btn-default btn-xs">
									모임 신고
									</button>
								</div>
								
								</div>
							</div>
							
							<div class="panel panel-default">
								<div class="panel-body center-move">
								<div class="col-md-6">
									<div class="col-md-4 info-title">
									<span class="">모임장소</span>
									</div>
									<div class="col-md-8">
									${courtdto.regionName} ${courtdto.cityName } ${courtdto.courtName}
									</div>
								</div>
								<div class="col-md-4">
									<div class="col-md-5 info-title">
									<span class="">시합/일반</span>
									</div>
									<div class="col-md-7">
									${meetingdto.meetingTypeName.equal("ZL01")? "시합":"일반" }
									</div>
								</div>		
								<div class="col-md-2 info-title" >
									
									<span>${meetingdto.nowPeopleNumber}/${meetingdto.meetingPeopleNumber}</span>명
								</div>							
								
							</div>
							
							</div>
						<div class="panel panel-default">
								<div class="panel-body center-move">
								<div class="col-md-3">
									<div class="col-md-8 info-title">
									참여자 목록
									</div>
								</div>		
								<div class="col-md-9">
									<div class="panel panel-default">
										<div class="panel-body">
										<div class="panel panel-default">
										<div class="panel-body user-info">
										<div class="col-md-4">
										<span class="">닉네임</span>
										</div>
										<div class="col-md-4">
										<span class="">티어</span>
										</div>
										<div class="col-md-4">
										<span class="">페어플레이 점수</span>
										</div>
										</div>
										</div>
										<div class="panel panel-default">
										<div class="panel-body user-info">
										
										<c:forEach var="member" items="${memberlist}">
										<div class="col-md-4">${member.userNickname }</div>
										<div class="col-md-4">${member.tierName }</div>
										<div class="col-md-4">
										<c:choose>
										<c:when test="${member.fairplayScore==5 }">
											<span class="fa fa-star"></span>
											<span class="fa fa-star"></span>
											<span class="fa fa-star"></span>
											<span class="fa fa-star"></span>
											<span class="fa fa-star"></span>
										</c:when>
										<c:when test="${member.fairplayScore>=4.5 }">
											<span class="fa fa-star"></span>
											<span class="fa fa-star"></span>
											<span class="fa fa-star"></span>
											<span class="fa fa-star"></span>
											<span class="fa fa-star-half"></span>
										</c:when>
										<c:when test="${member.fairplayScore>=4 }">
											<span class="fa fa-star"></span>
											<span class="fa fa-star"></span>
											<span class="fa fa-star"></span>
											<span class="fa fa-star"></span>
										</c:when>
										<c:when test="${member.fairplayScore>=3.5 }">
											<span class="fa fa-star"></span>
											<span class="fa fa-star"></span>
											<span class="fa fa-star"></span>
											<span class="fa fa-star-half"></span>
										</c:when>
										<c:when test="${member.fairplayScore>=3 }">
											<span class="fa fa-star"></span>
											<span class="fa fa-star"></span>
											<span class="fa fa-star"></span>
										</c:when>
										<c:when test="${member.fairplayScore>=2.5 }">
											<span class="fa fa-star"></span>
											<span class="fa fa-star"></span>
											<span class="fa fa-star-half"></span>
										</c:when>
										<c:when test="${member.fairplayScore>=2 }">
											<span class="fa fa-star"></span>
											<span class="fa fa-star"></span>
										</c:when>
										<c:when test="${member.fairplayScore>=1.5 }">
											<span class="fa fa-star"></span>
											<span class="fa fa-star-half"></span>
										</c:when>
										<c:when test="${member.fairplayScore>=1 }">
											<span class="fa fa-star"></span>
										</c:when>
										<c:otherwise>
											<span class="fa fa-star-half"></span>
										</c:otherwise>
										
										</c:choose>
										
										</div>
										</c:forEach>
										
										</div>
										</div>
										
										</div>
									</div>
								</div>								
							</div>
							
							</div>
							<div class="panel panel-default">
								<div class="panel-body center-move">
								<div class="col-md-3">
									<div class="col-md-8 info-title">
									<span class="">공지 사항</span>
									</div>
								</div>		
								<div class="col-md-9">
									<div class="panel panel-default">
										<div class="panel-body">
										${meetingdto.meetingNotice }
										</div>
									</div>
								</div>								
							</div>
							
							</div>
							<div class="yesorno">
							<button class="btn btn-default btn-lg btn-submit">
							<c:forEach var="member" items="${memberlist.userAccountCode }">
								<c:if test="${userInfo.userAcctCode==memberlist.userAccountCode }">
								참여 취소
								</c:if>
							</c:forEach>
							
								참여
							</button>
							<button class="btn btn-default btn-lg">
								닫기
							</button>
							</div>
						
						</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3"></div>
		</div>
	</div>


	<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>