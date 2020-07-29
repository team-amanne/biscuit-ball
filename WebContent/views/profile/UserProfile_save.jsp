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
<script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">


<style type="text/css">
.left-btn {
	text-align: left;
}

.right-btn {
	text-align: right;
}
.subtitle-text {
	font-weight: bold;
}
</style>

<title>유저프로필</title>

<!-- 부트스트랩/제이쿼리 -->
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />		
<link rel="stylesheet" href="<%=cp %>/css/board.css" />
<link rel="stylesheet" href="<%=cp %>/css/default.css" />
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
</head>
<body>
	<!-- 헤더 -->
	<c:import url="../base/Header.jsp"></c:import>

	<!-- 서브메뉴 -->
	<!-- 서브메뉴는 기능별(농구하기/코트검색/크루/...)로 복사해서 만들어두고 import 할 것 -->
	<c:import url="../base/Submenu.jsp"></c:import>

	<!-- 메인 -->
	<div class="main container-fluid">
		<div class="section-title container">
			<span>메인 > 유저검색 > 유저프로필</span>
			<hr />
		</div>
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-8">
					<div class="row">
						<div class="col-md-12">
								<p class="subtitle-text">유저 프로필</p>
								<hr>
							</div>
					</div>
					<div class="row">
						<div class="col-sm-4 col-xs-5 left-btn">
							<a href="Userinfo.jsp"><button type="button" class="btn btn-default btn-link">내 정보관리</button></a>
							<a href="Achievement.jsp"><button type="button" class="btn btn-default">업적 목록</button></a>
						</div>
						<div class="col-sm-4 col-xs-2">
						</div>
						<div class="col-sm-4 col-xs-5 right-btn">
							<a href="Friend.jsp"><button type="button" class="btn btn-default btn-link">친구 신청</button></a>
							<a href="UserBlock.jsp"><button type="button" class="btn btn-default btn-link">차단 하기</button></a>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-4 col-xs-3">
							
						</div>
						<div class="col-sm-4 col-xs-6" style="position: relative; z-index: 1; text-align: center;">
							<img src="<%=cp %>/images/other/UserProfile.jpg" height="150px;" width="150px;"/>
						</div>
						<div class="col-sm-4 col-xs-3">
						</div>
					</div>
					<div class="row form-group">
						<div class="col-sm-4 col-xs-3">
						</div>
						<div class="col-sm-4 col-xs-6" style="text-align: center"><textarea class="form-control" rows="5"></textarea></div>
						<div class="col-sm-4 col-xs-3">
						</div>
					</div>
					<div class="row">
						<div class="col-sm-9 col-xs-9">
						</div>
						<div class="col-sm-2 col-xs-2">
						<p><button type="button" class="btn btn-default btn-link btn-block">심판정보</button></p>
						</div>		
						<div class="col-sm-2 col-xs-2">
						</div>			
					</div>
					<div class="row">
						<div class="col-md-1">
						</div>
						<div class="col-md-10">
							<div class="row">
								<div class="panel panel-default">
									<div class="col-sm-2 col-xs-2 panel-heading">
										<span>닉네임</span>
									</div>
									<div class="col-sm-4 col-xs-4 panel-body">
										<span>아맞네</span>
									</div>
									<div class="col-sm-2 col-xs-2 panel-heading">
										<span>성별</span>
									</div>
									<div class="col-sm-4 col-xs-4 panel-body">
										<span>남</span>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="panel panel-default">
									<div class="col-sm-2 col-xs-2 panel-heading">
										<span>대표업적</span>
									</div>
									<div class="col-sm-4 col-xs-4 panel-body">										
										<span><i class="fas fa-star"></i> 첫가입 </span>
									</div>
									<div class="col-sm-2 col-xs-2 panel-heading">
										<span>거점지역</span>
									</div>
									<div class="col-sm-4 col-xs-4 panel-body">
										<span>서울</span>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="panel panel-default">
									<div class="col-sm-2 col-xs-2 panel-heading">
										<span>키</span>
									</div>
									<div class="col-sm-4 col-xs-4 panel-body">
										<span>180cm</span>
									</div>
									<div class="col-sm-2 col-xs-2 panel-heading">
										<span>내코트</span>
									</div>
									<div class="col-sm-4 col-xs-4 panel-body">
										<span><a href="#"><i class="fas fa-map-marked-alt"></i></a> 동규네 코트</span>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="panel panel-default">
									<div class="col-sm-2 col-xs-2 panel-heading">
										<span>포지션</span>
									</div>
									<div class="col-sm-4 col-xs-4 panel-body">
										<span>CENTER</span>
									</div>
									<div class="col-sm-2 col-xs-2 panel-heading">
										<span>내크루</span>
									</div>
									<div class="col-sm-4 col-xs-4 panel-body">
										<span><a href="#"><i class="fas fa-users"></i></a> 길동이네 크루</span>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="panel panel-default">
									<div class="col-sm-2 col-xs-2 panel-heading">
										<span>티어</span>
									</div>
									<div class="col-sm-4 col-xs-4 panel-body">
										<span>LV.3</span>
									</div>
									<div class="col-sm-2 col-xs-2 panel-heading">
										<span>페어플레이 점수</span>
									</div>
									<div class="col-sm-4 col-xs-4 panel-body">
										<span>4.3점</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-1">
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
						</div>
					</div>
				</div>
				<div class="col-md-2">
				</div>
			</div>
		</div>
	</div>
</div>

    <c:import url="../base/Footer.jsp"></c:import>

</body>
</html>