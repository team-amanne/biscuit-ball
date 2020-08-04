<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>크루 커뮤니티 게시물 목록</title>
<style type="text/css">

/* 검색 소속 flex */
.search
{
	display: flex;
}

/* 검색 카테고리 */
#search_category
{
	width: 120px;
}

/* 검색입력 */
#search_content
{
	width: 400px;
}

/* 삭제버튼 */
.delete
{
	margin-left: auto;
}


</style>

<!-- 부트스트랩/제이쿼리 -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
   href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" href="<%=cp%>/css/board.css" />
</head>
<body>

	<!-- 헤더 -->
	<c:import url="../base/Header.jsp"></c:import>
	
	<!-- 서브메뉴 -->
	<!-- 서브메뉴는 기능별(농구하기/코트검색/크루/...)로 복사해서 만들어두고 import 할 것 -->
	<c:import url="../base/CrewSubmenu.jsp"></c:import>
	
	<!-- 메인 -->
	<div class="main container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row top">
							<div class="col-md-12">
								<p>크루 > 커뮤니티 게시물 목록</p>
								<hr>
							</div>
						</div>
						<ul class="list-group">
							<li class="list-group-item board-body board-header">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>번호</span>
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
									<div class="col-md-2 col-xs-2">
										<span>조회수</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>5</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span><a class="a-link" href="">코코코 코지마 코지마안마의자</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span><a class="a-link" href="">장윤정</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.07.20</span>
									</div>	
									<div class="col-md-2 col-xs-2">
										<span>14</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>4</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span><a class="a-link" href="">치킨치킨또래오래</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span><a class="a-link" href="">또래오래</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.07.20</span>
									</div>	
									<div class="col-md-2 col-xs-2">
										<span>17</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>3</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span><a class="a-link" href="">안녕하십니까마귀</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span><a class="a-link" href="">가오리빌런</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.07.20</span>
									</div>	
									<div class="col-md-2 col-xs-2">
										<span>147</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>2</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span><a class="a-link" href="">어쩜이렇게 하늘은또 파란건지</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span><a class="a-link" href="">아이유치원</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.07.20</span>
									</div>	
									<div class="col-md-2 col-xs-2">
										<span>25</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-2 col-xs-2">
										<span>1</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span><a class="a-link" href="">미미미미미 미치고싶어</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span><a class="a-link" href="">투애니원</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.07.20</span>
									</div>	
									<div class="col-md-2 col-xs-2">
										<span>0</span>
									</div>	
								</div>
							</li>
						</ul>
						<div class="row"> 
							<div class="col-md-12 right-btn">
								<div class="search">
									<select class="form-control" id="search_category">
								 		<option>제목</option>
								  		<option>내용</option>
								  		<option>작성자</option>
								  		<option>카테고리</option>
									</select>
									
									<input type='text' class="form-control" id="search_content">
									
									<button type="button" class="btn btn-warning">검색</button>
									<div class="delete">
										<button class="btn btn-warning" type="submit">작성하기</button>
										<button class="btn btn-warning" type="submit">크루 페이지로 이동</button>
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