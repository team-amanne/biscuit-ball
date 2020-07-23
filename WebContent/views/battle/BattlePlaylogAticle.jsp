<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" href="<%=cp%>/css/board.css" />
<style type="text/css">
.text-orange {
	font-size: 14pt;
	font-weight: bold;
}

.leader-crown, .referee_crew {
	color: orange;
}

.subject {
	font-size: 14pt;
}
.battle-result
{
	font-weight: bold;
	font-family: 맑은고딕;
	border: solid 1px;
	border-radius: 20px;
}

.win
{
	color: orange;
}

.
</style>
</head>
<body>

		<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/BattleSubmenu.jsp"></c:import>


	<div class="container-fuild main">
		<div class="section-title container">
			대전 > 플레이로그
			<hr />
		</div>
		<div class="col-md-2"></div>
		<div class="col-md-8 col-xs-8">
			<p class="subtitle-text">크루 플레이로그</p>
			<hr />
			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-heading">내 크루</div>
					<div class="panel-body">
						<div class="panel panel-default">
							<div class="panel-body">
								<div class="col-md-3">
									<img src="" alt="크루 이미지" />
								</div>
								<div class="col-md-6">
									<p class="subtitle-text">
										아맞네동네 &nbsp;&nbsp; <span class="text-orange">Level4</span>
									</p>
									<p>
										<span class="fas fa-crown leader-crown "></span>&nbsp;아맞네
									</p>
								</div>
								<div class="col-md-2" align="center">
									<p class="title-text battle-result">패</p>
								</div>
							</div>
						</div>

						<p class="subject">엔트리</p>
						<ul class="list-group">
							<li class="list-group-item board-body board-header">
								<div class="row">
									<div class="col-sm-3 col-xs-3">
										<span>닉네임</span>
									</div>
									<div class="col-md-3 col-xs-2">
										<span>티어</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span>키</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span>포지션</span>
									</div>

								</div>
							</li>


							<li class="list-group-item board-body">
								<div class="row">
									<div class="col-sm-3 col-xs-3">
										<span>아맞네</span>
									</div>
									<div class="col-md-3 col-xs-2">
										<span>2Level</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span>173cm</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span>PG</span>
									</div>

								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">
									<div class="col-sm-3 col-xs-3">
										<span>아맞네</span>
									</div>
									<div class="col-md-3 col-xs-2">
										<span>2Level</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span>173cm</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span>PG</span>
									</div>

								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">
									<div class="col-sm-3 col-xs-3">
										<span>아맞네</span>
									</div>
									<div class="col-md-3 col-xs-2">
										<span>2Level</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span>173cm</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span>PG</span>
									</div>

								</div>
							</li>
						</ul>
						<div class="panel panel-default">
							<div class="panel-heading">심판 멤버</div>
							<div class="panel-body">성철쓰</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-heading">상대 크루</div>
					<div class="panel-body">
						<div class="panel panel-default">
							<div class="panel-body">
								<div class="col-md-4">
									<img src="" alt="크루 이미지" />
								</div>
								<div class="col-md-6">
									<p class="subtitle-text">
										규쿤동네 &nbsp;&nbsp; <span class="text-orange">Level4</span>
									</p>
									<p>
										<span class="fas fa-crown leader-crown "></span>&nbsp;규쿤
									</p>
								</div>
								<div class="col-md-2" align="center">
									<p class="title-text battle-result win">승</p>
								</div>
							</div>
						</div>

						<p class="subject">엔트리</p>
						<ul class="list-group">
							<li class="list-group-item board-body board-header">
								<div class="row">
									<div class="col-sm-3 col-xs-3">
										<span>닉네임</span>
									</div>
									<div class="col-md-3 col-xs-2">
										<span>티어</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span>키</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span>포지션</span>
									</div>

								</div>
							</li>


							<li class="list-group-item board-body">
								<div class="row">
									<div class="col-sm-3 col-xs-3">
										<span>규쿤</span>
									</div>
									<div class="col-md-3 col-xs-2">
										<span>2Level</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span>175cm</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span>PF</span>
									</div>

								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">
									<div class="col-sm-3 col-xs-3">
										<span>규쿤</span>
									</div>
									<div class="col-md-3 col-xs-2">
										<span>2Level</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span>175cm</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span>PF</span>
									</div>

								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">
									<div class="col-sm-3 col-xs-3">
										<span>규쿤</span>
									</div>
									<div class="col-md-3 col-xs-2">
										<span>2Level</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span>175cm</span>
									</div>
									<div class="col-sm-3 col-xs-3">
										<span>PF</span>
									</div>

								</div>
							</li>
						</ul>

						<div class="panel panel-default">
							<div class="panel-heading">심판 멤버</div>
							<div class="panel-body">없음</div>
						</div>

					</div>
				</div>
			</div>

			<div class="col-md-12 col-xs-12">
				<div class="panel panel-default">
					<div class="panel-heading">대전 정보</div>
					<div class="panel-body">
						<div class="col-md-4 col-xs-4">
							<span class="text-orange">대전 일시| </span>&nbsp;&nbsp;<span>2020-07-21
								14:00 - 16:00</span>
						</div>
						<div class="col-md-4 col-xs-4">
							<span class="text-orange">대전 장소| </span>&nbsp;&nbsp;<span>서울
								마포구 연남코트</span>
						</div>

						<div class="col-md-4 col-xs-4">
							<span class="text-orange">대전 방식| </span>&nbsp;&nbsp;<span>3
								on 3</span>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-12 col-xs-12">
				<p class="subject">쿼터별 점수</p>
				<ul class="list-group">
					<li class="list-group-item board-body board-header">
						<div class="row">
							<div class="col-sm-4 col-xs-4">
								<span>쿼터</span>
							</div>
							<div class="col-sm-4 col-xs-4">
								<span>아맞네동네</span>
							</div>
							<div class="col-sm-4 col-xs-4">
								<span>규쿤동네</span>
							</div>
						</div>
					</li>


					<li class="list-group-item board-body">
						<div class="row">
							<div class="col-sm-4 col-xs-4">
								<span>1</span>
							</div>
							<div class="col-sm-4 col-xs-4">
								<span>20</span>
							</div>
							<div class="col-sm-4 col-xs-4">
								<span>30</span>
							</div>
						</div>
					</li>
					<li class="list-group-item board-body">
						<div class="row">
							<div class="col-sm-4 col-xs-4">
								<span>2</span>
							</div>
							<div class="col-sm-4 col-xs-4">
								<span>40</span>
							</div>
							<div class="col-sm-4 col-xs-4">
								<span>30</span>
							</div>
						</div>
					</li>
					<li class="list-group-item board-body">
						<div class="row">
							<div class="col-sm-4 col-xs-4">
								<span>3</span>
							</div>
							<div class="col-sm-4 col-xs-4">
								<span>20</span>
							</div>
							<div class="col-sm-4 col-xs-4">
								<span>30</span>
							</div>
						</div>
					</li>
					<li class="list-group-item board-body">
						<div class="row">
							<div class="col-sm-4 col-xs-4">
								<span>4</span>
							</div>
							<div class="col-sm-4 col-xs-4">
								<span>20</span>
							</div>
							<div class="col-sm-4 col-xs-4">
								<span>50</span>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="col-md-12 col-xs-12">
				<p class="subject">대전 결과</p>
				<ul class="list-group">
					<li class="list-group-item board-body">
						<div class="row">
							<div class="col-sm-4 col-xs-4">
								<span>스코어</span>
							</div>
							<div class="col-sm-4 col-xs-4">
								<span>100</span>
							</div>
							<div class="col-sm-4 col-xs-4">
								<span>140</span>
							</div>
						</div>
					</li>

					<li class="list-group-item board-body board-header">
						<div class="row">
							<div class="col-sm-4 col-xs-4">
								<span>결과</span>
							</div>
							<div class="col-sm-4 col-xs-4">
								<span>패배</span>
							</div>
							<div class="col-sm-4 col-xs-4">
								<span>승리</span>
							</div>
						</div>
					</li>

				</ul>
			</div>
			<div class="col-md-4"></div>
			<div class="col-md-4">
				
			</div>
			<div class="col-md-4">
			<button class="btn btn-default btn-link btn-lg btn-block">플레이로그 목록으로</button>
			</div>

		</div>
	</div>

	<br style="clear: both;" />
	<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>