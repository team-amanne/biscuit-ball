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
		<li
		<c:if test='${param.active == "search" }'>
		
		class="active"
		</c:if> 
		>
			<a
			<c:if test='${param.active != "search" }'>
			href="<%=cp %>/court/search"
			</c:if> 
			>코트검색</a>
		</li>

		
		<li
		<c:if test='${param.active == "register" }'>
		class="active"
		</c:if> 
		>
			<a
			<c:if test='${param.active != "register" }'>
			href="<%=cp %>/court/register"
			</c:if> 
			>코트등록</a>
		</li>
	</ul>
</div>
