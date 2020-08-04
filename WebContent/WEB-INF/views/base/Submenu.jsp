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
		<li class="active"><a>기능1</a></li>
		<li><a href="#">기능2</a></li>
		<li><a href="#">기능3</a></li>
		<li><a href="#">기능4</a></li>
		<li><a href="#">기능5</a></li>
		<li><a href="#">기능6</a></li>
		<li><a href="#">기능7</a></li>
		<li><a href="#">기능8</a></li>
		<li><a href="#">기능9</a></li>
		<li><a href="#">기능10</a></li>
	</ul>
</div>
