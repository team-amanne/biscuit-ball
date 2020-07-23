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
<title>회원관리 - 특정회원관리.jsp</title>
<style type="text/css">

/* 게시판 번호,카테고리,제목,작성자,작성일 (게시판 상단바 큰size)  */
.title_board_bar 
{
	height: 40px;
	text-align: center;
	background-color: orange !important;
	font-weight: bold;
	
}

/* 게시판 번호,카테고리,제목,작성자,작성일 (게시판 상단바 중간size)  */
.title_board_bar2
{
	width: 700px;
	height: 40px;
	text-align: center;
	background-color: orange !important;
	font-weight: bold;
	margin-top: 15px;	
}

/* 게시판 번호,카테고리,제목,작성자,작성일 (게시판 상단바 작은size)  */
.title_board_bar3
{
	width: 409px;
	height: 40px;
	text-align: center;
	background-color: orange !important;
	font-weight: bold;
	margin-top: 15px;
	margin-left: 15px;
}

/* 게시판 내용전체 틀 */
.post	
{
   font-size: 14px;
}

/* 게시판 내용1 */
.post_board
{
	height: 40px;
	text-align: center;
}

/* 게시판 내용2 */
.post_board2	
{
	width: 700px;
	height: 40px;
	text-align: center;
}

/* 게시판 내용3 */
.post_board3
{
	width: 409px;
	height: 40px;
	text-align: center;
	margin-left: 15px;
}

/* 경고/정지처리, 탈퇴처리, 회원제재 수정, 돌아가기 버튼 */
.button
{

	display: flex;
	margin-left: auto;
}

/* 경고/정지처리, 탈퇴처리, 회원제재 수정, 돌아가기 버튼 간격띄우기용 */
.buttons
{
	margin-right: 5px;
}

/* 돌아가기 버튼 */
#back
{
	margin-right: auto;
}

