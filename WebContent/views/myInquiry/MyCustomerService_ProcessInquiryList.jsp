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
<title>내담당 문의/신고 - 처리중인 문의 목록.jsp</title>
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

#s_category /* 검색창 카테고리  */
{
	width: 110px;
}

.search_category /* 검색창 카테고리 */
{
	width: 300px;
	display: flex;
	margin: auto;
}

#search_text /* 검색내용 입력 */
{
	width: 220px;
	margin-right: 5px;
}

.search	/* 검색버튼 */
{
	margin-left: auto;
}

.page /* 페이징 */
{
	text-align:center;
	margin: auto;
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

#button1,#button2,#button3,#button4	/* 문의 작성, 문의 내역, 신고 내역 버튼 정렬 */
{
	margin: auto;
}


</style>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/default.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/board.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>

<!-- 헤더 -->
<c:import url="../base/Header.jsp"></c:import>
<!-- 서브 -->
<c:import url="../base/Submenu.jsp"></c:import>

<div class="container-fluid">
      <div class="section-title container">
         <h5>내담당 문의/신고 > 처리중인 문의 목록</h5>
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
			<button type="button" class="btn btn-warning">
				전체
			</button> 
			<button type="button" class="btn btn-outline-secondary">
				농구하기
			</button> 
			<button type="button" class="btn btn-outline-secondary">
				크루
			</button> 
			<button type="button" class="btn btn-outline-secondary">
				대전
			</button> 
			<button type="button" class="btn btn-outline-secondary">
				마이페이지
			</button>
			<button type="button" class="btn btn-outline-secondary">
				코트페이지
			</button>
			<button type="button" class="btn btn-outline-secondary">
				친구·차단
			</button>
			<button type="button" class="btn btn-outline-secondary">
				기타
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
							<span><input type="checkbox" class="form-control" id="check"></span>
						</div>
						<div class="col-md-1">
							<span>번호</span>
						</div>
						<div class="col-md-2">
							<span>카테고리</span>
						</div>
						<div class="col-md-3">
							<span>제목</span>
						</div>
						<div class="col-md-2">
							<span>문의자</span>
						</div>
						<div class="col-md-1">
							<span>문의일</span>
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
							<span>[농구하기]</span>
						</div>
						<div class="col-md-3">
							<span><a href="">농구공 대신  축구공 가져가도되요?</a></span>
						</div>
						<div class="col-md-2">
							<span><a href="">버거맨</a></span>
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
							<span>[크루]</span>
						</div>
						<div class="col-md-3">
							<span><a href="">크루탈퇴하려는데 에러가 납니다</a></span>
						</div>
						<div class="col-md-2">
							<span><a href="">용산특급</a></span>
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
							<span><a href="">이럴경우엔 어떻게 해결해야하나요?</a></span>
						</div>
						<div class="col-md-2">
							<span><a href="">tmdwn1523</a></span>
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
							<span>[대전]</span>
						</div>
						<div class="col-md-3">
							<span><a href="">대전할때 1:1 도 할수있나요?</a></span>
						</div>
						<div class="col-md-2">
							<span><a href="">SeoulLand</a></span>
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
							<span>[대전]</span>
						</div>
						<div class="col-md-3">
							<span><a href="">대전 에 들어가면요..</a></span>
						</div>
						<div class="col-md-2">
							<span><a href="">카카카오오오톡</a></span>
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
							<span>[마이페이지]</span>
						</div>
						<div class="col-md-3">
							<span><a href="">마이페이지가 엑박으로만 뜹니다</a></span>
						</div>
						<div class="col-md-2">
							<span><a href="">지나가던 행인</a></span>
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
							<span>[코트페이지]</span>
						</div>
						<div class="col-md-3">
							<span><a href="">코트설정 바뀐게 반영이 안됩니다.</a></span>
						</div>
						<div class="col-md-2">
							<span><a href="">GM한별</a></span>
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
							<span>[친구·차단]</span>
						</div>
						<div class="col-md-3">
							<span><a href="">친구 등록 제한이 얼마인가요</a></span>
						</div>
						<div class="col-md-2">
							<span><a href="">GM한별</a></span>
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
							<span>[친구·차단]</span>
						</div>
						<div class="col-md-3">
							<span><a href="">차단했는데도 그사람 글이 계속보여요</a></span>
						</div>
						<div class="col-md-2">
							<span><a href="">GM한별</a></span>
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
							<span>[기타]</span>
						</div>
						<div class="col-md-3">
							<span><a href="">관리자 입사 질문</a></span>
						</div>
						<div class="col-md-2">
							<span><a href="">GM한별</a></span>
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