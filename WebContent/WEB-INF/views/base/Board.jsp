<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>

<title>게시판</title>

<!-- 부트스트랩/제이쿼리 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
	
	
<link rel="stylesheet" href="../css/board.css" />
</head>

	<!-- 메인 -->
	<div class="main container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row top">
							<div class="col-md-12">
								<h4>게시판</h4>
								<hr>
							</div>
						</div>
						<ul class="list-group">
							<li class="list-group-item board-body board-header">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>번호</span>
									</div>
									<div class="col-md-5 col-xs-4">
										<span>제목</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>작성자</span>
									</div>
									<div class="col-md-2 col-xs-3">
										<span>일시</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>1</span>
									</div>
									<div class="col-md-5 col-xs-4">
										<span>안녕하세요 반갑습니다</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>고길동티오</span>
									</div>
									<div class="col-md-2 col-xs-3">
										<span>2020.07.17</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>2</span>
									</div>
									<div class="col-md-5 col-xs-4">
										<span>안녕하세요 반갑습니다</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>고길동티오</span>
									</div>
									<div class="col-md-2 col-xs-3">
										<span>2020.07.17</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>3</span>
									</div>
									<div class="col-md-5 col-xs-4">
										<span>안녕하세요 반갑습니다</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>고길동티오</span>
									</div>
									<div class="col-md-2 col-xs-3">
										<span>2020.07.17</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>4</span>
									</div>
									<div class="col-md-5 col-xs-4">
										<span>안녕하세요 반갑습니다</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>고길동티오</span>
									</div>
									<div class="col-md-2 col-xs-3">
										<span>2020.07.17</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>5</span>
									</div>
									<div class="col-md-5 col-xs-4">
										<span>안녕하세요 반갑습니다</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>고길동티오</span>
									</div>
									<div class="col-md-2 col-xs-3">
										<span>2020.07.17</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>6</span>
									</div>
									<div class="col-md-5 col-xs-4">
										<span>안녕하세요 반갑습니다</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>고길동티오</span>
									</div>
									<div class="col-md-2 col-xs-3">
										<span>2020.07.17</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>7</span>
									</div>
									<div class="col-md-5 col-xs-4">
										<span>안녕하세요 반갑습니다</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>고길동티오</span>
									</div>
									<div class="col-md-2 col-xs-3">
										<span>2020.07.17</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>8</span>
									</div>
									<div class="col-md-5 col-xs-4">
										<span>안녕하세요 반갑습니다</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>고길동티오</span>
									</div>
									<div class="col-md-2 col-xs-3">
										<span>2020.07.17</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>9</span>
									</div>
									<div class="col-md-5 col-xs-4">
										<span>안녕하세요 반갑습니다</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>고길동티오</span>
									</div>
									<div class="col-md-2 col-xs-3">
										<span>2020.07.17</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>10</span>
									</div>
									<div class="col-md-5 col-xs-4">
										<span>안녕하세요 반갑습니다</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>고길동티오</span>
									</div>
									<div class="col-md-2 col-xs-3">
										<span>2020.07.17</span>
									</div>	
								</div>
							</li>	
						</ul>
						
						<div class="row"> 
						<div class="col-md-12  right-btn">
								<button class="btn submit-btn" type="submit">글쓰기</button>
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

</html>