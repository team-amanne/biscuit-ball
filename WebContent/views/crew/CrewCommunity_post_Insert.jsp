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
<title>크루 커뮤니티 게시물 작성.jsp</title>
<style type="text/css">

/* 카테고리 타이틀, 셀렉트 / 제목 타이틀, 입력창 */
.category_title
{
	display: flex;
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
		         <h5>크루 > 크루 프로필 > 크루 커뮤니티 > 커뮤니티 게시물 작성</h5>
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
						
						<div>
							<input type="text" class="form-control" id="title_value">
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
						<textarea rows="20" cols="40" id="content" class="form-control"></textarea>
					</div>
				</div>
				<div class="col-md-2">
				</div>
			</div>
			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-8 right-btn">
					<button type="submit" class="btn btn-warning" id="submit">작성완료</button> 
					<button type="button" class="btn btn-warning btn-cancel" id="cancel">돌아가기</button> 		
				</div>
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
		</div>
</form>		

		<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>