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
<title>회원관리 - 메인.jsp</title>
<style type="text/css">

/* 제제회원목록, 회원신고목록, 전체회원목록 버튼 */
.category_button1 
{
	display: flex;
	width: 80%;
	margin-bottom: 15px;
	margin-left: auto;
}


/* 회원신고목록 버튼 양옆으로 늘리기용 */
#button2
{
	margin-left: 5px;
	margin-right: 5px;
}

/* 전체회원수, 유령회원 버튼 수 옆으로 늘리기용 */
#button5, #button7
{
	margin-left: 17px;
}

/* 숫자 도형 색깔 */
.badge
{
	background-color: orange !important;
}

/* 현황판 크기조절 */
.bar
{
	display: flex;
	margin-left: auto;
	width: 78%;
}

/* 현황판 간격 */
.bar1, .bar2, .bar3
{
	margin-right: 10px;
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
         <h5>회원관리 > 메인</h5>
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
		<div class="col-md-8 button">
			<div class="category_button1">
					<button type="button" id="button1" class="form-control" style="width: 210px; height: 135px; background-image: url('<%=cp %>/views/img/h1.png');">
					</button>

					<button type="button" id="button2" class="form-control" style="width: 210px; height: 135px; background-image: url('<%=cp %>/views/img/h2.png'); ">
					</button>

					<button type="button" id="button3" class="form-control" style="width: 210px; height: 135px; background-image: url('<%=cp %>/views/img/h3.png'); ">
					</button>
			</div>
				<div class="bar">
					<ul class="list-group bar1">
					  <li class="list-group-item">
					    <span class="badge">11</span>
					    제재된 회원 수
					  </li>
					</ul>
					<ul class="list-group bar2">
					  <li class="list-group-item">
					    <span class="badge">6</span>
					    전체 회원 수
					  </li>
					</ul>
					<ul class="list-group bar3">
					  <li class="list-group-item">
					    <span class="badge">9</span>
					  	탈퇴한 회원 수
					  </li>
					</ul>
					<ul class="list-group bar4">
					  <li class="list-group-item">
					    <span class="badge">22</span>
					    유령 회원 수
					  </li>
					</ul>
				</div>
		</div>
			
	</div>
		<div class="col-md-2">
		</div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
		</div>
		<div class="col-md-2">
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
		<div class="col-md-2">
		</div>
		<div class="col-md-4">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
	</div>
</div>

<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>