<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>관리자 > 특정 관리자.jsp</title>
<style type="text/css">

.a-link
{
	border: 0px;
	background-color: white;
}

#modify, #delete
{
	width: 97px;
}

.admin_number
{
	display: flex;
}

.admin_email
{
	display: flex;
}

.admin_nickname
{
	display: flex;
	margin-bottom: 30px;
}


#admin_number, #admin_email, #admin_nickname, #admin_grade
{
	width: 200px;
	text-align: center;
	font-weight: bold;
}

#admin_number_value, #admin_email_value, #admin_nickname_value
{
	width: 250px;
}

.admin_grade
{
	display: flex;
	margin-left: 20px;
}

#admin_grade_value
{
	width: 300px;
	
}

#admin_modify, #admin_delete
{
	margin-left: 20px;
	width: 238px;
}

.badge
{
	background-color: orange !important;
}

.bar
{
	display: flex;
	margin-left: auto;
	width: 77%;
}

.bar1, .bar2, .bar3
{
	margin-right: 10px;
}

</style>

<!-- 부트스트랩/제이쿼리 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/default.css">
<link rel="stylesheet" href="<%=cp %>/css/board.css" />
</head>
<body>

	<!-- 헤더 -->
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
								<p>관리자 > 특정 관리자</p>
								<hr>
								<div>
									<div>
										<div class="admin_number">
											<div class="form-control" id="admin_number">
												<span>관리자 번호</span>
											</div>
											<div class="form-control" id="admin_number_value">
												<span>12345678</span>
											</div>
												<div class="admin_grade">
													<div class="form-control" id="admin_grade">
														<span>관리자 등급</span>
													</div>
													<div class="form-control" id="admin_grade_value">
														<span>최고 관리자</span>
													</div>
												</div>
										</div>
										<div class="admin_email">
											<div class="form-control" id="admin_email">
												<span>관리자 이메일</span>
											</div>
											<div class="form-control" id="admin_email_value">
												<span>babo123@naver.com</span>
											</div>
										</div>
										<div class="admin_nickname">
											<div class="form-control" id="admin_nickname">
												<span>관리자 닉네임</span>
											</div>
											<div class="form-control" id="admin_nickname_value">
												<span>당근맨</span>
											</div>
												<div class="admin_modify_delete">
													<div>
														<button class="btn btn-warning btn-submit" id="admin_modify">계정 정보수정</button>
														<button class="btn btn-warning btn-submit" id="admin_delete">계정 삭제</button>
													</div>
												</div>
										</div>
									</div>
									<div>
										<div class="bar">
											<ul class="list-group bar1">
											  <li class="list-group-item">
											    <span class="badge">11</span>
											    처리 중인 문의
											  </li>
											</ul>
											<ul class="list-group bar2">
											  <li class="list-group-item">
											    <span class="badge">6</span>
											    처리 중인 신고
											  </li>
											</ul>
											<ul class="list-group bar3">
											  <li class="list-group-item">
											    <span class="badge">9</span>
											  	전체 담당 문의
											  </li>
											</ul>
											<ul class="list-group bar4">
											  <li class="list-group-item">
											    <span class="badge">22</span>
											    전체 담당 신고
											  </li>
											</ul>
										</div>
									</div>
									<div>
										<button type="button" class="btn btn-warning">
											전체
										</button> 
										<button type="button" class="btn btn-default">
											처리중인 문의
										</button> 
										<button type="button" class="btn btn-default">
											처리중인 신고
										</button> 
										<button type="button" class="btn btn-default">
											전체 담당 문의
										</button> 
										<button type="button" class="btn btn-default">
											전체 담당 신고
										</button>
									</div>
								</div>
							</div>
						</div>
						<ul class="list-group">
							<li class="list-group-item board-body board-header">
								<div class="row">															
									<div class="col-sm-1 col-xs-2">
										<span>문의/신고번호</span>
									</div>
									<div class="col-md-2 col-xs-3">
										<span>카테고리</span>
									</div>
									<div class="col-md-2 col-xs-3">
										<span>제목</span>
									</div>
									<div class="col-md-1 col-xs-4">
										<span>진행상태</span>
									</div>
									<div class="col-md-2 col-xs-4">
										<span>접수일시</span>
									</div>
									<div class="col-md-2 col-xs-4">
										<span>담당배정일시</span>
									</div>
									<div class="col-md-2 col-xs-4">
										<span>처리완료일시</span>
									</div>
								</div>
								
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-2">
										<span>123456</span>
									</div>
									<div class="col-md-2 col-xs-3">
										<span>문의 > 계정</span>
									</div>
									<div class="col-md-2 col-xs-3">
										<span>탈퇴관련 문의있어요</span>
									</div>
									<div class="col-md-1 col-xs-4">
										<span>처리중</span>
									</div>
									<div class="col-md-2 col-xs-4">
										<span>2020.07.20 13:22</span>
									</div>
									<div class="col-md-2 col-xs-4">
										<span>2020.07.21 13:22</span>
									</div>
									<div class="col-md-2 col-xs-4">
										<span>2020.07.21 15:15</span>
									</div>									
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-2">
										<span>123456</span>
									</div>
									<div class="col-md-2 col-xs-3">
										<span>문의 > 모임</span>
									</div>
									<div class="col-md-2 col-xs-3">
										<span>탈퇴관련 문의있어요</span>
									</div>
									<div class="col-md-1 col-xs-4">
										<span>처리중</span>
									</div>
									<div class="col-md-2 col-xs-4">
										<span>2020.07.20 13:22</span>
									</div>
									<div class="col-md-2 col-xs-4">
										<span>2020.07.21 13:22</span>
									</div>
									<div class="col-md-2 col-xs-4">
										<span>2020.07.21 15:15</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-2">
										<span>123456</span>
									</div>
									<div class="col-md-2 col-xs-3">
										<span>문의 > 모임</span>
									</div>
									<div class="col-md-2 col-xs-3">
										<span>탈퇴관련 문의있어요</span>
									</div>
									<div class="col-md-1 col-xs-4">
										<span>처리완료</span>
									</div>
									<div class="col-md-2 col-xs-4">
										<span>2020.07.20 13:22</span>
									</div>
									<div class="col-md-2 col-xs-4">
										<span>2020.07.21 13:22</span>
									</div>
									<div class="col-md-2 col-xs-4">
										<span>2020.07.21 15:15</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-2">
										<span>123456</span>
									</div>
									<div class="col-md-2 col-xs-3">
										<span>문의 > 크루댓글</span>
									</div>
									<div class="col-md-2 col-xs-3">
										<span>탈퇴관련 문의있어요</span>
									</div>
									<div class="col-md-1 col-xs-4">
										<span>반려</span>
									</div>
									<div class="col-md-2 col-xs-4">
										<span>2020.07.20 13:22</span>
									</div>
									<div class="col-md-2 col-xs-4">
										<span>2020.07.21 13:22</span>
									</div>
									<div class="col-md-2 col-xs-4">
										<span>2020.07.21 15:15</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">
									<div class="col-sm-1 col-xs-2">
										<span>123456</span>
									</div>
									<div class="col-md-2 col-xs-3">
										<span>문의 > 코트이름</span>
									</div>
									<div class="col-md-2 col-xs-3">
										<span>탈퇴관련 문의있어요</span>
									</div>
									<div class="col-md-1 col-xs-4">
										<span>처리완료</span>
									</div>
									<div class="col-md-2 col-xs-4">
										<span>2020.07.20 13:22</span>
									</div>
									<div class="col-md-2 col-xs-4">
										<span>2020.07.21 13:22</span>
									</div>
									<div class="col-md-2 col-xs-4">
										<span>2020.07.21 15:15</span>
									</div>
								</div>
							</li>
						</ul>
						<div class="row"> 
							<div class="col-md-12">
							</div>	
						</div>
					</div>
						<div class="row">
							<div class="col-md-4"></div>
							<div class="col-md-4 paging">
								<ul class="pagination">
									<li class="disabled"><a href="#"> <span>«</span>
									</a></li>
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

