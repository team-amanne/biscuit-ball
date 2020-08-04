<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/footer.css">

<div class="footer">
	<div class="container">
		
		<div class="footer__list">
			<ul class="list">
				<li>
					<span class="list__head">농구하기</span>
				</li>
				<li>
					<a href="#"><span>빠른농구</span></a>
				</li>
				<li>
					<a href="#"><span>함께농구</span></a>
				</li>
			</ul>
			<ul class="list">
				<li>
					<span class="list__head">크루</span>
				</li>
				<li>
					<a href="#"><span>탐색</span></a>
				</li>
				<li>
					<a href="#"><span>대전</span></a>
				</li>
			</ul>
			<ul class="list">
				<li>
					<span class="list__head">고객센터</span>
				</li>
				<li>
					<a href="#"><span>공지사항</span></a>
				</li>
				<li>
					<a href="#"><span>자주하는 질문</span></a>
				</li>
				<li>
					<a href=""><span>일대일 문의</span></a>
				</li>
			</ul>
		</div>
		<p class="copyright">
			&copy; Copyright 2020 Team AMANNE. All Rights Reserved.
		</p>
	</div>
</div>
