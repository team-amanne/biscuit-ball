<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 모바일 반응형 처리 -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0" /> -->

<title>헤더/서브메뉴 사용 샘플</title>

<!-- 부트스트랩/제이쿼리 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<script src="http://code.jquery.com/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>

<!-- 헤더 -->
<c:import url="Header.jsp"></c:import>

<!-- 서브메뉴 -->
<!-- 서브메뉴는 기능별(농구하기/코트검색/크루/...)로 복사해서 만들어두고 import 할 것 -->
<c:import url="Submenu.jsp"></c:import>

<!-- 메인 -->
<div class="main container">

	헤더/푸터 제외한 바디 내용


</div>

<c:import url="Footer.jsp"></c:import>

</body>
</html>