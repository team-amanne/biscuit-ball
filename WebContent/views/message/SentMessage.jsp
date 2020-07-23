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


<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<title>수신메시지함</title>

<!-- 부트스트랩/제이쿼리 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<script src="http://code.jquery.com/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<link rel="stylesheet" href="<%=cp%>/css/board.css" />
<link rel="stylesheet" href="<%=cp%>/css/default.css" />

<style type="text/css">
.list-header {
	color: white;
	background: orange;
	font-size: 130%;
}

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
.title-text
{
	font-weight: bold;
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
         	<h5>메시지 > 송신메시지함 > 송신메시지 </h5>
         	<hr />
     	</div>
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row">
							<div class="col-md-12">
								<h4>송신 메시지</h4>
							</div>
						</div>
						<div class="row">
							<div class="col-md-5 col-sm-8 col-xs-8 left-btn">
								<a href="SentMessageList.jsp">
									<button class="btn btn-default" type="submit">송신메시지함</button>
								</a> <a href="MessageSend.jsp">
									<button class="btn btn-default" type="submit">메시지쓰기</button>
								</a>
							</div>
							<div class="col-md-5 col-sm-1 col-xs-1" ></div>
							<div class="col-md-2 col-sm-3 col-xs-3 right-btn">
								<a href="#">
									<button class="btn btn-default submit-btn" type="submit">삭제하기</button>
								</a>
							</div>
						</div>
						<ul class="list-group msg">
							<li class="list-group-item list-header">
								<div class="col-md-12 col-sm-12 col-xs-12"></div>
							</li>
							<li class="list-group-item msg-title">
								<div class="col-md-2 col-sm-2 col-xs-3">
									<span class="board-header">제목</span>
								</div>
								<div class="col-md-1 col-sm-1 col-xs-1">
									<span> | </span>
								</div>
								<div class="col-md-9 col-sm-9 col-xs-8">
									<span>안녕하세요 길동규 입니다.</span>
								</div>
							</li>
							<li class="list-group-item msg-person">
								<div class="col-md-2 col-sm-2 col-xs-3">
									<span class="board-header">받은사람</span>
								</div>
								<div class="col-md-1 col-sm-1 col-xs-1">
									<span> | </span>
								</div>
								<div class="col-md-9 col-sm-9 col-xs-8">
									<span><a href="#">gildong</a></span>
								</div>

								<div class="col-md-2 col-sm-2 col-xs-3">
									<span class="board-header">보낸 사람</span>
								</div>
								<div class="col-md-1 col-sm-1 col-xs-1">
									<span> | </span>
								</div>
								<div class="col-md-9 col-sm-9 col-xs-8">
									<span>gildong</span>
								</div>
							</li>
							<li class="list-group-item msg-title">
								<div class="col-md-12">
									<span class="board-header">내용</span>
								</div>
							</li>
							<li class="list-group-item msg-content">
								<div class="col-md-12">
									<span>안녕하세요</span> <span>잘부탁드립니다.</span>
								</div>
							</li>
						</ul>
					</div>
					<div class="col-md-2"></div>
				</div>
			</div>
		</div>
	</div>
	<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>