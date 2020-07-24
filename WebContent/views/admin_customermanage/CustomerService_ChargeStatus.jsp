<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>문의/신고 - 메인.jsp</title>
<style type="text/css">

.a-link
{
	border: 0px;
	background-color: white;
}

/* 문의작성, 문의내역, 신고내역 버튼 */
.button_image
{
	text-align: center;
	margin-bottom: 10px;
}

</style>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/board.css">
</head>
<body>

	<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/Submenu.jsp"></c:import>
	
	<!-- 메인 -->
	<div class="main container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row top">
							<div class="col-md-12">
								<p>문의/신고 > 메인</p>
								<hr>
								<div class="button_image">
									<button type="button" class="a-link"><img src="<%=cp %>/views/img/Test1.png"></button>

									<button type="button" class="a-link"><img src="<%=cp %>/views/img/Test2.png"></button>
									
									<button type="button" class="a-link"><img src="<%=cp %>/views/img/Test3.png"></button>
								</div>
							</div>
						</div>
						<ul class="list-group">
							<li class="list-group-item board-body board-header">
								<div class="row">															
									<div class="col-sm-12 col-xs-12">
										<span>문 의 내 역</span>
									</div>
									<div class="col-sm-1 col-xs-1">
									<a href="">+더보기</a>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>[친구·차단]</span>
									</div>
									<div class="col-md-6 col-xs-6">
										<span><a href="">운영자님 특정유저를 차단해도 보여요</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[ <span style="color: green; font-weight: bold;">접수완료</span> ]</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.07.01</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>[친구·차단]</span>
									</div>
									<div class="col-md-6 col-xs-6">
										<span><a href="">운영자님 특정유저를 차단해도 보여요</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[ <span style="color: green; font-weight: bold;">접수완료</span> ]</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.07.01</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>[ 크루 ]</span>
									</div>
									<div class="col-md-6 col-xs-6">
										<span><a href="">크루 해체하려는데 자꾸 오류납니다</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[ <span style="color: blue; font-weight: bold;">처리중</span> ]</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.07.01</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>[ 기타 ]</span>
									</div>
									<div class="col-md-6 col-xs-6">
										<span><a href="">여기 관리자 채용 방식이 어떻게되나요?</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[ <span style="color: red; font-weight: bold;">처리완료</span> ]</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.07.01</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>[ 대전 ]</span>
									</div>
									<div class="col-md-6 col-xs-6">
										<span><a href="">대전을 1:1 도 할수있나요?</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[ <span style="color: red; font-weight: bold;">처리완료</span> ]</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.07.01</span>
									</div>	
								</div>
							</li>
						</ul>
						
						<ul class="list-group">
							<li class="list-group-item board-body board-header">
								<div class="row">															
									<div class="col-sm-12 col-xs-12">
										<span>신 고 내 역</span>
									</div>								
									<div class="col-sm-1 col-xs-1">
										<a href="">+더보기</a>
									</div>
								</div>

							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>[불법광고]</span>
									</div>
									<div class="col-md-6 col-xs-6">
										<span><a href="">소녀시대 효연 마사지기계 도배글 처리좀</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[ <span style="color: green; font-weight: bold;">접수완료</span> ]</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.07.01</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>[ 도배/댓글반복 ]</span>
									</div>
									<div class="col-md-6 col-xs-6">
										<span><a href="">똑같은글 100개 올리는 상습범임</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[ <span style="color: blue; font-weight: bold;">처리중</span> ]</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.07.01</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>[ 욕설/인신공격 ]</span>
									</div>
									<div class="col-md-6 col-xs-6">
										<span><a href="">이유없이 욕설 해대는데 진짜 짜증!!</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[ <span style="color: blue; font-weight: bold;">처리중</span> ]</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.07.01</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>[ 기타 ]</span>
									</div>
									<div class="col-md-6 col-xs-6">
										<span><a href="">그냥 마음에 안드는놈 영구정지좀요ㅋㅋㅋ</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[ <span style="color: #FE2EF7; font-weight: bold;">반려</span> ]</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.07.01</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>[ 영리목적 ]</span>
									</div>
									<div class="col-md-6 col-xs-6">
										<span><a href=""> [ 문승주일진 을 신고한 내용입니다. ] </a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[ <span style="color: red; font-weight: bold;">처리완료</span> ]</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.07.01</span>
									</div>
								</div>
							</li>
						</ul>
						<div class="row"> 
						</div>
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