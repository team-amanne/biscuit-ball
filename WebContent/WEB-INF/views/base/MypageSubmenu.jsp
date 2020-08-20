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
		<c:if test='${param.active == "mypage" }'>
		
		class="active"
		</c:if> 
		>
			<a
			<c:if test='${param.active != "mypage" }'>
			href="<%=cp %>/mypage"
			</c:if> 
			>마이페이지</a>
		</li>

		<li
		<c:if test='${param.active == "myinfo" }'>
		
		class="active"
		</c:if> 
		>
			<a
			<c:if test='${param.active != "myinfo" }'>
			href="<%=cp %>/mypage/myinfo"
			</c:if> 
			>내 정보관리</a>
		</li>
		
		<li
		<c:if test='${param.active == "achievement" }'>
		
		class="active"
		</c:if> 
		>
			<a
			<c:if test='${param.active != "achievement" }'>
			href="<%=cp %>/mypage/achievement"
			</c:if> 
			>업적목록</a>
		</li>
		
		<li
		<c:if test='${param.active == "friend" }'>
		
		class="active"
		</c:if> 
		>
			<a
			<c:if test='${param.active != "friend" }'>
			href="<%=cp %>/mypage/friend"
			</c:if> 
			>친구관리</a>
		</li>
		
		<li
		<c:if test='${param.active == "userblock" }'>
		
		class="active"
		</c:if> 
		>
			<a
			<c:if test='${param.active != "userblock" }'>
			href="<%=cp %>/mypage/userblock"
			</c:if> 
			>차단관리</a>
		</li>

	</ul>
	
</div>
    