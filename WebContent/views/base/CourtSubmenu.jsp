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
		<li ${param.active == "search" ? "class='active'" : "" }><a ${param.active == "search" ? "" : "href='#'" }>코트검색</a></li>
		<li ${param.active == "register" ? "class='active'" : "" }><a ${param.active == "register" ? "" : "href='#'" }>코트등록</a></li>
	</ul>
</div>