/* flex 용 */
.flex
{
	display: flex;
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
         <h5>회원관리 > 전체회원목록 > 특정회원관리</h5>
         <hr />
      </div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<ul class="list-group post">
				<li class="list-group-item title_board_bar">
					<div class="col-md-2">
						<span>회원번호</span>
					</div>
					<div class="col-md-2">
						<span>이름</span>
					</div>
					<div class="col-md-1">
						<span>성별</span>
					</div>
					<div class="col-md-3">
						<span>닉네임</span>
					</div>
					<div class="col-md-2">
						<span>생년월일</span>
					</div>
					<div class="col-md-2">
						<span>이메일</span>
					</div>
				</li>
				<li class="list-group-item post_board">
					<div class="col-md-2">
						<span>5678</span>
					</div>
					<div class="col-md-2">
						<span>오진녕</span>
					</div>
					<div class="col-md-1">
						<span>여성</span>
					</div>
					<div class="col-md-3">
						<span>갓진녕</span>
					</div>
					<div class="col-md-2">
						<span>1993-02-17</span>
					</div>
					<div class="col-md-2">
						<span>godwlssud@naver.com</span>
					</div>
				</li>
			</ul>		
		</div>
		<div class="col-md-2">
		</div>
		
	</div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-sm-8">
			<ul class="list-group post">
				<li class="list-group-item title_board_bar">
					<div class="col-md-2">
						<span>소속크루</span>
					</div>
					<div class="col-md-2">
						<span>거점지역</span>
					</div>
					<div class="col-md-2">
						<span>페어플레이점수</span>
					</div>
					<div class="col-md-2">
						<span>신장(cm)</span>
					</div>
					<div class="col-md-2">
						<span>선호포지션</span>
					</div>
					<div class="col-md-2">
						<span>자기평가실력</span>
					</div>
				</li>
				<li class="list-group-item post_board">
					<div class="col-md-2">
						<span>제주연합회</span>
					</div>
					<div class="col-md-2">
						<span>제주 서귀포시</span>
					</div>
					<div class="col-md-2">
						<span>5점(Max)</span>
					</div>
					<div class="col-md-2">
						<span>168cm</span>
					</div>
					<div class="col-md-2">
						<span>슈팅 가드</span>
					</div>
					<div class="col-md-2">
						<span>중</span>
					</div>
				</li>
			</ul>	
		</div>
		<div class="col-md-2">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">		
			<div class="button" align="right">
				<div class="buttons">
					<button type="submit" class="btn btn-warning">경고/정지 처리</button> 
				</div>
				<div class="buttons">
					<button type="submit" class="btn btn-warning">탈퇴처리</button> 
				</div>
				<div class="buttons">
					<button type="submit" class="btn btn-warning">회원제재 수정</button> 
				</div>
				<div class="buttons">
					<button type="button" class="btn btn-warning" id="back">돌아가기</button> 
				</div>	
			</div>
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<ul class="list-group post">
				<li class="list-group-item title_board_bar2">
					<div class="col-md-12">
						<span>문의목록</span>
					</div>
				</li>
				<li class="list-group-item post_board2">
					<div class="col-md-3">
						<span>[ 친구차단 ]</span>
					</div>
					<div class="col-md-5">
						<span>특정유저를 차단했는데도 보입니다.</span>
					</div>
					<div class="col-md-4">
						<span>2020.07.15</span>
					</div>
				</li>
				<li class="list-group-item post_board2">
					<div class="col-md-3">
						<span>[ 친구차단 ]</span>
					</div>
					<div class="col-md-5">
						<span>특정유저를 차단했는데도 보입니다.</span>
					</div>
					<div class="col-md-4">
						<span>2020.07.15</span>
					</div>
				</li>
				<li class="list-group-item post_board2">
					<div class="col-md-3">
						<span>[ 친구차단 ]</span>
					</div>
					<div class="col-md-5">
						<span>특정유저를 차단했는데도 보입니다.</span>
					</div>
					<div class="col-md-4">
						<span>2020.07.15</span>
					</div>
				</li>
			</ul>	
		</div>
		<div class="col-md-2">
		</div>
	</div>
		
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8 flex">
				<ul class="list-group post">
					<li class="list-group-item title_board_bar2">
						<div class="col-md-12">
							<span>신고목록</span>
						</div>
					</li>
					<li class="list-group-item post_board2">
						<div class="col-md-3">
							<span>[ 불법광고 ]</span>
						</div>
						<div class="col-md-5">
							<span>불법광고 신고합니다</span>
						</div>
						<div class="col-md-4">
							<span>2020.07.15</span>
						</div>
					</li>
					<li class="list-group-item post_board2">
						<div class="col-md-3">
							<span>[ 불법광고 ]</span>
						</div>
						<div class="col-md-5">
							<span>불법광고 신고합니다</span>
						</div>
						<div class="col-md-4">
							<span>2020.07.15</span>
						</div>
					</li>
					<li class="list-group-item post_board2">
						<div class="col-md-3">
							<span>[ 불법광고 ]</span>
						</div>
						<div class="col-md-5">
							<span>불법광고 신고합니다</span>
						</div>
						<div class="col-md-4">
							<span>2020.07.15</span>
						</div>
					</li>
				</ul>
			<div>
				<ul class="list-group post">
					<li class="list-group-item title_board_bar3">
						<div class="col-md-12">
							<span>신고 받은목록</span>
						</div>
					</li>
					<li class="list-group-item post_board3">
						<div class="col-md-3">
							<span>[게시물]</span>
						</div>
						<div class="col-md-6">
							<span>쌍용교육센터 홍보글</span>
						</div>
						<div class="col-md-3">
							<span>2020.07.10</span>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<div class="col-md-2">		
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8 flex">
				<ul class="list-group post">
					<li class="list-group-item title_board_bar2">
						<div class="col-md-12">
							<span>작성한 게시물</span>
						</div>
					</li>
					<li class="list-group-item post_board2">
						<div class="col-md-3">
							<span>[ 크루 ]</span>
						</div>
						<div class="col-md-5">
							<span>크루소개글</span>
						</div>
						<div class="col-md-4">
							<span>2020.07.15</span>
						</div>
					</li>
					<li class="list-group-item post_board2">
						<div class="col-md-3">
							<span>[ 크루 ]</span>
						</div>
						<div class="col-md-5">
							<span>크루소개글</span>
						</div>
						<div class="col-md-4">
							<span>2020.07.15</span>
						</div>
					</li>
					<li class="list-group-item post_board2">
						<div class="col-md-3">
							<span>[ 크루 ]</span>
						</div>
						<div class="col-md-5">
							<span>크루소개글</span>
						</div>
						<div class="col-md-4">
							<span>2020.07.15</span>
						</div>
					</li>
				</ul>
			<div>
				<ul class="list-group post">
					<li class="list-group-item title_board_bar3">
						<div class="col-md-12">
							<span>제재 상태 요약</span>
						</div>
					</li>
					<li class="list-group-item post_board3">
						<div class="col-md-6">
							<span>최근 1년 누적 경고 수 : 0</span>
						</div>
						<div class="col-md-6">
							<span>회원상태 : <span style="color: green; font-weight: bold;">정상</span></span>
						</div>
					</li>
				</ul>
			</div>
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