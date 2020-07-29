<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내담당 문의/신고 - 처리중인 신고 목록.jsp</title>
<style type="text/css">

.title_board_bar /* 게시판 번호,카테고리,제목,작성자,작성일 바  */
{
	height: 40px;
	text-align: center;
	background-color: orange !important;
	font-weight: bold;
}

.post	/* 게시판 내용 */
{
   font-size: 14px;
}
.post_board	/* 게시판 내용 */
{
	height: 40px;
	text-align: center;
}

.category /* 카테고리 버튼 */
{
	margin-bottom: 4px;
}

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

.page /* 페이징 */
{
	text-align:center;
	margin: auto;
}

.submit_delete
{
	width: 160px;
	display: flex;
	margin-left: 45.5%;
}

#check
{
	height: 20px;
	margin: 0px;
	width: 30%;
}

.category_button /* 카테고리 버튼 */
{
	display: flex;
	margin-bottom: 20px;
}

/* 숫자 도형 색깔 */
.badge
{
	background-color: orange !important;
}

/* 현황판 크기조절 */
.bar
{
	display: flex;
	margin-left: auto;
	width: 65%;
}

/* 현황판 간격 */
.bar1, .bar2, .bar3
{
	margin-right: 10px;
}


</style>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/default.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>

<!-- 헤더 -->
<c:import url="../base/Header.jsp"></c:import>
<!-- 서브 -->
<c:import url="../base/Submenu.jsp"></c:import>

