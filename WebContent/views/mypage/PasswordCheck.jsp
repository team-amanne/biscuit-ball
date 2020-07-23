<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>




<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js"
	crossorigin="anonymous"></script>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">


<style type="text/css">
.left-btn {
	text-align: left;
}

.right-btn {
	text-align: right;
}
</style>

<title>마이페이지</title>

<!-- 부트스트랩/제이쿼리 -->
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<link rel="stylesheet" href="<%=cp%>/css/board.css" />
<link rel="stylesheet" href="<%=cp%>/css/default.css" />
</head>
<body>
	<!-- 헤더 -->
	<c:import url="../base/Header.jsp"></c:import>
	
	<!-- 서브메뉴 -->
	<!-- 서브메뉴는 기능별(농구하기/코트검색/크루/...)로 복사해서 만들어두고 import 할 것 -->
	<c:import url="../base/Submenu.jsp"></c:import>
	
	<!-- 메인 -->
	<div class="main container-fluid">
		<div class="section-title container">
			<h5>마이페이지 > 내 정보관리</h5>
			<hr />
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<div class="row">
							<div class="col-xs-12">
								<h4 style="font-weight: bold;">비밀번호 확인</h4>
							</div>
						</div>
						<div class="panel panel-default ">
							<div class="panel-body">
								<div class="row panel-body">
									<div class="col-sm-1 col-xs-1"></div>
									<div class="col-sm-2 col-xs-2"><i class="fas fa-lock" style="font-size: 30px;"></i></div>
									<div class="col-sm-8 col-xs-8">	
										<div class="row">			
											<label>본인확인을 위해 다시 한 번 비밀번호를 입력하신 다음 '확인' 클릭</label>
										</div>
										<div class="row">								
											<label>비밀번호는 타인에게 노출되지 않도록 주의해주세요!</label>
										</div>
									</div>
									<div class="col-sm-1 col-xs-1"></div>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-1 col-xs-1"></div>
								<div class="col-sm-10 col-xs-10 form-group">
									<div class="row">
										<p></p>
									</div>
									<form class="form-horizontal">	
										<div class="panel panel-default">				
											<div class="row form-group panel-body">
												<div class="col-sm-3 col-xs-3">
													<label for="inputPwd" class="control-label">비밀번호</label>
												</div>
												<div class="col-sm-8 col-xs-8">
													<input type="password" class="form-control" id="pwdcheck">
												</div>
											</div>
											<div class="row right-btn panel-body">
												<div class="col-sm-11 col-xs-11">
													<a href="MyInfo.jsp"><button type="button"
															class="btn btn-default">취소</button></a>
													<button type="button" class="btn btn-default btn-submit">확인</button>
												</div>
											</div>			
										</div>
									</form>
									<div class="col-sm-1 col-xs-1"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>


