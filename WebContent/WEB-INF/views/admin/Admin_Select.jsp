<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>BiscuitBail > 특정 관리자</title>
<style type="text/css">

.admin_number_name, .admin_email_name, .admin_nickname_name
{
	width: 150px;
	font-weight: bold;
	
}

.admin_grade_name
{
	width: 150px;
	margin-left: 11%;
}

.admin_number_value, .admin_nickname_value, .admin_email_value
{
	width: 280px;
}

.admin_grade_value
{
	width: 230px;
}

.admin_modify_delete
{
	margin-left: 11%;
}

.admin_modify
{
	margin-right: 10px;
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
								<p></p>
								<hr>
								
								<div>
									<div class="form-control" style="height: 116px;">
										<div class="flex">
											<div class="admin_number_name align_center">
												<div class="form-control border_white" id="admin_number_name">
													<span>관리자 번호</span>
												</div>
											</div>
											<div class="admin_number_value align_center">
												<div class="form-control" id="admin_number_value">
													<span>12345678</span>
												</div>
											</div>
											
												<div class="admin_grade_name align_center">
													<div class="form-control" id="admin_grade_name">
														<span>관리자 등급</span>
													</div>
												</div>
												<div class="admin_grade_value align_center">
													<div class="form-control" id="admin_grade_value">
														<span>최고 관리자</span>
													</div>
												</div>
										</div>
										
										<div class="flex">
											<div class="admin_email_name align_center">
												<div class="form-control border_white" id="admin_email_name">
													<span>관리자 이메일</span>
												</div>
											</div>
											<div class="admin_email_value align_center">
												<div class="form-control" id="admin_email_value">
													<span>babo123@naver.com</span>
												</div>
											</div>
										</div>
										
										<div class="flex">
											<div class="admin_nickname_name align_center">
												<div class="form-control border_white" id="admin_nickname_name">
													<span>관리자 닉네임</span>
												</div>
											</div>
											<div class="admin_nickname_value align_center">
												<div class="form-control" id="admin_nickname_value">
													<span>당근맨</span>
												</div>
											</div>
											
											<div class="admin_modify_delete flex">
												<div class="admin_modify">
													<button class="btn btn-warning btn-submit button_large" id="admin_modify">계정 정보수정</button>
												</div>
												<div class="admin_delete">
													<button class="btn btn-warning btn-submit button_large" id="admin_delete">계정 삭제</button>
												</div>
											</div>
										</div>
									</div>
									
									<br>
									<br>
									
									<div>
										<ul class="nav nav-tabs" role="tablist">
											<li role="presentation" class="active"><a href="#home"
												aria-controls="home" role="tab" data-toggle="tab">전체</a></li>
											<li role="presentation"><a href="#profile"
												aria-controls="profile" role="tab" data-toggle="tab">처리중인 문의</a></li>
											<li role="presentation"><a href="#profile"
												aria-controls="profile" role="tab" data-toggle="tab">처리중인 신고</a></li>
											<li role="presentation"><a href="#profile"
												aria-controls="profile" role="tab" data-toggle="tab2">전체 담당 문의</a></li>
											<li role="presentation"><a href="#profile"
												aria-controls="profile" role="tab" data-toggle="tab2">전체 담당 신고</a></li>
										</ul>
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

