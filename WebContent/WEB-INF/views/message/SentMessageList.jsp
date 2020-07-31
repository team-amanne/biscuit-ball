<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>


<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">


<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">


<title>송신메시지함</title>

<!-- 부트스트랩/제이쿼리 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<script src="http://code.jquery.com/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<link rel="stylesheet" href="<%=cp%>/css/board.css" />
<link rel="stylesheet" href="<%=cp%>/css/default.css" />

<style type="text/css">

.msg .col-md-3 {
	font-weight: bold;
}

.msg-title {
	height: 50px;
}

.msg-person {
	height: 80px;
}
/* 메시지내용 */
.msg-content {
	height: 500px;
}

.left-btn {
	text-align: left;
}

.right-btn {
	text-align: right;
}
.list-group-item {
	height: 50px;
	text-align: center;
}
.paging {
	text-align: center;
}

</style>



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
         	<p>메시지 > 수신메시지함 </p>
         	<hr />
     	</div>
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row">
							<div class="col-md-12" style="font-weight: bold;">
								<h4>송신메시지함</h4>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5 col-sm-8 col-xs-8 left-btn">
								<a href="ReceiveMessageList.jsp">
									<button class="btn submit-btn" type="submit">수신메시지함</button>
								</a> <a href="MessageSend.jsp">
									<button class="btn submit-btn" type="submit">메시지쓰기</button>
								</a>
							</div>
							<div class="col-md-5 col-sm-1 col-xs-1" ></div>
							<div class="col-md-2 col-sm-3 col-xs-3 right-btn">
								<a href="#">
									<button class="btn submit-btn" type="submit">삭제하기</button>
								</a>
							</div>
						</div>
						<ul class="list-group">
							<li class="list-group-item baard-body baard-header">
								<div class="col-md-1 col-sm-1 col-xs-1">
									<input type="checkbox" aria-label="...">
								</div>
								<div class="col-md-2 col-sm-2 col-xs-4">
									<span>받은 사람</span>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-5">
									<span>제목</span>
								</div>
								<div class="col-md-3 col-sm-3 col-xs-2">
									<span>일자</span>
								</div>
							</li>
							<li class="list-group-item baard-body">
								<div class="col-md-1 col-sm-1 col-xs-1">
									<input type="checkbox" aria-label="...">
								</div>
								<div class="col-md-2 col-sm-2 col-xs-4">
									<span><a href="">아맞네</a></span>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-5">
									<span><a href="SentMessage.jsp">안녕하세요 길동규 입니다.</a></span>
								</div>
								<div class="col-md-3 col-sm-3 col-xs-2">
									<span>2020-07-07</span>
								</div>
							</li>
							<li class="list-group-item baard-body">
								<div class="col-md-1 col-sm-1 col-xs-1">
									<input type="checkbox" aria-label="...">
								</div>
								<div class="col-md-2 col-sm-2 col-xs-4">
									<span><a href="">아맞네</a></span>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-5">
									<span><a href="SentMessage.jsp">안녕하세요 길동규 입니다.</a></span>
								</div>
								<div class="col-md-3 col-sm-3 col-xs-2">
									<span>2020-07-07</span>
								</div>
							</li>
							<li class="list-group-item baard-body">
								<div class="col-md-1 col-sm-1 col-xs-1">
									<input type="checkbox" aria-label="...">
								</div>
								<div class="col-md-2 col-sm-2 col-xs-4">
									<span><a href="">아맞네</a></span>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-5">
									<span><a href="SentMessage.jsp">안녕하세요 길동규 입니다.</a></span>
								</div>
								<div class="col-md-3 col-sm-3 col-xs-2">
									<span>2020-07-07</span>
								</div>
							</li>
							<li class="list-group-item baard-body">
								<div class="col-md-1 col-sm-1 col-xs-1">
									<input type="checkbox" aria-label="...">
								</div>
								<div class="col-md-2 col-sm-2 col-xs-4">
									<span><a href="">아맞네</a></span>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-5">
									<span><a href="SentMessage.jsp">안녕하세요 길동규 입니다.</a></span>
								</div>
								<div class="col-md-3 col-sm-3 col-xs-2">
									<span>2020-07-07</span>
								</div>
							</li>
							<li class="list-group-item baard-body">
								<div class="col-md-1 col-sm-1 col-xs-1">
									<input type="checkbox" aria-label="...">
								</div>
								<div class="col-md-2 col-sm-2 col-xs-4">
									<span><a href="">아맞네</a></span>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-5">
									<span><a href="SentMessage.jsp">안녕하세요 길동규 입니다.</a></span>
								</div>
								<div class="col-md-3 col-sm-3 col-xs-2">
									<span>2020-07-07</span>
								</div>
							</li>
							<li class="list-group-item baard-body">
								<div class="col-md-1 col-sm-1 col-xs-1">
									<input type="checkbox" aria-label="...">
								</div>
								<div class="col-md-2 col-sm-2 col-xs-4">
									<span><a href="">아맞네</a></span>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-5">
									<span><a href="SentMessage.jsp">안녕하세요 길동규 입니다.</a></span>
								</div>
								<div class="col-md-3 col-sm-3 col-xs-2">
									<span>2020-07-07</span>
								</div>
							</li>
							<li class="list-group-item baard-body">
								<div class="col-md-1 col-sm-1 col-xs-1">
									<input type="checkbox" aria-label="...">
								</div>
								<div class="col-md-2 col-sm-2 col-xs-4">
									<span><a href="">아맞네</a></span>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-5">
									<span><a href="SentMessage.jsp">안녕하세요 길동규 입니다.</a></span>
								</div>
								<div class="col-md-3 col-sm-3 col-xs-2">
									<span>2020-07-07</span>
								</div>
							</li>
							<li class="list-group-item baard-body">
								<div class="col-md-1 col-sm-1 col-xs-1">
									<input type="checkbox" aria-label="...">
								</div>
								<div class="col-md-2 col-sm-2 col-xs-4">
									<span><a href="">아맞네</a></span>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-5">
									<span><a href="SentMessage.jsp">안녕하세요 길동규 입니다.</a></span>
								</div>
								<div class="col-md-3 col-sm-3 col-xs-2">
									<span>2020-07-07</span>
								</div>
							</li>
							<li class="list-group-item baard-body">
								<div class="col-md-1 col-sm-1 col-xs-1">
									<input type="checkbox" aria-label="...">
								</div>
								<div class="col-md-2 col-sm-2 col-xs-4">
									<span><a href="">아맞네</a></span>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-5">
									<span><a href="SentMessage.jsp">안녕하세요 길동규 입니다.</a></span>
								</div>
								<div class="col-md-3 col-sm-3 col-xs-2">
									<span>2020-07-07</span>
								</div>
							</li>
							<li class="list-group-item baard-body">
								<div class="col-md-1 col-sm-1 col-xs-1">
									<input type="checkbox" aria-label="...">
								</div>
								<div class="col-md-2 col-sm-2 col-xs-4">
									<span><a href="">아맞네</a></span>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-5">
									<span><a href="SentMessage.jsp">안녕하세요 길동규 입니다.</a></span>
								</div>
								<div class="col-md-3 col-sm-3 col-xs-2">
									<span>2020-07-07</span>
								</div>
							</li>
						</ul>
						<div class="row">
							<div class="col-md-12"></div>
						</div>
						<div class="row">
							<div class="col-md-3"></div>
							<div class="col-md-6 paging">
								<ul class="pagination">
									<!-- li태그의 클래스에 disabled를 넣으면 마우스를 위에 올렸을 때 클릭 금지 마크가 나오고 클릭도 되지 않는다.-->
									<!-- disabled의 의미는 앞의 페이지가 존재하지 않다는 뜻이다. -->
									<li class="disabled"><a href="#"> <span>«</span>
									</a></li>
									<!-- li태그의 클래스에 active를 넣으면 색이 반전되고 클릭도 되지 않는다. -->
									<!-- active의 의미는 현재 페이지의 의미이다. -->
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#"> <span>»</span>
									</a></li>
								</ul>
							</div>
							<div class="col-md-3"></div>
						</div>
						<div class="row">
							<div class="col-md-12"></div>
						</div>
					</div>
					<div class="col-md-2"></div>
				</div>
			</div>
		</div>
	</div>

	<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>