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
<title>공지사항 - 조회.jsp</title>
<style type="text/css">

/* flex용 */
.category, .username, .title
{
	display: flex;
}

/* 카테고리 제목명, 유저 제목명, 제목 제목명 */
#category_name, #username_name, #title_name
{
	width: 120px;
	text-align: center;
	background-color: orange;
}

/* 카테고리 입력 */
#category_value
{
	width: 170px;
}

/* 작성자 입력 */
#username_value
{
	width: 170px;
}

/* 제목 입력 */
#title_value
{
	width: 700px;
	cursor: auto;
	background-color: white;
}

/* 파일 업로드 */
#file_upload
{
	width: 500px;
	border-width: 1px;
	
}

/* 수정하기, 취소하기, 파일업로드, 새로운파일업로드 클래스 */
.button
{
	display: flex;
	margin-left: auto;
}

/* 수정하기, 취소하기 */
#back, #modify
{
	width: 110px;
	margin-left: 5px;
}

/* 내용입력창 */
#content
{
	resize: none;
	margin-bottom: 7px;
	cursor: auto;
	background-color: white;
}

/* 조회수 댓글수 */
.view
{
	width: auto;
	padding-right: 7px;
	display: flex;
	text-align: center;
	margin-left: auto;
}

</style>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/default.css">
</head>
<body>

<!-- 헤더 -->
<c:import url="Header.jsp"></c:import>

<form action="" method="post" onclick="">
	<div class="main container-fluid">
	      <div class="section-title container">
	         <h5>고객센터 > 공지사항 수정</h5>
	         <hr />
	      </div>
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8 category">
			
					<div class="form-control" id="category_name">
						카테고리
					</div>
					
					<div class="form-control" id="category_value">
						안내
					</div>
					
					<div class="view">
						<div class="look_coment">
							<span class="form-control">조회 45</span>
						</div>
						<div class="look_coment">
							<span class="form-control">댓글 0</span>
						</div>
					</div>
			</div>
			<div class="col-md-2">
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8 username">
					<div class="form-control" id="username_name">
						작성자
					</div>
					
					<div class="form-control" id="username_value">
						GM동규
					</div>
			</div>
			<div class="col-md-2">
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
				<div class="title">
					<div class="form-control" id="title_name">
						제목
					</div>
					<div>
						<input type="text" class="form-control" id="title_value" value="불법 및 도박, 현금거래 등 처벌 안내" readonly="readonly">
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
					<textarea rows="25" cols="80" id="content" class="form-control" readonly="readonly">
비스킷볼은 불법, 도박, 현금거래 등 불법적인 사항을 허락하지않습니다.
불법적인 사항을 업로드한 사용자를 발견하였을 경우 즉시 신고 버튼을 이용하여
접수해주시면 최대한 빠른시일 내에 처리하도록하겠습니다. 
더욱더 깨끗하고 쾌적한 비스킷볼 이 되도록 하겠습니다. 감사합니다.
					</textarea>
				</div>
			</div>
			<div class="col-md-2">
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
			</div>
				<div class="col-md-8 button">
						<div class="file_upload">
							<div class="form-control" id="file_upload">파일 : <a href="">한국사이버규칙.pdf</a> (1.4 Mb)</div>
						</div>
	
					<div class="button">
						<div class="modify">
							<button type="submit" class="btn btn-default btn-submit" id="modify">수정하기</button> 
						</div>
						
						<div class="back">
							<button type="button" class="btn btn-default btn-cancel" id="back">돌아가기</button> 
						</div>
					</div>
				</div>
			<div class="col-md-2">
			</div>
		</div>
	</div>
</form>

<c:import url="Footer.jsp"></c:import>

</body>
</html>