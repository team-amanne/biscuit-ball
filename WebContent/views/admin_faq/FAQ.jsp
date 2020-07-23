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
<title>자주묻는질문(FAQ) - 조회.jsp</title>
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
#delete, #modify
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
         <h5>고객센터 > 자주묻는질문(FAQ) 조회</h5>
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
					계정
				</div>
				<div class="view">
					<div class="look_coment">
						<span class="form-control">조회 22</span>
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
					<input type="text" class="form-control" id="title_value" value="비밀번호를 변경하고싶어요" readonly="readonly">
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
				
               ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
                     ㅣ			  	 		ㅣ
                     ㅣ	    재설정 사 진	ㅣ	
                     ㅣ			  	 		ㅣ
               ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
				
[로그인] 화면에서 그림과 같이 하단에 있는 [비밀번호 재설정] 
	
을 클릭후 비밀번호 재설정 을 진행하여 비밀번호를 지정하고
					
다시 로그인 하여 확인을 해주시면 되겠습니다.
					
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
					


				<div class="button">
					<div class="modify">
						<button type="submit" class="btn btn-warning" id="modify">수정하기</button> 
					</div>
					
					<div class="delete">
						<button type="button" class="btn btn-warning" id="delete">삭제</button> 
					</div>
				</div>
			</div>
		<div class="col-md-2">
		</div>
	</div>
</div>

<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>