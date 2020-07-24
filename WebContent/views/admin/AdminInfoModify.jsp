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

.email_value, .nickname_value
{
	margin-left: 12.5%;
	width: 280px;
}

.email_certify, .nickname_check
{
	width: 130px;
	margin-left: 10px;
}

.password_value1
{
	width: 280px;
	margin-left: 9.9%
}

.password_value2
{
	width: 280px;
	margin-left: 4.2%;
}

/* 이름 정렬용 */
.f_size
{
	font-size: 15pt;
	font-weight: bold;
	margin-top: 5px;
}

/* 계정생성, 취소 버튼 포함클래스 */
.button
{
	margin-top: 20px;
	margin-left: 43%;
}

.center
{
	margin-left: 8%;
}

.cancel
{
	margin-left: 20px;
}

</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/default.css">
<link rel="stylesheet" href="<%=cp %>/css/board.css" />
</head>
<body>

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
		<div class="col-md-6 center">
			<div class="email flex">
				<label class="f_size">이메일*</label>
				<div class="email_value">
					<input type="email" class="form-control" id="email" placeholder="email" value="rlfehdrb@naver.com">
				</div>
				<div class="email_certify">
					<button class="btn btn-warning button_middle" id="email_certify">중복확인</button>
				</div>
			</div>
			
			<div class="nickname flex">
				<label class="f_size">닉네임*</label>
				<div class="nickname_value">
					<input type="text" class="form-control" id="nickname" value="길동규킹왕짱">
				</div>
				<div class="nickname_check">
					<button class="btn btn-warning button_middle" id="nickname_check">중복확인</button>
				</div>
			</div>
			<div class="password flex">
				<label class="f_size">비밀번호*</label>
				<div class="password_value1">
					<input type="password" class="form-control" id="password1">
				</div>
			</div>
			<div class="password2 flex">
				<label class="f_size">비밀번호 확인*</label>
				<div class="password_value2">
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
		<div class="col-md-6 button flex">
			<div class="create">
				<button class="btn btn-warning button_middle" id="create">수정하기</button>
			</div>
			<div class="cancel">
				<button class="btn btn-warning button_middle" id="cancel">취소</button>
			</div>
		</div>
		<div class="col-md-3">
		</div>
	</div>
</div>

<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>