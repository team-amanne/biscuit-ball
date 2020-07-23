<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<style type="text/css">
.input-title {
	font-size: 12pt;
	padding-top: 2%;
	font-weight: bold;
}
.text-orange
{
	text-align: right;
	font-size: 10pt;
}
</style>
</head>
<body>

	<c:import url="../base/Header.jsp"></c:import>
	<div class="container-fluid">
		<div class="section-title container">
			<p>로그인 > 비밀번호 재설정</p>
			<hr />
		</div>

		<div class="col-md-2 col-xs-2"></div>
		<div class="col-md-8 col-xs-8">
			<div class="col-md-12 col-xs-12">
				<p class="subtitle-text">비밀번호 재설정 인증을 받을 이메일을 입력해주세요</p>
			</div>
			<div class="col-md-12 col-xs-12">

				<ul class="list-group">

					<li class="list-group-item board-body">
						<div class="row">
							<div class="col-sm-2 col-xs-2" align="center">
								<span class="input-title">이메일 입력</span>
							</div>
							<div class="col-sm-8 col-xs-8">
								<input type="text" class="form-control" />
							</div>
							<div class="col-sm-2 col-xs-2">
								<button class="btn btn-submit btn-block btn-default">
									인증 코드 발송</button>
							</div>

						</div>
					</li>

				</ul>
				<p class="text-orange">인증코드가 회원님의 이메일로 발송되었습니다.</p>
			</div>
			

			<div class="col-md-12 col-xs-12">

				<ul class="list-group">

					<li class="list-group-item board-body">
						<div class="row">
							<div class="col-sm-2 col-xs-2" align="center">
							</div>
							<div class="col-sm-8 col-xs-8">
								<input type="text" class="form-control" />
							</div>
							<div class="col-sm-2 col-xs-2">
								<button class="btn btn-submit btn-block btn-default">
									인증 코드 입력</button>
							</div>

						</div>
					</li>
				</ul>
				<p class="text-orange">잘못된 인증코드입니다.</p>
			</div>
		</div>
		<div class="col-md-2 col-xs-2"></div>
	</div>

	<br style="clear: both;" />
	<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>