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
<title>공지사항 - 작성.jsp</title>
<style type="text/css">

/* 카테고리 타이틀, 셀렉트 / 제목 타이틀, 입력창 */
.category_name, .category_title
{
	display: flex;
}

/* 카테고리, 제목 카테고리 명 */
#category_name, #title_name
{
	width: 120px;
	margin-bottom: 5px;
	text-align: center;
}

/* 카테고리 타이틀, 셀렉트 크기와 정렬  */
#c_category1, #category_value
{
	width: 180px;
	text-align: center;
}



/* 제목 입력 */
#title_value
{
	width: 550px;
}

/* 등록 버튼 크기조절 */
#submit
{
	width: 120px;
}

/* 파일업로드 크기조절 */
#file_upload
{
	margin-top: 5px;
	width: 500px;
}

/* 등록, 취소 버튼 묶음 */
.button
{
	display: flex;
	margin-left: auto;
}

/* 취소버튼 */
#cancel
{
	width: 110px;
	margin-left: 5px;
}

/* 내용 입력 */
#content 
{
	resize: none;
	margin-bottom: 7px;
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

<!-- 서브 -->
<c:import url="Submenu.jsp"></c:import>
		
<form action="" method="post" onclick="">
		<div class="main container-fluid">
		      <div class="section-title container">
		         <h5>고객센터 > 공지사항 작성</h5>
		         <hr />
		      </div>
			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-8 category_name">
						<div class="btn btn-default btn-submit" id="category_name">
							카테고리
						</div>
						
						<div>
							<select class="form-control" id="category_value">
								<option>안내</option>
								<option>점검</option>
								<option>게시물</option>
								<option>기타</option>
							</select>
						</div>				
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
			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-8">
					<div class="category_title">
						<div class="btn btn-default btn-submit" id="title_name">
							제목
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
						<textarea rows="25" cols="80" id="content" class="form-control"></textarea>
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
								<input type="file" class="form-control" id="file_upload">
							</div>
		
						<div class="button">
							<div class="submit">
								<button type="submit" class="btn btn-default btn-submit" id="submit">등록</button> 
							</div>
							
							<div class="cancel">
								<button type="button" class="btn btn-default btn-cancel" id="cancel">취소</button> 
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