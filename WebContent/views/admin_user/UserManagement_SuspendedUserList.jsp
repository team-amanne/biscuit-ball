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
<title>회원관리 - 제재회원 목록.jsp</title>
<style type="text/css">

/* 게시판 번호,카테고리,제목,작성자,작성일 바  */
.title_board_bar 
{
	height: 40px;
	text-align: center;
	background-color: orange !important;
	font-weight: bold;
	color: white;
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
         <h5>회원관리 > 제재 회원목록</h5>
         <hr />
      </div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-sm-8">
			<ul class="nav nav-tabs" role="tablist">
				<li role="presentation" class="active"><a href="#home"
					aria-controls="home" role="tab" data-toggle="tab">전체</a></li>
				<li role="presentation"><a href="#profile"
					aria-controls="profile" role="tab" data-toggle="tab">경고회원 목록</a></li>
				<li role="presentation"><a href="#profile"
					aria-controls="profile" role="tab" data-toggle="tab2">정지회원 목록</a></li>
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
							<span>번호</span>
						</div>
						<div class="col-md-2">
							<span>카테고리</span>
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
						<div class="col-md-2">
							<span>소속크루</span>
						</div>
						<div class="col-md-1">
							<span>제재일시</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span>10</span>
						</div>
						<div class="col-md-2">
							<span>불법광고</span>
						</div>
						<div class="col-md-2">
							<span>문승주</span>
						</div>
						<div class="col-md-2">
							<span><a href="">일진승주</a></span>
						</div>
						<div class="col-md-2">
							<span>tmdwn123@naver.com</span>
						</div>
						<div class="col-md-2">
							<span>서울일진연합회</span>
						</div>
						<div class="col-md-1">
							<span>2020.07.15</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span>9</span>
						</div>
						<div class="col-md-2">
							<span>욕설/인신공격</span>
						</div>
						<div class="col-md-2">
							<span>채철녕</span>
						</div>
						<div class="col-md-2">
							<span><a href="">철녕오빠</a></span>
						</div>
						<div class="col-md-2">
							<span>cjfsud1541@naver.com</span>
						</div>
						<div class="col-md-2">
							<span>일산패밀리</span>
						</div>
						<div class="col-md-1">
							<span>2020.07.15</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span>8</span>
						</div>
						<div class="col-md-2">
							<span>불법광고</span>
						</div>
						<div class="col-md-2">
							<span>길동규</span>
						</div>
						<div class="col-md-2">
							<span><a href="">칠갑산의정령</a></span>
						</div>
						<div class="col-md-2">
							<span>rlfehdrb12@naver.com</span>
						</div>
						<div class="col-md-2">
							<span>홍삼캔디파</span>
						</div>
						<div class="col-md-1">
							<span>2020.07.15</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span>7</span>
						</div>
						<div class="col-md-2">
							<span>도배/댓글반복</span>
						</div>
						<div class="col-md-2">
							<span>주한별</span>
						</div>
						<div class="col-md-2">
							<span><a href="">갓별또는원스타</a></span>
						</div>
						<div class="col-md-2">
							<span>joohan15@yahoo.com</span>
						</div>
						<div class="col-md-2">
							<span></span>
						</div>
						<div class="col-md-1">
							<span>2020.07.15</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span>6</span>
						</div>
						<div class="col-md-2">
							<span>기타</span>
						</div>
						<div class="col-md-2">
							<span>오진녕</span>
						</div>
						<div class="col-md-2">
							<span><a href="">갓진녕</a></span>
						</div>
						<div class="col-md-2">
							<span>wlssud9955@cyworld.com</span>
						</div>
						<div class="col-md-2">
							<span>제주감귤연합</span>
						</div>
						<div class="col-md-1">
							<span>2020.07.15</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span>5</span>
						</div>
						<div class="col-md-2">
							<span>악성코드</span>
						</div>
						<div class="col-md-2">
							<span>신성철</span>
						</div>
						<div class="col-md-2">
							<span><a href="">정신줄</a></span>
						</div>
						<div class="col-md-2">
							<span>ShinSeongChul1541@gmail.com</span>
						</div>
						<div class="col-md-2">
							<span></span>
						</div>
						<div class="col-md-1">
							<span>2020.07.15</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span>4</span>
						</div>
						<div class="col-md-2">
							<span>영리목적</span>
						</div>
						<div class="col-md-2">
							<span>김동휘</span>
						</div>
						<div class="col-md-2">
							<span><a href="">철녕뭐하나</a></span>
						</div>
						<div class="col-md-2">
							<span>east23324@naver.com</span>
						</div>
						<div class="col-md-2">
							<span>군기반장</span>
						</div>
						<div class="col-md-1">
							<span>2020.07.15</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span>3</span>
						</div>
						<div class="col-md-2">
							<span>기타</span>
						</div>
						<div class="col-md-2">
							<span>송수진</span>
						</div>
						<div class="col-md-2">
							<span><a href="">수진쓰</a></span>
						</div>
						<div class="col-md-2">
							<span>soojin@kakao.com</span>
						</div>
						<div class="col-md-2">
							<span>문래역5번출구</span>
						</div>
						<div class="col-md-1">
							<span>2020.07.15</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span>2</span>
						</div>
						<div class="col-md-2">
							<span>음란성/선정성</span>
						</div>
						<div class="col-md-2">
							<span>씨몽키</span>
						</div>
						<div class="col-md-2">
							<span><a href="">나좀살려줘</a></span>
						</div>
						<div class="col-md-2">
							<span>seemonki@empas.com</span>
						</div>
						<div class="col-md-2">
							<span>깊은바닷속</span>
						</div>
						<div class="col-md-1">
							<span>2020.07.15</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-1">
							<span>1</span>
						</div>
						<div class="col-md-2">
							<span>불법광고</span>
						</div>
						<div class="col-md-2">
							<span>문승주</span>
						</div>
						<div class="col-md-2">
							<span><a href="">일진승주</a></span>
						</div>
						<div class="col-md-2">
							<span>tmdwn123@naver.com</span>
						</div>
						<div class="col-md-2">
							<span>서울일진연합회</span>
						</div>
						<div class="col-md-1">
							<span>2020.07.15</span>
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

<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>