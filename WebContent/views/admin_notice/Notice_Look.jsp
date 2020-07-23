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
         <h5>고객센터 > 공지사항 수정</h5>
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
					안내
				</div>
				<div class="lc">
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
					<input type="text" class="form-control" id="c_category6" value="불법 및 도박, 현금거래 등 처벌 안내" readonly="readonly">
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
			<div class="col-md-8 modify_delete">
					<div class="upload">
						<div class="form-control" id="upload">파일 : <a href="">한국사이버규칙.pdf</a> (1.4 Mb)</div>
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