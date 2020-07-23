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
<title>크루 커뮤니티 게시물 조회.jsp</title>
<style type="text/css">

/* 카테고리 타이틀, 셀렉트 / 제목 타이틀, 입력창 */
.category_title
{
	display: flex;
}

.category_title_sub
{
	display: flex;
	margin-left: auto;
}

/* 제목 카테고리명 */
#title_name
{
	width: 120px;
	margin-bottom: 5px;
	text-align: center;
	background-color: orange;
	color: white;
}

/* 제목 입력 */
#title_value
{
	width: 450px;
}

/* 조회수 댓글수 */
#views_comments, #date
{
	width: 150px;
    text-align: center;
}

/* 등록, 삭제, 수정, 취소 버튼 크기조절 */
#submit, #delete, #modify, #cancel
{
	width: 120px;
}

/* 등록, 취소 버튼 묶음 */
.button
{
	display: flex;
}

/* 내용 입력 */
#content , #reple_content
{
	resize: none;
	margin-bottom: 7px;
	background-color: white;
	cursor: auto;
}

/* 버튼 */
.report
{
	margin-left: auto;
}

hr
{
	border-color: orange !important;
}

</style>
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

<!-- 서브 -->
<c:import url="../base/Submenu.jsp"></c:import>
		
<form action="" method="post" onclick="">
		<div class="main container-fluid">
		      <div class="section-title container">
		         <h5>크루 > 크루 프로필 > 크루 커뮤니티 > 커뮤니티 게시물 조회</h5>
		         <hr />
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
					<div class="category_title">
						<div class="form-control" id="title_name">
							<span>제목</span>
						</div>
						
						<div class="form-control" id="title_value">
							<span>넌 재미없어 매너없어 런데빌 데빌 런런 </span>
						</div>
							<div class="category_title_sub">
								<div class="form-control" id="views_comments">
									<span>조회수: 4</span>&nbsp;
									<span>댓글수: 3</span>
								</div>
								<div class="form-control" id="date">
									<span>2020.07.21 11:23</span>
								</div>
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
					<div>
						<textarea rows="20" cols="40" id="content" class="form-control" readonly="readonly">똑바로 해 넌 정말 Bad boy 사랑보단 호기심뿐 그 동안 난 너 땜에 깜빡속아서 넘어간거야 넌 재미없어 매너 없어 넌 Devil Devil 넌 넌</textarea>
					</div>
				</div>
				<div class="col-md-2">
				</div>
			</div>
			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-8 right-btn">
					<button type="submit" class="btn btn-warning" id="submit">게시물 신고</button> 
					<button type="submit" class="btn btn-warning" id="modify">게시물 수정</button> 
					<button type="submit" class="btn btn-warning" id="delete">게시물 삭제</button> 
					<button type="button" class="btn btn-warning btn-cancel" id="cancel">돌아가기</button> 		
				</div>
				<div class="col-md-2">
				</div>
			</div>
			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-8">
					<hr>
					<ul class="list-unstyled">
						<li>
							<div style="display: flex; font-weight: bold;">
								<div>
									카카오프렌즈_라이언
								</div>
								<div>
									( 2020.07.21 10:45:12 )
								</div>
								<div class="report">
									<button class="btn btn-warning">댓글달기</button>
									<button class="btn btn-warning">수정</button>
									<button class="btn btn-warning"><span class="glyphicon glyphicon-trash"></span></button>
									<button class="btn btn-danger">신고</button>
								</div>
							</div>
							<div>
								나는 카카오프렌즈 나는 카카오프렌즈 나는 카카오프렌즈
							</div>
						</li>
						
						<hr>
						
						<li style="padding-left: 30px;">
							<div style="display: flex; font-weight: bold;">
								<div>
									카카오프렌즈_네오
								</div>
								<div>
									( 2020.07.21 10:46:15 )
								</div>
								<div class="report">
									<button class="btn btn-warning btn-submit"><span class="glyphicon glyphicon-trash"></span></button>
									<button class="btn btn-danger">신고</button>
								
								</div>
							</div>
							<div>
								뭐래 바봉가 뭐래 바봉가
							</div>
						</li>
						
						<hr>
						
						<li style="padding-left: 30px;">
							<div style="display: flex; font-weight: bold;">
								<div>
									카카오프렌즈_라이언
								</div>
								<div>
									( 2020.07.21 10:46:15 )
								</div>
								<div class="report">
									<button class="btn btn-warning btn-submit">수정</button>
									<button class="btn btn-warning btn-submit"><span class="glyphicon glyphicon-trash"></span></button>
									<button class="btn btn-danger">신고</button>
								
								</div>
							</div>
							<div>
								아니거든 ㅡㅡ!
							</div>
						</li>
					</ul>
					<hr>
					
					<div>
						<textarea rows="4" cols="4" id="reple_content" class="form-control" placeholder="댓글입력 해주세요."></textarea>
					</div>
					<div class="right-btn">
						<button type="submit" class="btn btn-warning" id="submit">댓글 입력</button> 
					</div>					
				</div>
				<div class="col-md-2">
				</div>
			</div>
		</div>
</form>		

		<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>