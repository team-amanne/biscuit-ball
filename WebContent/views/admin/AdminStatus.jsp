<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>

<title>BiscuitBail >관리자 메인(현황)</title>
<style type="text/css">

.board-header, .board-body
{
	width: 562px;
}

.align_left
{
	text-align: left;
}

.align_right
{
	text-align: right;
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
									  	배정 대기중인 문의
									  </li>
									</ul>
									<ul class="list-group bar4">
									  <li class="list-group-item">
									    <span class="badge">22</span>
									    배정 대기중인 신고
									  </li>
									</ul>
								</div>
								
							</div>
						</div>
							<div class="flex">					
								<ul class="list-group" style="margin-right: 5px;">
									<li class="list-group-item board-body" style="border:0px;">
										<div class="row">															
											<div class="col-sm-8 col-xs-8 align_left">
												<span>현재 내가 처리중인 문의</span>
											</div>
											<div class="col-sm-4 col-xs-4 align_right">
												<button class="btn btn-warning btn-submit ">더보기</button>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body board-header">
										<div class="row">															
											<div class="col-sm-2 col-xs-2">
												<span>번호</span>
											</div>
											<div class="col-sm-2 col-xs-2">
												<span>카테고리</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>제목</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>접수일시</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">															
											<div class="col-sm-2 col-xs-2">
												<span>150</span>
											</div>
											<div class="col-sm-2 col-xs-2">
												<span>농구하기</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>농구 질문있습니다</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>2020.07.01 11:53</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">															
											<div class="col-sm-2 col-xs-2">
												<span>150</span>
											</div>
											<div class="col-sm-2 col-xs-2">
												<span>농구하기</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>농구 질문있습니다</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>2020.07.01 11:53</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">															
											<div class="col-sm-2 col-xs-2">
												<span>150</span>
											</div>
											<div class="col-sm-2 col-xs-2">
												<span>농구하기</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>농구 질문있습니다</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>2020.07.01 11:53</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">															
											<div class="col-sm-2 col-xs-2">
												<span>150</span>
											</div>
											<div class="col-sm-2 col-xs-2">
												<span>농구하기</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>농구 질문있습니다</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>2020.07.01 11:53</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">															
											<div class="col-sm-2 col-xs-2">
												<span>150</span>
											</div>
											<div class="col-sm-2 col-xs-2">
												<span>농구하기</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>농구 질문있습니다</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>2020.07.01 11:53</span>
											</div>
										</div>
									</li>
								</ul>
								<ul class="list-group" style="margin-left: 5px;">
									<li class="list-group-item board-body" style="border:0px;">
										<div class="row">															
											<div class="col-sm-8 col-xs-8 align_left">
												<span>현재 내가 처리중인 신고</span>
											</div>
											<div class="col-sm-4 col-xs-4 align_right">
												<button class="btn btn-warning btn-submit">더보기</button>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body board-header">
										<div class="row">															
											<div class="col-sm-2 col-xs-2">
												<span>번호</span>
											</div>
											<div class="col-sm-2 col-xs-2">
												<span>카테고리</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>제목</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>접수일시</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">															
											<div class="col-sm-2 col-xs-2">
												<span>154</span>
											</div>
											<div class="col-sm-2 col-xs-2">
												<span>농구하기</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>농구하기 질문입니다</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>2020.07.05 11:35</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">															
											<div class="col-sm-2 col-xs-2">
												<span>154</span>
											</div>
											<div class="col-sm-2 col-xs-2">
												<span>농구하기</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>농구하기 질문입니다</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>2020.07.05 11:35</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">															
											<div class="col-sm-2 col-xs-2">
												<span>154</span>
											</div>
											<div class="col-sm-2 col-xs-2">
												<span>농구하기</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>농구하기 질문입니다</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>2020.07.05 11:35</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">															
											<div class="col-sm-2 col-xs-2">
												<span>154</span>
											</div>
											<div class="col-sm-2 col-xs-2">
												<span>농구하기</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>농구하기 질문입니다</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>2020.07.05 11:35</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">															
											<div class="col-sm-2 col-xs-2">
												<span>154</span>
											</div>
											<div class="col-sm-2 col-xs-2">
												<span>농구하기</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>농구하기 질문입니다</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>2020.07.05 11:35</span>
											</div>
										</div>
									</li>
								</ul>
							</div>
							
							<div class="flex">
								<ul class="list-group" style="margin-right: 5px;">
									<li class="list-group-item board-body" style="border:0px;">
										<div class="row">															
											<div class="col-sm-8 col-xs-8 align_left">
												<span>담당 배정 대기중인 문의</span>
											</div>
											<div class="col-sm-4 col-xs-4 align_right">
												<button class="btn btn-warning btn-submit">더보기</button>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body board-header">
										<div class="row">																														
											<div class="col-sm-2 col-xs-2">
												<span>154</span>
											</div>
											<div class="col-sm-2 col-xs-2">
												<span>농구하기</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>농구하기 질문입니다</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>2020.07.05 11:35</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">															
											<div class="col-sm-2 col-xs-2">
												<span>154</span>
											</div>
											<div class="col-sm-2 col-xs-2">
												<span>농구하기</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>농구하기 질문입니다</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>2020.07.05 11:35</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">															
											<div class="col-sm-2 col-xs-2">
												<span>154</span>
											</div>
											<div class="col-sm-2 col-xs-2">
												<span>농구하기</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>농구하기 질문입니다</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>2020.07.05 11:35</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">															
											<div class="col-sm-2 col-xs-2">
												<span>154</span>
											</div>
											<div class="col-sm-2 col-xs-2">
												<span>농구하기</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>농구하기 질문입니다</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>2020.07.05 11:35</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">															
											<div class="col-sm-2 col-xs-2">
												<span>154</span>
											</div>
											<div class="col-sm-2 col-xs-2">
												<span>농구하기</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>농구하기 질문입니다</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>2020.07.05 11:35</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">															
											<div class="col-sm-2 col-xs-2">
												<span>154</span>
											</div>
											<div class="col-sm-2 col-xs-2">
												<span>농구하기</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>농구하기 질문입니다</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>2020.07.05 11:35</span>
											</div>
										</div>
									</li>
								</ul>
								<ul class="list-group" style="margin-left: 5px;">
									<li class="list-group-item board-body" style="border:0px;">
										<div class="row">															
											<div class="col-sm-8 col-xs-8 align_left">
												<span>담당 배정 대기중인 신고</span>
											</div>
											<div class="col-sm-4 col-xs-4 align_right">
												<button class="btn btn-warning btn-submit">더보기</button>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body board-header">
										<div class="row">															
											<div class="col-sm-2 col-xs-2">
												<span>번호</span>
											</div>
											<div class="col-sm-2 col-xs-2">
												<span>카테고리</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>제목</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>접수일시</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">															
											<div class="col-sm-2 col-xs-2">
												<span>154</span>
											</div>
											<div class="col-sm-2 col-xs-2">
												<span>농구하기</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>농구하기 질문입니다</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>2020.07.05 11:35</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">															
											<div class="col-sm-2 col-xs-2">
												<span>154</span>
											</div>
											<div class="col-sm-2 col-xs-2">
												<span>농구하기</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>농구하기 질문입니다</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>2020.07.05 11:35</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">															
											<div class="col-sm-2 col-xs-2">
												<span>154</span>
											</div>
											<div class="col-sm-2 col-xs-2">
												<span>농구하기</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>농구하기 질문입니다</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>2020.07.05 11:35</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">															
											<div class="col-sm-2 col-xs-2">
												<span>154</span>
											</div>
											<div class="col-sm-2 col-xs-2">
												<span>농구하기</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>농구하기 질문입니다</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>2020.07.05 11:35</span>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row">															
											<div class="col-sm-2 col-xs-2">
												<span>154</span>
											</div>
											<div class="col-sm-2 col-xs-2">
												<span>농구하기</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>농구하기 질문입니다</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>2020.07.05 11:35</span>
											</div>
										</div>
									</li>
								</ul>
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