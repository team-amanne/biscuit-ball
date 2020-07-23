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

.category1
{
	display: flex;
}

.category2
{
	display: flex;
}

#c_category1, #c_category2, #c_category3 , #c_category4
{
	width: 180px;
	text-align: center;
}

#c_category1, #c_category3, #c_category5
{
	width: 120px;
	text-align: center;
	margin-bottom: 5px;
}

#c_category6
{
	width: 550px;
	text-align: center;
	cursor: auto;
	background-color: white;
}

#upload
{
	width: 500px;	
}

.modify_delete
{
	display: flex;
	margin-left: auto;
}

#modify,#delete
{
	width: 110px;
	margin-left: 5px;
}

#content
{
	resize: none;
	margin-bottom: 7px;
	background-color: white;
	cursor: auto;
}

.lc
{
	width: auto;
	padding-right: 7px;
	display: flex;
	text-align: center;
	margin-left: auto;
}

input[type="text"]:disabled , textarea[disabled="disabled"]
{
	background-color: white !important;
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
		<div class="col-md-8 category1">
				<div class="form-control" id="c_category1">
					카테고리
				</div>
				
				<div class="form-control" id="c_category2">
					계정
				</div>
				<div class="lc">
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
		<div class="col-md-8 category1">
		
				<div class="form-control" id="c_category3">
					작성자
				</div>
				
				<div class="form-control" id="c_category4">
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
		
			<div class="category2">
				<div class="form-control" id="c_category5">
					제목
				</div>
				
				<div>
					<input type="text" class="form-control" id="c_category6" value="비밀번호를 변경하고싶어요" readonly="readonly">
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
			<div class="col-md-8 modify_delete">
					<div class="upload">
						<div class="form-control" id="upload">파일 : <a href="">비밀번호 재설정.jpg</a> (322.4 Kb)</div>
					</div>


				<div class="modify_delete">
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