<div class="main container-fluid">
      <div class="section-title container">
         <h5>내담당 문의/신고 > 처리중인 신고 목록</h5>
         <hr />
      </div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8 ">
		</div>
		<div class="col-md-2">
		</div>
		
	</div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-sm-8">
			<ul class="nav nav-tabs" role="tablist">
				<li role="presentation" class="active"><a href="#home"
					aria-controls="home" role="tab" data-toggle="tab">전체</a></li>
				<li role="presentation"><a href="#profile"
					aria-controls="profile" role="tab" data-toggle="tab">욕설/인신공격</a></li>
				<li role="presentation"><a href="#profile"
					aria-controls="profile" role="tab" data-toggle="tab2">음란성/선정성</a></li>
				<li role="presentation"><a href="#profile"
					aria-controls="profile" role="tab" data-toggle="tab2">악성코드/스파이웨어</a></li>
				<li role="presentation"><a href="#profile"
					aria-controls="profile" role="tab" data-toggle="tab2">불법광고</a></li>
				<li role="presentation"><a href="#profile"
					aria-controls="profile" role="tab" data-toggle="tab2">도배/댓글반복</a></li>
				<li role="presentation"><a href="#profile"
					aria-controls="profile" role="tab" data-toggle="tab2">영리목적</a></li>
				<li role="presentation"><a href="#profile"
					aria-controls="profile" role="tab" data-toggle="tab2">기타</a></li>
			</ul>
		</div>
		<div class="col-md-2">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">		
			<ul class="list-group post">
					<li class="list-group-item title_board_bar">
						<div class="col-md-1">
							<span><input type="checkbox" class="form-control" id="check"></span>
						</div>
						<div class="col-md-1">
							<span>번호</span>
						</div>
						<div class="col-md-2">
							<span>카테고리</span>
						</div>
						<div class="col-md-3">
							<span>내용</span>
						</div>
						<div class="col-md-2">
							<span>신고자</span>
						</div>
						<div class="col-md-1">
							<span>신고일</span>
						</div>
						<div class="col-md-2">
							<span>진행상태</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span><input type="checkbox" class="form-control" id="check"></span>
						</div>
						<div class="col-md-1">
							<span>10</span>
						</div>
						<div class="col-md-2">
							<span>[욕설/인신공격]</span>
						</div>
						<div class="col-md-3">
							<span><a href="">도배하는 상습범 정지좀요!!!</a></span>
						</div>
						<div class="col-md-2">
							<span><a href="">쿵푸팬더</a></span>
						</div>
						<div class="col-md-1">
							<span>2020.07.10</span>
						</div>
						<div class="col-md-2">
							<span class="board-header">[ <span style="color: blue; font-weight: bold;">처리중</span> ]</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span><input type="checkbox" class="form-control" id="check"></span>
						</div>
						<div class="col-md-1">
							<span>9</span>
						</div>
						<div class="col-md-2">
							<span>[욕설/인신공격]</span>
						</div>
						<div class="col-md-3">
							<span><a href="">이넘 짜증나요ㅡㅡ</a></span>
						</div>
						<div class="col-md-2">
							<span><a href="">문어맛아이스크림</a></span>
						</div>
						<div class="col-md-1">
							<span>2020.07.10</span>
						</div>
						<div class="col-md-2">
							<span class="board-header">[ <span style="color: blue; font-weight: bold;">처리중</span> ]</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span><input type="checkbox" class="form-control" id="check"></span>
						</div>
						<div class="col-md-1">
							<span>8</span>
						</div>
						<div class="col-md-2">
							<span>[기타]</span>
						</div>
						<div class="col-md-3">
							<span><a href="">영구정지좀 해주시면 ㄳ;</a></span>
						</div>
						<div class="col-md-2">
							<span><a href="">디그다디그다</a></span>
						</div>
						<div class="col-md-1">
							<span>2020.07.10</span>
						</div>
						<div class="col-md-2">
							<span class="board-header">[ <span style="color: blue; font-weight: bold;">처리중</span> ]</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span><input type="checkbox" class="form-control" id="check"></span>
						</div>
						<div class="col-md-1">
							<span>7</span>
						</div>
						<div class="col-md-2">
							<span>[욕설/인신공격]</span>
						</div>
						<div class="col-md-3">
							<span><a href="">고소하려다 참음</a></span>
						</div>
						<div class="col-md-2">
							<span><a href="">카카오초코</a></span>
						</div>
						<div class="col-md-1">
							<span>2020.07.10</span>
						</div>
						<div class="col-md-2">
							<span class="board-header">[ <span style="color: blue; font-weight: bold;">처리중</span> ]</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span><input type="checkbox" class="form-control" id="check"></span>
						</div>
						<div class="col-md-1">
							<span>6</span>
						</div>
						<div class="col-md-2">
							<span>[도배/댓글반복]</span>
						</div>
						<div class="col-md-3">
							<span><a href="">도배글 미쳤음 ㅋㅋ</a></span>
						</div>
						<div class="col-md-2">
							<span><a href="">칠갑산정상</a></span>
						</div>
						<div class="col-md-1">
							<span>2020.07.10</span>
						</div>
						<div class="col-md-2">
							<span class="board-header">[ <span style="color: blue; font-weight: bold;">처리중</span> ]</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span><input type="checkbox" class="form-control" id="check"></span>
						</div>
						<div class="col-md-1">
							<span>5</span>
						</div>
						<div class="col-md-2">
							<span>[불법광고]</span>
						</div>
						<div class="col-md-3">
							<span><a href="">관리자들 광고글 처리안함? 진짜</a></span>
						</div>
						<div class="col-md-2">
							<span><a href="">집에가고싶다</a></span>
						</div>
						<div class="col-md-1">
							<span>2020.07.10</span>
						</div>
						<div class="col-md-2">
							<span class="board-header">[ <span style="color: blue; font-weight: bold;">처리중</span> ]</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span><input type="checkbox" class="form-control" id="check"></span>
						</div>
						<div class="col-md-1">
							<span>4</span>
						</div>
						<div class="col-md-2">
							<span>[영리목적]</span>
						</div>
						<div class="col-md-3">
							<span><a href="">대놓고 상업적인글 올라오네ㅋ</a></span>
						</div>
						<div class="col-md-2">
							<span><a href="">홍대입구역2호선</a></span>
						</div>
						<div class="col-md-1">
							<span>2020.07.10</span>
						</div>
						<div class="col-md-2">
							<span class="board-header">[ <span style="color: blue; font-weight: bold;">처리중</span> ]</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span><input type="checkbox" class="form-control" id="check"></span>
						</div>
						<div class="col-md-1">
							<span>3</span>
						</div>
						<div class="col-md-2">
							<span>[음란성/선정성]</span>
						</div>
						<div class="col-md-3">
							<span><a href="">누르면 이상한 사이트뜸</a></span>
						</div>
						<div class="col-md-2">
							<span><a href="">동인천급행</a></span>
						</div>
						<div class="col-md-1">
							<span>2020.07.10</span>
						</div>
						<div class="col-md-2">
							<span class="board-header">[ <span style="color: blue; font-weight: bold;">처리중</span> ]</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span><input type="checkbox" class="form-control" id="check"></span>
						</div>
						<div class="col-md-1">
							<span>2</span>
						</div>
						<div class="col-md-2">
							<span>[욕설/인신공격]</span>
						</div>
						<div class="col-md-3">
							<span><a href="">도배하는 상습범 정지좀요!!!</a></span>
						</div>
						<div class="col-md-2">
							<span><a href="">싸다김밥</a></span>
						</div>
						<div class="col-md-1">
							<span>2020.07.10</span>
						</div>
						<div class="col-md-2">
							<span class="board-header">[ <span style="color: blue; font-weight: bold;">처리중</span> ]</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span><input type="checkbox" class="form-control" id="check"></span>
						</div>
						<div class="col-md-1">
							<span>1</span>
						</div>
						<div class="col-md-2">
							<span>[욕설/인신공격]</span>
						</div>
						<div class="col-md-3">
							<span><a href="">도배하는 상습범 정지좀요!!!</a></span>
						</div>
						<div class="col-md-2">
							<span><a href="">길서규</a></span>
						</div>
						<div class="col-md-1">
							<span>2020.07.10</span>
						</div>
						<div class="col-md-2">
							<span class="board-header">[ <span style="color: blue; font-weight: bold;">처리중</span> ]</span>
						</div>
					</li>
				</ul>		
			</div>
		<div class="col-md-2"></div>
				
		<div class="col-md-2">
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
		</div>
		<div class="col-md-2">
		</div>
	</div>
		
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<div class="search">
				<div class="search_category">
					<select class="form-control" id="search_category">
				 		<option>제목</option>
				  		<option>내용</option>
				  		<option>작성자</option>
				  		<option>카테고리</option>
					</select>
				</div>
				<div class="search_value">
					<input type='text' class="form-control" id="search_content">
				</div>
				<div class="search_button">
					<button type="button" class="btn btn-warning btn-submit button_small">검색</button>
				</div>	
		</div>
		<div class="col-md-2">		
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8 page">
			<nav>
				<ul class="pagination">
					<li class="page-item">
						<a class="page-link" href="#">맨앞페이지</a>
					</li>
					<li class="active">
						<a class="page-link" href="#">1</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">2</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">3</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">4</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">5</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">다음페이지</a>
					</li>
				</ul>
			</nav>
		</div>
		<div class="col-md-2">
		</div>
	</div>
</div>
</div>

<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>