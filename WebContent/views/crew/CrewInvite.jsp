<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<title>크루초대</title>

<style type="text/css">
.panel-body {
	height: 50px;
}

.subtitle-text {
	font-weight: bold;
}

.crew-name {
	font-size: 130%;
	padding-top: 5px;
}

.crew-leader {
	color: blue;
	display: none;
}

.member-profile {
	text-align: center;
}
</style>

<!-- 부트스트랩/제이쿼리 -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
   href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" href="<%=cp%>/css/board.css" />

<body>
	<!-- 헤더 -->
	<c:import url="../base/Header.jsp"></c:import>
	<!-- 서브메뉴 -->
	<!-- 서브메뉴는 기능별(농구하기/코트검색/크루/...)로 복사해서 만들어두고 import 할 것 -->
	<c:import url="../base/CrewSubmenu.jsp"></c:import>
	<!-- 메인 -->
	<div class="main container-fluid">
		<div class="section-title container">
			<span>크루 > 크루 관리 > 크루멤버관리 > 크루초대</span>
			<hr />
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row">
							<div class="col-sm-10  col-xs-10">
								<span class="subtitle-text">크루초대</span> 
								<label>(조회</label> 
								<label class="text-orange">20명</label>
								<label>)</label>
							</div>
							<div class="col-sm-2 col-xs-2">
								<a href="CrewMemberList.jsp"><button type="button" class="btn btn-default btn-link">크루멤버관리</button>
								</a>
							</div>
							<hr>
							<p></p>
						</div>
						<div class="row">

							<div class="panel panel-default">
								<div class="row">
									<div class="panel-body">
										<div class="col-sm-1 col-xs-2 member-profile">
											<div class="row">
												<img src="<%=cp%>/views/img/UserProfile.jpg" height="40px;"
													width="40px;" /> ｜
											</div>
										</div>
										<div class="col-sm-2 col-xs-2">
											<span class="subtitle-text">시골영감</span>
										</div>
										<div class="col-sm-2 col-xs-3 subtitle-text">
											<span>실력 ｜ </span> <label class="text-orange subtitle-text">LV.3</label>
										</div>
										<div class="col-sm-3 col-xs-5 subtitle-text">
											<span>페어플레이점수 ｜ </span> <label
												class="text-orange subtitle-text">4.8</label>
										</div>
										<div class="col-sm-2 subtitle-text"></div>
										<div class="col-sm-2 col-xs-5 subtitle-text">
											<button type="button" class="btn btn-default btn-submit">크루초대</button>
										</div>
									</div>
								</div>
							</div>


							<div class="panel panel-default">
								<div class="row">
									<div class="panel-body">
										<div class="col-sm-1 col-xs-2 member-profile">
											<div class="row">
												<img src="<%=cp%>/views/img/UserProfile.jpg" height="40px;"
													width="40px;" /> ｜
											</div>
										</div>
										<div class="col-sm-2 col-xs-2">
											<span class="subtitle-text">하이여</span>
										</div>
										<div class="col-sm-2 col-xs-3 subtitle-text">
											<span>실력 ｜ </span> <label class="text-orange subtitle-text">LV.3</label>
										</div>
										<div class="col-sm-3 col-xs-5 subtitle-text">
											<span>페어플레이점수 ｜ </span> <label
												class="text-orange subtitle-text">4.6</label>
										</div>
										<div class="col-sm-2 subtitle-text"></div>
										<div class="col-sm-2 col-xs-5 subtitle-text">
											<button type="button" class="btn btn-default btn-submit">크루초대</button>
										</div>
									</div>
								</div>
							</div>

							<div class="panel panel-default">
								<div class="row">
									<div class="panel-body">
										<div class="col-sm-1 col-xs-2 member-profile">
											<div class="row">
												<img src="<%=cp%>/views/img/UserProfile.jpg" height="40px;"
													width="40px;" /> ｜
											</div>
										</div>
										<div class="col-sm-2 col-xs-2">
											<span class="subtitle-text">구찌</span>
										</div>
										<div class="col-sm-2 col-xs-3 subtitle-text">
											<span>실력 ｜ </span> <label class="text-orange subtitle-text">LV.3</label>
										</div>
										<div class="col-sm-3 col-xs-5 subtitle-text">
											<span>페어플레이점수 ｜ </span> <label
												class="text-orange subtitle-text">4.0</label>
										</div>
										<div class="col-sm-2 subtitle-text"></div>
										<div class="col-sm-2 col-xs-5 subtitle-text">
											<button type="button" class="btn btn-default btn-submit">크루초대</button>
										</div>
									</div>
								</div>
							</div>

							<div class="panel panel-default">
								<div class="row">
									<div class="panel-body">
										<div class="col-sm-1 col-xs-2 member-profile">
											<div class="row">
												<img src="<%=cp%>/views/img/UserProfile.jpg" height="40px;"
													width="40px;" /> ｜
											</div>
										</div>
										<div class="col-sm-2 col-xs-2">
											<span class="subtitle-text">프라앍</span>
										</div>
										<div class="col-sm-2 col-xs-3 subtitle-text">
											<span>실력 ｜ </span> <label class="text-orange subtitle-text">LV.3</label>
										</div>
										<div class="col-sm-3 col-xs-5 subtitle-text">
											<span>페어플레이점수 ｜ </span> <label
												class="text-orange subtitle-text">4.1</label>
										</div>
										<div class="col-sm-2 subtitle-text"></div>
										<div class="col-sm-2 col-xs-5 subtitle-text">
											<button type="button" class="btn btn-default btn-submit">크루초대</button>
										</div>
									</div>
								</div>
							</div>


							<div class="panel panel-default">
								<div class="row">
									<div class="panel-body">
										<div class="col-sm-1 col-xs-2 member-profile">
											<div class="row">
												<img src="<%=cp%>/views/img/UserProfile.jpg" height="40px;"
													width="40px;" /> ｜
											</div>
										</div>
										<div class="col-sm-2 col-xs-2">
											<span class="subtitle-text">시골닭</span>
										</div>
										<div class="col-sm-2 col-xs-3 subtitle-text">
											<span>실력 ｜ </span> <label class="text-orange subtitle-text">LV.3</label>
										</div>
										<div class="col-sm-3 col-xs-5 subtitle-text">
											<span>페어플레이점수 ｜ </span> <label
												class="text-orange subtitle-text">4.8</label>
										</div>
										<div class="col-sm-2 subtitle-text"></div>
										<div class="col-sm-2 col-xs-5 subtitle-text">
											<button type="button" class="btn btn-default btn-submit">크루초대</button>
										</div>
									</div>
								</div>
							</div>

							<hr>
							
							<div class="row">
								<div class="col-md-3"></div>
								<div class="col-md-6 paging">
								<ul class="pagination">
								<!-- li태그의 클래스에 disabled를 넣으면 마우스를 위에 올렸을 때 클릭 금지 마크가 나오고 클릭도 되지 않는다.-->
								<li class="disabled"><a href="#"> <span>«</span>
								</a></li>																
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#"> <span>»</span>
								</a></li>									<!-- disabled의 의미는 앞의 페이지가 존재하지 않다는 뜻이다. -->
								</ul>
								</div>
								<div class="col-md-3"></div>
							</div>


							








						</div>












						<div class="col-md-2"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>