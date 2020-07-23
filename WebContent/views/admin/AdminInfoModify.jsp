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
<title>관리자 계정 수정.jsp</title>
<style type="text/css">

/* flex 용 */
.flex
{
	display: flex;
	margin-left: auto;
	width: 80%;
}

/* 이메일1 */
#email, #nickname
{
	margin-left: 82px;
	margin-bottom: 10px;
	width: 279px;
}

#password1
{
	margin-left: 62px;
	margin-bottom: 10px;
	width: 279px;
}

#password2
{
	width: 279px;
	margin-bottom: 10px;
	margin-left: 16px;
}


/* 이메일 인증버튼 */
#email_certify, #nickname_check
{
	margin-left: 10px;
	width: 130px;
	height: 34px;
}


/* 이름 정렬용 */
.f_size
{
	font-size: 15pt;
	font-weight: bold;
	margin-top: 5px;
}

/* 계정생성, 취소 버튼 포함클래스 */
.last_button
{
	margin-left: auto;
    width: 480px;
    margin-top: 50px;
}

#sign_up, #back
{
	margin-left: 10px;
	width: 98px;
	height: 34px;
}

</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/default.css">
<link rel="stylesheet" href="<%=cp %>/css/board.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

</head>
<body>

<!-- 헤더 -->
<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/Submenu.jsp"></c:import>

<div class="container-fluid">
      <div class="section-title container">
         <p>관리자 > 관리자 계정 관리 > 관리자 계정 수정</p>
         <hr />
      </div>
	<div class="row">
		<div class="col-md-3">
		</div>
		<div class="col-md-6 input_content">
			<div class="flex">
				<label class="f_size">이메일*</label>
				<input type="email" class="form-control" id="email" value="dongkyu@gmail.com">
				
				<button class="btn btn-warning" id="email_certify">중복확인</button>
			</div>
			<div class="flex">
				<label class="f_size">닉네임*</label>
				<input type="text" class="form-control" id="nickname" value='나는야길동규'>
				
				<button class="btn btn-warning" id="nickname_check">중복확인</button>
			</div>
			<div class="pw">
				<div class="flex">
					<label class="f_size">비밀번호*</label>
					<input type="password" class="form-control" id="password1">
				</div>
				<div class="flex">
					<label class="f_size">비밀번호 확인*</label>
					<input type="password" class="form-control" id="password2">
				</div>
			</div>
		</div>
		<div class="col-md-3">
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
		</div>
		<div class="col-md-6 flex">
			<div class="last_button">
				<button class="btn btn-warning" id="sign_up">수정</button>
				<button class="btn btn-warning" id="back">취소</button>
			</div>
		</div>
		<div class="col-md-3">
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
		</div>
		<div class="col-md-6">			
		</div>
		<div class="col-md-3">
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
		</div>
		<div class="col-md-6">
		</div>
		<div class="col-md-3">
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
		</div>
		<div class="col-md-6">
		</div>
		<div class="col-md-3">
		</div>
	</div>
</div>

<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>