<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>

<title>친구관리.jsp</title>

<!-- 부트스트랩/제이쿼리 -->
<!-- 부트스트랩/제이쿼리 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" href="<%=cp%>/css/board.css" />
<style type="text/css">
.title-text
{
	font-weight: bold;
}

.friend
{
	margin-bottom: 6px;
}

</style>
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
         	<h5>마이페이지 > 친구관리 </h5>
         	<hr />
     	</div>
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row top">
							<div class="col-md-12">
								<p class="subtitle-text">친구관리</p>
							</div>
						</div>
						<ul class="list-group">
							<li class="list-group-item board-body board-header">
								<div class="row">
									<div class="col-sm-1 col-xs-2">
										<span>PROFILE</span>
									</div>
									<div class="col-md-2 col-xs-4">
										<span>NAME</span>
									</div>
									<div class="col-md-3 col-xs-6">
									</div>
									<div class="col-md-1 col-xs-2">
										<span>PROFILE</span>
									</div>
									<div class="col-md-2 col-xs-4">
										<span>NAME</span>
									</div>
									<div class="col-md-3 col-xs-6"></div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<i class="glyphicon glyphicon-user"></i>
									</div>
									<div class="col-md-2 col-xs-2">고동길</div>
									<div class="col-md-3 col-xs-3">
										<button class="btn submit-btn" type="submit">친구삭제</button>
										<button class="btn submit-btn" type="submit">메시지</button>
									</div>
									<div class="col-sm-1 col-xs-1">
										<i class="glyphicon glyphicon-user"></i>
									</div>
									<div class="col-md-2 col-xs-2">고동길</div>
									<div class="col-md-3 col-xs-3">
										<button class="btn submit-btn" type="submit">친구삭제</button>
										<button class="btn submit-btn" type="submit">메시지</button>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<i class="glyphicon glyphicon-user"></i>
									</div>
									<div class="col-md-2 col-xs-2">고동길</div>
									<div class="col-md-3 col-xs-3">
										<button class="btn submit-btn" type="submit">친구삭제</button>
										<button class="btn submit-btn" type="submit">메시지</button>
									</div>
									<div class="col-sm-1 col-xs-1">
										<i class="glyphicon glyphicon-user"></i>
									</div>
									<div class="col-md-2 col-xs-2">고동길</div>
									<div class="col-md-3 col-xs-3">
										<button class="btn submit-btn" type="submit">친구삭제</button>
										<button class="btn submit-btn" type="submit">메시지</button>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<i class="glyphicon glyphicon-user"></i>
									</div>
									<div class="col-md-2 col-xs-2">고동길</div>
									<div class="col-md-3 col-xs-3">
										<button class="btn submit-btn" type="submit">친구삭제</button>
										<button class="btn submit-btn" type="submit">메시지</button>
									</div>
									<div class="col-sm-1 col-xs-1">
										<i class="glyphicon glyphicon-user"></i>
									</div>
									<div class="col-md-2 col-xs-2">고동길</div>
									<div class="col-md-3 col-xs-3">
										<button class="btn submit-btn" type="submit">친구삭제</button>
										<button class="btn submit-btn" type="submit">메시지</button>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<i class="glyphicon glyphicon-user"></i>
									</div>
									<div class="col-md-2 col-xs-2">고동길</div>
									<div class="col-md-3 col-xs-3">
										<button class="btn submit-btn" type="submit">친구삭제</button>
										<button class="btn submit-btn" type="submit">메시지</button>
									</div>
									<div class="col-sm-1 col-xs-1">
										<i class="glyphicon glyphicon-user"></i>
									</div>
									<div class="col-md-2 col-xs-2">고동길</div>
									<div class="col-md-3 col-xs-3">
										<button class="btn submit-btn" type="submit">친구삭제</button>
										<button class="btn submit-btn" type="submit">메시지</button>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<i class="glyphicon glyphicon-user"></i>
									</div>
									<div class="col-md-2 col-xs-2">고동길</div>
									<div class="col-md-3 col-xs-3">
										<button class="btn submit-btn" type="submit">친구삭제</button>
										<button class="btn submit-btn" type="submit">메시지</button>
									</div>
									<div class="col-sm-1 col-xs-1">
										<i class="glyphicon glyphicon-user"></i>
									</div>
									<div class="col-md-2 col-xs-2">고동길</div>
									<div class="col-md-3 col-xs-3">
										<button class="btn submit-btn" type="submit">친구삭제</button>
										<button class="btn submit-btn" type="submit">메시지</button>
									</div>	
								</div>
							</li>
						</ul>	
						<ul class="nav nav-tabs friend" role="tablist">
							<li role="presentation" class="active"><a href="#home"
								aria-controls="home" role="tab" data-toggle="tab">친구신청 발신함</a></li>
							<li role="presentation"><a href="#profile"
								aria-controls="profile" role="tab" data-toggle="tab">친구신청 수신함</a></li>
						</ul>
								
						<p class="subtitle-text">친구신청 발신함(3건)</p>		
							<div class="panel panel-default">
								<div class="row panel-body">
									<div class="col-sm-2 col-xs-2 member-profile">
										<div class="row" style="text-align: center;">
											<img src="<%=cp%>/views/img/UserProfile.jpg" height="50px;"
												width="50px;" />
										</div>										
									</div>
									<div class="col-sm-3 col-xs-4">
										<span class="subtitle-text">빵돌이</span> <span>(</span> <label
											class="text-orange">27세</label> <span>)</span>
									</div>
									<div class="col-sm-3 col-xs-4 subtitle-text">
										<span>실력 ｜ </span> <label class="text-orange subtitle-text">LV.2</label>
									</div>
									<div class="col-sm-4 col-xs-6 subtitle-text">
										<span>페어플레이점수 ｜ </span> <label
											class="text-orange subtitle-text">3.7</label>
									</div>
								</div>
								<hr>
								<div class="row panel-body">
									<div class="col-sm-6 col-xs-6">
										<span>친구신청 발신일 ｜ </span> <span>2020/07/22 13:55</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span>수신상태 ｜ </span> <span style="color: red;">읽지않음</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<button type="button" class="btn btn-default btn-submit"
										style="display:inline;">
											친구신청 취소
										</button>
									</div>
								</div>
							</div>							
							
							<div class="panel panel-default">
								<div class="row panel-body">
									<div class="col-sm-2 col-xs-2 member-profile">
										<div class="row" style="text-align: center;">
											<img src="<%=cp%>/views/img/UserProfile.jpg" height="50px;"
												width="50px;" />
										</div>										
									</div>
									<div class="col-sm-3 col-xs-4">
										<span class="subtitle-text">빵순이</span> <span>(</span> <label
											class="text-orange">24세</label> <span>)</span>
									</div>
									<div class="col-sm-3 col-xs-4 subtitle-text">
										<span>실력 ｜ </span> <label class="text-orange subtitle-text">LV.1</label>
									</div>
									<div class="col-sm-4 col-xs-6 subtitle-text">
										<span>페어플레이점수 ｜ </span> <label
											class="text-orange subtitle-text">4.6</label>
									</div>
								</div>
								<hr>
								<div class="row panel-body">
									<div class="col-sm-6 col-xs-6">
										<span>친구신청 발신일 ｜ </span> <span>2020/07/22 11:15</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span>수신상태 ｜ </span> <span style="color: red;">읽지않음</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<button type="button" class="btn btn-default btn-submit"
										style="display:inline;">
											친구신청 취소
										</button>
									</div>
								</div>
							</div>
							
							<div class="panel panel-default">
								<div class="row panel-body">
									<div class="col-sm-2 col-xs-2 member-profile">
										<div class="row" style="text-align: center;">
											<img src="<%=cp%>/views/img/UserProfile.jpg" height="50px;"
												width="50px;" />
										</div>										
									</div>
									<div class="col-sm-3 col-xs-4">
										<span class="subtitle-text">빵도둑</span> <span>(</span> <label
											class="text-orange">30세</label> <span>)</span>
									</div>
									<div class="col-sm-3 col-xs-4 subtitle-text">
										<span>실력 ｜ </span> <label class="text-orange subtitle-text">LV.1</label>
									</div>
									<div class="col-sm-4 col-xs-6 subtitle-text">
										<span>페어플레이점수 ｜ </span> <label
											class="text-orange subtitle-text">2.6</label>
									</div>
								</div>
								<hr>
								<div class="row panel-body">
									<div class="col-sm-6 col-xs-6">
										<span>친구신청 발신일 ｜ </span> <span>2020/07/22 09:23</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span>수신상태 ｜ </span> <span style="color: blue;">친구수락 완료</span>
									</div>
									<div class="col-sm-3 col-xs-3">
									</div>
								</div>
							</div>
							
							<br>
							<br>
							
							<p class="subtitle-text">친구신청 수신함(2건)</p>		
							<div class="panel panel-default">
								<div class="row panel-body">
									<div class="col-sm-2 col-xs-2 member-profile">
										<div class="row" style="text-align: center;">
											<img src="<%=cp%>/views/img/UserProfile.jpg" height="50px;"
												width="50px;" />
										</div>										
									</div>
									<div class="col-sm-3 col-xs-4">
										<span class="subtitle-text">길성용</span> <span>(</span> <label
											class="text-orange">35세</label> <span>)</span>
									</div>
									<div class="col-sm-3 col-xs-4 subtitle-text">
										<span>실력 ｜ </span> <label class="text-orange subtitle-text">LV.5</label>
									</div>
									<div class="col-sm-4 col-xs-6 subtitle-text">
										<span>페어플레이점수 ｜ </span> <label
											class="text-orange subtitle-text">5.0</label>
									</div>
								</div>
								<hr>
								<div class="row panel-body">
									<div class="col-sm-6 col-xs-6">
										<span>친구신청 수신일 ｜ </span> <span>2020/07/23 10:12</span>
									</div>
									<div class="col-sm-3 col-xs-3">
									</div>
									<div class="col-sm-3 col-xs-3">
										<button type="button" class="btn btn-default btn-submit"
										style="display:inline;">
											수락
										</button>
										<button type="button" class="btn btn-default btn-danger"
										style="display:inline;">
											거절
										</button>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="row panel-body">
									<div class="col-sm-2 col-xs-2 member-profile">
										<div class="row" style="text-align: center;">
											<img src="<%=cp%>/views/img/UserProfile.jpg" height="50px;"
												width="50px;" />
										</div>										
									</div>
									<div class="col-sm-3 col-xs-4">
										<span class="subtitle-text">캐슬아이언</span> <span>(</span> <label
											class="text-orange">17세</label> <span>)</span>
									</div>
									<div class="col-sm-3 col-xs-4 subtitle-text">
										<span>실력 ｜ </span> <label class="text-orange subtitle-text">LV.1</label>
									</div>
									<div class="col-sm-4 col-xs-6 subtitle-text">
										<span>페어플레이점수 ｜ </span> <label
											class="text-orange subtitle-text">2.5</label>
									</div>
								</div>
								<hr>
								<div class="row panel-body">
									<div class="col-sm-6 col-xs-6">
										<span>친구신청 수신일 ｜ </span> <span>2020/07/22 06:33</span>
									</div>
									<div class="col-sm-3 col-xs-3">
									</div>
									<div class="col-sm-3 col-xs-3">
										<button type="button" class="btn btn-default btn-submit"
										style="display:inline;">
											수락
										</button>
										<button type="button" class="btn btn-default btn-danger"
										style="display:inline;">
											거절
										</button>
									</div>
								</div>
							</div>
								
						</div>
						<div class="row">
							<div class="col-md-4"></div>
							<div class="col-md-4 paging">
								<ul class="pagination">
									<!-- li태그의 클래스에 disabled를 넣으면 마우스를 위에 올렸을 때 클릭 금지 마크가 나오고 클릭도 되지 않는다.-->
									<!-- disabled의 의미는 앞의 페이지가 존재하지 않다는 뜻이다. -->
									<li class="disabled"><a href="#"> <span>«</span>
									</a></li>
									<!-- li태그의 클래스에 active를 넣으면 색이 반전되고 클릭도 되지 않는다. -->
									<!-- active의 의미는 현재 페이지의 의미이다. -->
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#"> <span>»</span>
									</a></li>
								</ul>
							</div>
							<div class="col-md-4"></div>
						</div>
						<div class="row">
							<div class="col-md-12"></div>
						</div>
					</div>
					<div class="col-md-2"></div>
				</div>
			</div>
		</div>

	<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>