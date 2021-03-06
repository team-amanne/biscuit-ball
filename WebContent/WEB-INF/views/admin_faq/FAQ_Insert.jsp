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
<title>FAQ - 작성.jsp</title>
<style type="text/css">

/* 카테고리 카테고리 명 */
.category_name
{
	width: 175px !important;
	margin-bottom: 5px;
	text-align: center;
}

/* 카테고리 타이틀, 셀렉트 크기와 정렬  */
.category_value
{
	width: 200px;
	text-align: center;
}

/* 제목 카테고리명 */
.title_name
{
	width: 180px !important;
	margin-bottom: 5px;
	text-align: center;
}

/* 제목 입력 */
.title_value
{
	width: 950px;
}


/* 등록, 취소 버튼 묶음 */
.button
{
	display: flex;
	margin-left: auto;
}

/* 내용 입력 */
.content_value
{
	resize: none;
	margin-bottom: 7px;
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
		
<form action="" method="post" onclick="">
		<div class="main container-fluid">
		      <div class="section-title container">
		         <h5>자주묻는질문(FAQ) > 자주묻는질문(FAQ) 작성</h5>
		         <hr />
		      </div>
			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-8 category flex">
						<div class="form-control category_name">
							카테고리
						</div>
						
						<div class="category_value">
							<select class="form-control category_value" id="category_value">
								<option>계정</option>
								<option>크루</option>
								<option>신고</option>
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
					<div class="category_title flex">
						<div class="form-control title_name">
							제목
						</div>
						
						<div class="title_value">
							<input type="text" class="form-control title_value" id="title_value">
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
					<div class="content">
						<textarea rows="25" cols="80" id="content" class="form-control content_value"></textarea>
					</div>
				</div>
				<div class="col-md-2">
				</div>
			</div>
			<div class="row">
				<div class="col-md-2">
				</div>
					<div class="col-md-8 button">
						<div class="button">
							<div class="submit">
								<button type="submit" class="btn btn-warning btn-submit button_middle" id="submit">등록</button> 
							</div>
							
							<div class="cancel">
								<button type="button" class="btn btn-warning btn-cancel button_middle" id="cancel">취소</button> 
							</div>
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