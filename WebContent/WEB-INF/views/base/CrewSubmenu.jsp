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
		<li class="active"><a>크루 홈</a></li>
		<li><a href="#">크루 프로필</a></li>
		<li><a href="#">크루 관리</a></li>
		<li><a href="#">크루 커뮤니티</a></li>
		<li><a href="#">크루 업적</a></li>
	</ul>
</div>
