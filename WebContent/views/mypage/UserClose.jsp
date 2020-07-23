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
			<span>메인 > 내 정보 관리 >회원 탈퇴 비밀번호 확인</span>
			<hr />
		</div>
	<div class="row">
	<div class="col-sm-2 col-xs-2"></div>
	<div class="col-sm-8 col-xs-8">
		<div class="panel panel-default">
		
			<div class="row board-body panel-body" style="color: red;">
				<div class="col-xs-12">
					<label>※회원탈퇴전 안내 사항을 꼭 확인해주세요※</label>
				</div>
			</div>
			<div class="row board-body">
				<div class="col-xs-12">
					<label>회원탈퇴요청시 30일간의 유예기간이 주어지며 이후에는 회원정보와 활동내역이 초기화 되며 복구하실수 없습니다.</label>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-2 col-xs-2"></div>
				<div class="col-sm-8 col-xs-8 form-group" style="border: solid;">
					<div class="row">
						<p></p>
					</div>
					<div class="row">
						<p>정말로 탈퇴를 원하신다면 아래에 비밀번호를 입력하시고 탈퇴 버튼을 눌러주세요</p>
					</div>

					<div class="row">
						<p>비밀번호는 타인에게 노출되지 않도록 주의해주세요!</p>
					</div>
					<div class="row">
						<div class="col-sm-3 col-xs-3" style="font-size: 120%; padding-top: 4px;">
							<span>비밀번호</span>
						</div>
						<div class="col-sm-8 col-xs-8">
							<p><input type="password" class="form-control" id="pwdcheck"></p>
						</div>
					</div>
					<form class="form-horizontal">
						<div class="row right-btn">
							<div class="col-sm-11 col-xs-11">
								<a href="MyInfo.jsp"><button type="button" class="btn btn-default">취소</button></a>
								<button type="button" class="btn btn-default btn-submit">확인</button>
							</div>	
						</div>
					</form>
				</div>
					<div class="col-sm-2 col-xs-2"></div>
				</div>
			</div>
		</div>
		<div class="col-sm-2 col-xs-2"></div>
		
		</div>
		
	</div>
</body>
</html>


