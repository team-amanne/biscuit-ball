<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>BiscuitBail > 관리자 목록</title>

<style type="text/css">

/* 검색 소속 flex */
.search
{
	display: flex;
}

/* 검색 카테고리 */
.search_value
{
	width: 220px;
}

/* 검색입력 */
.search_content
{
	width: 200px;
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
							</div>
						</div>
						<ul class="list-group">
							<li class="list-group-item board-body board-header">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>관리자번호</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>이메일</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>닉네임</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span>수정/삭제</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>1244</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span><a href="">moon5432@empas.com</a></span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span><a href="">GM승주</a></span>
									</div>
									<div class="col-sm-2 col-xs-2">
										<button id="modify" class="btn btn-default btn-submit button_small">수정</button>
									</div>
									<div class="col-sm-2 col-xs-2">
										<button id="delete" class="btn btn-default btn-submit button_small">삭제</button>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>1245</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span><a href="">dongkyu12@naver.com</a></span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span><a href="">GM동규</a></span>
									</div>
									<div class="col-sm-2 col-xs-2">
										<button id="modify" class="btn btn-default btn-submit button_small">수정</button>
									</div>
									<div class="col-sm-2 col-xs-2">
										<button id="delete" class="btn btn-default btn-submit button_small">삭제</button>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>1225</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span><a href="">joohanbyul@yahoo.co.kr</a></span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span><a href="">GM한별</a></span>
									</div>
									<div class="col-sm-2 col-xs-2">
										<button id="modify" class="btn btn-default btn-submit button_small">수정</button>
									</div>
									<div class="col-sm-2 col-xs-2">
										<button id="delete" class="btn btn-default btn-submit button_small">삭제</button>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>1211</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span><a href="">whitegrape@nate.com</a></span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span><a href="">GM진녕</a></span>
									</div>
									<div class="col-sm-2 col-xs-2">
										<button id="modify" class="btn btn-default btn-submit button_small">수정</button>
									</div>
									<div class="col-sm-2 col-xs-2">
										<button id="delete" class="btn btn-default btn-submit button_small">삭제</button>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">
									<div class="col-sm-2 col-xs-2">
										<span>1299</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span><a href="">castle@naver.com</a></span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span><a href="">GM성철</a></span>
									</div>
									<div class="col-sm-2 col-xs-2">
										<button id="modify" class="btn btn-default btn-submit button_small">수정</button>
									</div>
									<div class="col-sm-2 col-xs-2">
										<button id="delete" class="btn btn-default btn-submit button_small">삭제</button>
									</div>
								</div>
							</li>
						</ul>
						<div class="row"> 
							<div class="col-md-12">
								<div class="search">
									<div class="search_category">
										<select class="form-control" id="search_category">
									 		<option>닉네임</option>
									  		<option>이메일</option>
										</select>
									</div>
									<div class="search_value">
										<input type='text' class="form-control" id="search_content">
									</div>
									<div class="search_button">
										<button type="button" class="btn btn-warning btn-submit button_small">검색</button>
									</div>
								</div>	
							
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