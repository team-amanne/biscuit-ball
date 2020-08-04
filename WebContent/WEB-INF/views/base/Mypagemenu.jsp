<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>
<link rel="stylesheet" href="<%=cp %>/css/submenu.css" />
<!-- 페이지별 서브 메뉴바 -->
<div class="navbar navbar-default nav-tablist">
	<ul class="nav navbar-nav navbar-center nav-tablist-tabs">
		<li class="active"><a href="#">마이페이지</a></li>
		<li><a href="#">내 정보관리</a></li>
		<li><a href="#">업적 목록</a></li>
		<li><a href="#">친구 관리</a></li>
		<li><a href="#">차단 관리</a></li>
		<li><a href="#">심판정보</a></li>
	</ul>
</div>
    