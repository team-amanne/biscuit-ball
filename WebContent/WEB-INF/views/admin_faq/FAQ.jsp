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
		<div class="col-md-8 category flex">
				<div class="form-control category_name" id="category_name">
					카테고리
				</div>
				<div class="form-control category_value" id="category_value">
					계정
				</div>
				<div class="view flex">
					<div class="views">
						<span class="form-control views">조회 22</span>
					</div>
					<div class="comment">
						<span class="form-control comment">댓글 0</span>
					</div>
				</div>
		</div>
		<div class="col-md-2">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8 username flex">
			<div class="form-control username_name" id="username_name">
				작성자
			</div>
			<div class="form-control username_value" id="username_value">
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
			<div class="title flex">
				<div class="form-control title_name" id="title_name">
					제목
				</div>
				<div class="title_value">
					<input type="text" class="form-control title_value" id="title_value" value="비밀번호를 변경하고싶어요" readonly="readonly">
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
				<textarea rows="25" cols="80" id="content" class="form-control content_value" readonly="readonly">
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
			<div class="col-md-8">
				<div class="bottom_clickbutton">
					<div class="row"> 
						<div class="col-md-12 button_right">
							<button class="btn btn-warning button_middle" type="submit">수정하기</button>
							<button class="btn btn-warning button_middle" type="submit">돌아가기</button>
						</div>	
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