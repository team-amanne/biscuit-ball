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
<title>문의/신고 - 메인.jsp</title>
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
   font-size: 18px;
}
.post_board	/* 게시판 내용 */
{
	height: 40px;
	text-align: center;
}

.category_button /* 카테고리 버튼 */
{
	display: flex;
	margin-bottom: 15px;
	margin-left: auto;
    width: 78%;
}

.button2
{
	margin-left: 15px;
	margin-right: 15px;
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
         <h5>문의/신고 > 메인</h5>
         <hr />
      </div>

	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<div class="category_button">
				<div class="button1">
					<button type="button" id="button1" class="form-control" style="width: 190px; height: 120px; background-image: url('<%=cp%>/images/other/Test1.png'); ">
					</button>
				</div>
				<div class="button2">
					<button type="button" id="button2" class="form-control" style="width: 190px; height: 120px; background-image: url('<%=cp%>/images/other/Test2.png'); ">
					</button>
				</div>
				<div class="button3">
					<button type="button" id="button3" class="form-control" style="width: 190px; height: 120px; background-image: url('<%=cp%>/images/other/Test3.png'); ">
					</button>
				</div>
			</div>
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
						<div>
							<span>문 의 내 역</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-3">
							<span>[ 친구·차단 ]</span>
						</div>
						<div class="col-md-5">
							<span><a href="">운영자님 특정유저를 차단해도 보여요</a></span>
						</div>
						<div class="col-md-2">
							<span>[ <span style="color: green; font-weight: bold;">접수완료</span> ]</span>
						</div>
						<div class="col-md-2">
							<span>2020.07.01</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-3">
							<span>[ 농구하기 ]</span>
						</div>
						<div class="col-md-5">
							<span><a href="">빠른농구 가 다른지역만 잡힘..</a></span>
						</div>
						<div class="col-md-2">
							<span>[ <span style="color: blue; font-weight: bold;">처리중</span> ]</span>
						</div>
						<div class="col-md-2">
							<span>2020.07.01</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-3">
							<span>[ 대전 ]</span>
						</div>
						<div class="col-md-5">
							<span><a href="">대전을 1:1 도 할수있나요?</a></span>
						</div>
						<div class="col-md-2">
							<span>[ <span style="color: red; font-weight: bold;">처리완료</span> ]</span>
						</div>
						<div class="col-md-2">
							<span>2020.07.01</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-3">
							<span>[ 기타 ]</span>
						</div>
						<div class="col-md-5">
							<span><a href="">여기 관리자 채용 방식이 어떻게되나요?</a></span>
						</div>
						<div class="col-md-2">
							<span>[ <span style="color: red; font-weight: bold;">처리완료</span> ]</span>
						</div>
						<div class="col-md-2">
							<span>2020.07.01</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-3">
							<span>[ 크루 ]</span>
						</div>
						<div class="col-md-5">
							<span><a href="">크루 해체하려는데 자꾸 오류납니다</a></span>
						</div>
						<div class="col-md-2">
							<span>[ <span style="color: red; font-weight: bold;">처리완료</span> ]</span>
						</div>
						<div class="col-md-2">
							<span>2020.07.01</span>
						</div>
					</li>
				</ul>		
				
						<ul class="list-group post">
					<li class="list-group-item title_board_bar">
						<div>
							<span>신 고 내 역</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-3">
							<span>[ 불법광고 ]</span>
						</div>
						<div class="col-md-5">
							<span><a href="">소녀시대 효연 마사지기계 도배글 처리좀</a></span>
						</div>
						<div class="col-md-2">
							<span>[ <span style="color: green; font-weight: bold;">접수완료</span> ]</span>
						</div>
						<div class="col-md-2">
							<span>2020.07.01</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-3">
							<span>[ 도배/댓글반복 ]</span>
						</div>
						<div class="col-md-5">
							<span><a href="">똑같은글 100개 올리는 상습범임</a></span>
						</div>
						<div class="col-md-2">
							<span>[ <span style="color: blue; font-weight: bold;">처리중</span> ]</span>
						</div>
						<div class="col-md-2">
							<span>2020.07.01</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-3">
							<span>[ 욕설/인신공격 ]</span>
						</div>
						<div class="col-md-5">
							<span><a href="">이유없이 욕설 해대는데 진짜 짜증!!</a></span>
						</div>
						<div class="col-md-2">
							<span>[ <span style="color: blue; font-weight: bold;">처리중</span> ]</span>
						</div>
						<div class="col-md-2">
							<span>2020.07.01</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-3">
							<span>[ 기타 ]</span>
						</div>
						<div class="col-md-5">
							<span><a href="">그냥 마음에 안드는놈 영구정지좀요ㅋㅋㅋ</a></span>
						</div>
						<div class="col-md-2">
							<span>[ <span style="color: #FE2EF7; font-weight: bold;">반려</span> ]</span>
						</div>
						<div class="col-md-2">
							<span>2020.07.01</span>
						</div>
					</li>
					<li class="list-group-item post_board">
						<div class="col-md-3">
							<span>[ 영리목적 ]</span>
						</div>
						<div class="col-md-5">
							<span><a href=""> [ 문승주일진 을 신고한 내용입니다. ] </a></span>
						</div>
						<div class="col-md-2">
							<span>[ <span style="color: red; font-weight: bold;">처리완료</span> ]</span>
						</div>
						<div class="col-md-2">
							<span>2020.07.01</span>
						</div>
					</li>
				</ul>	
			</div>
		<div class="col-md-2"></div>
				
		<div class="col-md-2">
		</div>
	</div>
</div>

<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>