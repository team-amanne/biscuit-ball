<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>FAQ 목록</title>

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
								<p>고객센터 > FAQ 목록</p>
								<hr>
								
								<button type="button" class="btn btn-warning">
									전체
								</button> 
								<button type="button" class="btn btn-default">
									계정
								</button> 
								<button type="button" class="btn btn-default">
									크루
								</button> 
								<button type="button" class="btn btn-default">
									신고
								</button> 
								<button type="button" class="btn btn-default">
									기타
								</button>
							</div>
						</div>
						<ul class="list-group">
							<li class="list-group-item board-body board-header">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>번호</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>카테고리</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span>제목</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>작성자</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>작성일</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>10</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>계정</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span><a class="a-link" href="">이메일을 변경하고싶습니다</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span><a class="a-link" href="">GM동규</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.06.25</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>9</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>계정</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span><a class="a-link" href="">이메일을 변경하고싶습니다</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span><a class="a-link" href="">GM동규</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.06.25</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>8</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>계정</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span><a class="a-link" href="">이메일을 변경하고싶습니다</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span><a class="a-link" href="">GM동규</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.06.25</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>7</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>계정</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span><a class="a-link" href="">이메일을 변경하고싶습니다</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span><a class="a-link" href="">GM동규</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.06.25</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>6</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>계정</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span><a class="a-link" href="">이메일을 변경하고싶습니다</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span><a class="a-link" href="">GM동규</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.06.25</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>5</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>계정</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span><a class="a-link" href="">이메일을 변경하고싶습니다</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span><a class="a-link" href="">GM동규</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.06.25</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>4</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>계정</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span><a class="a-link" href="">이메일을 변경하고싶습니다</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span><a class="a-link" href="">GM동규</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.06.25</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>3</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>계정</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span><a class="a-link" href="">이메일을 변경하고싶습니다</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span><a class="a-link" href="">GM동규</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.06.25</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>2</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>계정</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span><a class="a-link" href="">이메일을 변경하고싶습니다</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span><a class="a-link" href="">GM동규</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.06.25</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>1</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>계정</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span><a class="a-link" href="">이메일을 변경하고싶습니다</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span><a class="a-link" href="">GM동규</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.06.25</span>
									</div>	
								</div>
							</li>	
						</ul>
						<div class="row"> 
							<div class="col-md-12 right-btn">
		
									<button class="btn btn-default btn-submit" type="submit">작성하기</button>
									<button class="btn btn-default" type="submit">삭제하기</button>
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