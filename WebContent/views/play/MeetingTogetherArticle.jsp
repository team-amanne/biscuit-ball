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
<link rel="stylesheet" href="<%=cp%>/css/board.css" />
<link rel="stylesheet" href="<%=cp%>/css/default.css" />
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

			<div class="">
				<div class="row">
					<div class="col-md-12 col-xs-12">
					<div class="col-md-10 col-xs-10"><h3>모임</h3></div>
					<div class="col-md-2 col-xs-2">

					</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 col-xs-12">
						<div class="panel panel-default">
						<div class="panel-body">
							<div class="panel panel-default">
								<div class="panel-body center-move">
								<div class="col-md-6 col-xs-6">
									<div class="col-md-4 col-xs-4 info-title">
									<span class="">제목</span>
									</div>
									<div class="col-md-8 col-xs-8">
									제목입니다아
									</div>
								</div>
								<div class="col-md-4 col-xs-4">
									<div class="col-md-4 col-xs-4 info-title">
									<span class="">주장</span>
									</div>
									<div class="col-md-8 col-xs-8">
									아맞네
									</div>
								</div>
								<div class="col-md-2 col-xs-2 info-title">
									<button class="btn btn-default btn-xs">
									모임 신고 하기
									</button>
								</div>
								
								</div>
							</div>
							
							<div class="panel panel-default">
								<div class="panel-body center-move">
								<div class="col-md-6 col-xs-6">
									<div class="col-md-4 info-title">
									<span class="">모임장소</span>
									</div>
									<div class="col-md-8 col-xs-8">
									서울 마포구 쌍용체육관
									</div>
								</div>
								<div class="col-md-4 col-xs-4">
									<div class="col-md-5 col-xs-5 info-title">
									<span class="">시합/일반</span>
									</div>
									<div class="col-md-7 col-xs-7">
									시합
									</div>
								</div>		
								<div class="col-md-2 col-xs-2 info-title" >
									
									<span>n/n</span>명
								</div>							
								
							</div>
							
							</div>
						<div class="panel panel-default">
								<div class="panel-body center-move">
								<div class="col-md-3 col-xs-3">
									<div class="col-md-8 col-xs-8 info-title">
									참여자 목록
									</div>
								</div>		
								<div class="col-md-9 col-xs-9">
									<div class="panel panel-default">
										<div class="panel-body">
										<div class="panel panel-default">
										<div class="panel-body user-info">
										<div class="col-md-4 col-xs-4">
										<span class="">닉네임</span>
										</div>
										<div class="col-md-4 col-xs-4">
										<span class="">티어</span>
										</div>
										<div class="col-md-4 col-xs-4">
										<span class="">페어플레이 점수</span>
										</div>
										</div>
										</div>
										<div class="panel panel-default">
										<div class="panel-body user-info">
										
										<div class="col-md-4 col-xs-4">아맞네</div>
										<div class="col-md-4 col-xs-4">4 teir</div>
										<div class="col-md-4 col-xs-4">★★★☆</div>
										
										<div class="col-md-4 col-xs-4">규쿤</div>
										<div class="col-md-4 col-xs-4">3 teir</div>
										<div class="col-md-4 col-xs-4">★★★☆</div>
										
										<div class="col-md-4 col-xs-4">갓진녕</div>
										<div class="col-md-4 col-xs-4">5 teir</div>
										<div class="col-md-4 col-xs-4">★★★☆</div>
										
										</div>
										</div>
										
										</div>
									</div>
								</div>								
							</div>
							
							</div>
							<div class="panel panel-default">
								<div class="panel-body center-move">
								<div class="col-md-3 col-xs-3">
									<div class="col-md-8 col-xs-8 info-title">
									<span class="">공지 사항</span>
									</div>
								</div>		
								<div class="col-md-9 col-xs-9">
									<div class="panel panel-default">
										<div class="panel-body">
										
											오늘 모임 후 뒷풀이 있습니다. 
											참여는 자유롭게 해주세요
										</div>
									</div>
								</div>								
							</div>
							
							</div>
							<div class="yesorno">
							<button class="btn btn-default btn-lg btn-link">
								참여
							</button>
							<button class="btn btn-default btn-lg">
								불참
							</button>
							</div>
						
						</div>
						</div>
					</div>
				</div>
			</div>

</body>
</html>