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
	         <h5>고객센터 > 공지사항 조회</h5>
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
						안내
					</div>
					
					<div class="view flex">
						<div class="views">
							<span class="form-control">조회 45</span>
						</div>
						<div class="comment">
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
						<input type="text" class="form-control title_value" id="title_value" value="불법 및 도박, 현금거래 등 처벌 안내" readonly="readonly">
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
					<textarea rows="25" cols="80" id="content" class="form-control content_value" readonly="readonly">
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
</form>

<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>