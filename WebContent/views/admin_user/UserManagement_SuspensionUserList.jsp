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
<title>회원관리 - 제재 회원목록 - 정지회원목록.jsp</title>
<style type="text/css">

/* 게시판 번호,카테고리,제목,작성자,작성일 바  */
.title_board_bar 
{
	height: 40px;
	text-align: center;
	background-color: orange !important;
	font-weight: bold;
}

/* 게시판 내용틀 */
.post	
{
   font-size: 14px;
}

/* 게시판 내용 */
.post_board	
{
	height: 40px;
	text-align: center;
}

/* 검색창 카테고리  */
#s_category 
{
	width: 110px;
}

/* 검색창 카테고리 */
.search_category 
{
	width: 300px;
	display: flex;
	margin: auto;
}

/* 검색내용 입력 */
#search_text 
{
	width: 220px;
	margin-right: 5px;
}

/* 검색버튼 */
.search	
{
	margin-left: auto;
}

 /* 페이징 */
.page
{
	text-align:center;
	margin: auto;
}

/* 체크박스 */
#check
{
	height: 20px;
	margin: 0px;
	width: 30%;
}

/* 탈퇴처리 버튼 */
.withdrawal
{
	margin-left: auto;
	width: 7%;
}

.category
{
	margin-bottom: 5px;
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

<div class="container-fluid">
      <div class="section-title container">
         <h5>회원관리 > 제재 회원목록 > 정지 회원목록</h5>
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
		<div class="col-sm-8 category">
			<button type="button" class="btn btn-outline-secondary">
				전체
			</button> 
			<button type="button" class="btn btn-outline-secondary">
				경고 회원 목록
				
			</button> 
			<button type="button" class="btn btn-warning">
				정지 회원 목록
			</button> 

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
							<span>번호</span>
						</div>
						<div class="col-md-2">
							<span>이름</span>
						</div>
						<div class="col-md-2">
							<span>닉네임</span>
						</div>
						<div class="col-md-2">
							<span>이메일</span>
						</div>
						<div class="col-md-3">
							<span>정지사유</span>
						</div>
						<div class="col-md-2">
							<span>정지기간</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span>7</span>
						</div>
						<div class="col-md-2">
							<span>제이지</span>
						</div>
						<div class="col-md-2">
							<span>카카오톡_제이지</span>
						</div>
						<div class="col-md-2">
							<span>jee@kakaotalk.com</span>
						</div>
						<div class="col-md-3">
							<span>불법광고</span>
						</div>
						<div class="col-md-2">
							<span>2020.06.25 ~ 2060.04.12</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span>6</span>
						</div>
						<div class="col-md-2">
							<span>프로도</span>
						</div>
						<div class="col-md-2">
							<span>카카오톡_프로도</span>
						</div>
						<div class="col-md-2">
							<span>prodo@kakaotalk.com</span>
						</div>
						<div class="col-md-3">
							<span>도배/댓글반복 으로 경고누적초과</span>
						</div>
						<div class="col-md-2">
							<span>2020.06.25 ~ 2021.01.12</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span>5</span>
						</div>
						<div class="col-md-2">
							<span>어피치</span>
						</div>
						<div class="col-md-2">
							<span>카카오톡_어피치</span>
						</div>
						<div class="col-md-2">
							<span>apech@kakaotalk.com</span>
						</div>
						<div class="col-md-3">
							<span>욕설/인신공격</span>
						</div>
						<div class="col-md-2">
							<span>2020.06.25 ~ 2040.01.12</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span>4</span>
						</div>
						<div class="col-md-2">
							<span>무지</span>
						</div>
						<div class="col-md-2">
							<span>카카오톡_무지</span>
						</div>
						<div class="col-md-2">
							<span>danmooji@kakaotalk.com</span>
						</div>
						<div class="col-md-3">
							<span>불법광고 도배로 경고누적초과</span>
						</div>
						<div class="col-md-2">
							<span>2020.06.25 ~ 2030.07.22</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span>3</span>
						</div>
						<div class="col-md-2">
							<span>콘</span>
						</div>
						<div class="col-md-2">
							<span>카카오톡_콘</span>
						</div>
						<div class="col-md-2">
							<span>conn@kakaotalk.com</span>
						</div>
						<div class="col-md-3">
							<span>영리목적 게시물로 경고누적초과</span>
						</div>
						<div class="col-md-2">
							<span>2020.06.29 ~ 2020.12.25</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span>2</span>
						</div>
						<div class="col-md-2">
							<span>라이언</span>
						</div>
						<div class="col-md-2">
							<span>카카오톡_라이언</span>
						</div>
						<div class="col-md-2">
							<span>lion@kakaotalk.com</span>
						</div>
						<div class="col-md-3">
							<span>지속적 개인정보노출</span>
						</div>
						<div class="col-md-2">
							<span>2020.07.05 ~ 2020.11.01</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span>1</span>
						</div>
						<div class="col-md-2">
							<span>네오</span>
						</div>
						<div class="col-md-2">
							<span>카카오톡_네오</span>
						</div>
						<div class="col-md-2">
							<span>neo@kakaotalk.com</span>
						</div>
						<div class="col-md-3">
							<span>음란성/선정성 게시물작성</span>
						</div>
						<div class="col-md-2">
							<span>2020.07.15 ~ 2090.12.31</span>
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
				<div class="search_category">
					<div>
						<select class="form-control" id="s_category">
					 		<option>제목</option>
					  		<option>내용</option>
					  		<option>작성자</option>
					  		<option>카테고리</option>
						</select>
					</div>
					
					<div class="search_text">
						<input type='text' class="form-control" id="search_text">
					</div>
					
					<div class="search">
						<button type="button" class="btn btn-warning">검색</button> 
					</div>
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
	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-4">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
	</div>
</div>

<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>