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
		<c:if test='${param.active == "party" }'>		
			class="active"
		</c:if> 
		>
			<a
			<c:if test='${param.active != "party" }'>
			href="<%=cp %>/play/party"
			</c:if> 
			>농구하기</a>
		</li>
		
		
		<li
		<c:if test='${param.active == "manage/list" }'>		
			class="active"
		</c:if> 
		>
			<a
			<c:if test='${param.active != "manage/list" }'>
			href="<%=cp %>/play/meeting/manage/list"
			</c:if> 
			>모임</a>
		</li>
		<!-- <li class="active"><a>농구하기</a></li> -->
		<li
		<c:if test='${param.active == "manage/list" }'>
		
		class="active"
		</c:if> 
		>
			<a
			<c:if test='${param.active != "manage/playlog" }'>
			href="<%=cp %>/play/meeting/manage/playlog"
			</c:if> 
			>플레이로그</a>
		</li>
		
	</ul>
</div>

