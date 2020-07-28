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
<title>BiscuitBail > 참여 예정 모임</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
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

<script src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	$(function()
	{
		$(".btn-submit").click(function()
		{
			confirm("모임 시작 3시간 이내에 참여를 취소할 시 페어플레이점수에 패널티가 부여됩니다.");
		});
	});
</script>

</head>
<body>

	<!-- 헤더 -->
		<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/PlaySubmenu.jsp"></c:import>

	<div class="container-fluid main">
	<div class="section-title container">
		<h5></h5>
		<hr />
	</div>
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<div class="row">
					<div class="col-md-12">
					<div class="col-md-10"><h3>모임 상세</h3></div>
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
									<span class="board-header">제목</span>
									</div>
									<div class="col-md-8">
									제목입니다아
									</div>
								</div>
								<div class="col-md-4">
									<div class="col-md-4 info-title">
									<span class="board-header">주장</span>
									</div>
									<div class="col-md-8">
									아맞네
									</div>
								</div>
								<div class="col-md-2 info-title">
									<button class="btn btn-default btn-xs">
									모임 신고 하기
									</button>
								</div>
								
								</div>
							</div>
							
							<div class="panel panel-default">
								<div class="panel-body center-move">
								<div class="col-md-6">
									<div class="col-md-4 info-title">
									<span class="board-header">모임장소</span>
									</div>
									<div class="col-md-8">
									서울 마포구 쌍용체육관
									</div>
								</div>
								<div class="col-md-4">
									<div class="col-md-5 info-title">
									<span class="board-header">시합/일반</span>
									</div>
									<div class="col-md-7">
									시합
									</div>
								</div>		
								<div class="col-md-2 info-title" >
									
									<span>n/n</span>명
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
										<span class="board-header">닉네임</span>
										</div>
										<div class="col-md-4">
										<span class="board-header">티어</span>
										</div>
										<div class="col-md-4">
										<span class="board-header">페어플레이 점수</span>
										</div>
										</div>
										</div>
										<div class="panel panel-default">
										<div class="panel-body user-info">
										
										<div class="col-md-4">아맞네</div>
										<div class="col-md-4">4 teir</div>
										<div class="col-md-4">★★★☆</div>
										
										<div class="col-md-4">규쿤</div>
										<div class="col-md-4">3 teir</div>
										<div class="col-md-4">★★★☆</div>
										
										<div class="col-md-4">갓진녕</div>
										<div class="col-md-4">5 teir</div>
										<div class="col-md-4">★★★☆</div>
										
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
									<span class="board-header">공지 사항</span>
									</div>
								</div>		
								<div class="col-md-9">
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
							<button class="btn btn-default btn-lg btn-submit">
								참여 취소
							</button>
							<button class="btn btn-default btn-lg">
								목록으로
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