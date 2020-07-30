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
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" href="<%=cp%>/css/board.css" />
<style type="text/css">
.info-title {
	font-weight: bold;
	font-size: 12pt;
	color: orange;
}
.btn-link
{
	margin-top: 15%;
}

</style>

</head>
<body>

		<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/BattleSubmenu.jsp"></c:import>

	<div class="container-fuild main">
		<div class="section-title container">
			대전 > 예정 대전
			<hr />
		</div>

		<div class="col-md-2"></div>

		<div class="col-md-8">
			<div class="col-md-12 col-xs-12">
				<p class="title-text">예정 대전</p>
			</div>

			<div class="col-md-12 col-xs-12">

				<div class="panel panel-default">
					<div class="panel-body">

						<div class="col-md-3">
							<div class="col-md-8 col-xs-6">
								<p class="info-title">대전번호 |</p>
							</div>
							<div class="col-md-4 col-xs-6">
								<p>123</p>
							</div>
						</div>

						<div class="col-md-4">
							<div class="col-md-6 col-xs-6">
								<p class="info-title">상대크루 |</p>
							</div>
							<div class="col-md-5 col-xs-5">
								<p>아맞네동생</p>
							</div>
						</div>

						<div class="col-md-5">
							<div class="col-md-4 col-xs-4">
								<p class="info-title">장소 |</p>
							</div>
							<div class="col-md-8 col-xs-8">
								<p>서울 마포구 쌍용코트</p>
							</div>
						</div>

					</div>
				</div>
				<p class="subtitle-text">대전 정보</p>
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="col-md-12 col-xs-12">
							<div class="col-md-4 col-xs-4">
								<p class="info-title">상대 크루 리더</p>
							</div>
							<div class="col-md-8">
								<a href=""><span>아맞네집둘째</span></a>
							</div>
						</div>

						<div class="col-md-12 col-xs-12">
							<div class="col-md-4 col-xs-4">
								<p class="info-title">대전 시간</p>
							</div>
							<div class="col-md-8">
								<span>2020-07-20 13:00 - 15:00</span>
							</div>
						</div>

						<div class="col-md-12 col-xs-12">
							<div class="col-md-4 col-xs-4">
								<p class="info-title">심판</p>
							</div>
							<div class="col-md-3">
								<a href=""><span>콥스</span></a>
							</div>
							<div class="col-md-3 col-xs-3">
								<p class="info-title">심판 페어플레이 점수</p>
							</div>
							<div class="col-md-2 col-xs-2">
								<span class="fa fa-star"></span> <span class="fa fa-star"></span>
								<span class="fa fa-star"></span> <span class="fa fa-star"></span>
								<span class="fa fa-star-half"></span>
							</div>
						</div>

						<div class="col-md-12 col-xs-12">
							<div class="col-md-4 col-xs-4">
								<p class="info-title">상대 크루 페어플레이 점수</p>
							</div>
							<div class="col-md-8">
								<span class="fa fa-star"></span> <span class="fa fa-star"></span>
								<span class="fa fa-star"></span> <span class="fa fa-star"></span>
								<span class="fa fa-star-half"></span>
							</div>
						</div>

					</div>
				</div>



			</div>

			<div class="col-md-6">
				<p class="subtitle-text">내 크루 엔트리</p>

				<ul class="list-group">
					<li class="list-group-item board-body board-header">
						<div class="row">
							<div class="col-md-3 col-xs-3">
								<span>닉네임</span>
							</div>
							<div class="col-md-3 col-xs-3">
								<span>티어</span>
							</div>
							<div class="col-md-3 col-xs-3">
								<span>키</span>
							</div>
							<div class="col-md-3 col-xs-3">
								<span>포지션</span>
							</div>
						</div>
					</li>
					<li class="list-group-item board-body">
						<div class="row">
							<div class="col-md-3 col-xs-3">
								<span>규쿤</span>
							</div>
							<div class="col-md-3 col-xs-3">
								<span>2Level</span>
							</div>
							<div class="col-md-3 col-xs-3">
								<span>175cm</span>
							</div>
							<div class="col-md-3 col-xs-3">
								<span>PF</span>
							</div>
						</div>
					</li>
					<li class="list-group-item board-body">
						<div class="row">
							<div class="col-md-3 col-xs-3">
								<span>현규</span>
							</div>
							<div class="col-md-3 col-xs-3">
								<span>3Level</span>
							</div>
							<div class="col-md-3 col-xs-3">
								<span>175cm</span>
							</div>
							<div class="col-md-3 col-xs-3">
								<span>C</span>
							</div>
						</div>
					</li>
					<li class="list-group-item board-body">
						<div class="row">
							<div class="col-md-3 col-xs-3">
								<span>성철쓰</span>
							</div>
							<div class="col-md-3 col-xs-3">
								<span>4Level</span>
							</div>
							<div class="col-md-3 col-xs-3">
								<span>173cm</span>
							</div>
							<div class="col-md-3 col-xs-3">
								<span>SG</span>
							</div>
						</div>
					</li>

				</ul>
			</div>
			<div class="col-md-6">
				<p class="subtitle-text">상대 크루 엔트리</p>
				<ul class="list-group">
					<li class="list-group-item board-body board-header">
						<div class="row">
							<div class="col-md-3 col-xs-3">
								<span>닉네임</span>
							</div>
							<div class="col-md-3 col-xs-3">
								<span>티어</span>
							</div>
							<div class="col-md-3 col-xs-3">
								<span>키</span>
							</div>
							<div class="col-md-3 col-xs-3">
								<span>포지션</span>
							</div>
						</div>
					</li>
					<li class="list-group-item board-body">
						<div class="row">
							<div class="col-md-3 col-xs-3">
								<span>아맞네</span>
							</div>
							<div class="col-md-3 col-xs-3">
								<span>2Level</span>
							</div>
							<div class="col-md-3 col-xs-3">
								<span>173cm</span>
							</div>
							<div class="col-md-3 col-xs-3">
								<span>PG</span>
							</div>
						</div>
					</li>
					<li class="list-group-item board-body">
						<div class="row">
							<div class="col-md-3 col-xs-3">
								<span>아맞네동생</span>
							</div>
							<div class="col-md-3 col-xs-3">
								<span>3Level</span>
							</div>
							<div class="col-md-3 col-xs-3">
								<span>173cm</span>
							</div>
							<div class="col-md-3 col-xs-3">
								<span>SG</span>
							</div>
						</div>
					</li>
					<li class="list-group-item board-body">
						<div class="row">
							<div class="col-md-3 col-xs-3">
								<span>아맞네형</span>
							</div>
							<div class="col-md-3 col-xs-3">
								<span>4Level</span>
							</div>
							<div class="col-md-3 col-xs-3">
								<span>173cm</span>
							</div>
							<div class="col-md-3 col-xs-3">
								<span>C</span>
							</div>
						</div>
					</li>

				</ul>
			</div>
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<button class="btn btn-default btn-link btn-block">예정 대전 목록
				</button>

			</div>
			<div class="col-md-4"></div>

			<div class="col-md-2"></div>


		</div>
	</div>
<br style="clear:both;" />
<c:import url="../base/Footer.jsp"></c:import>
</body>
</html>