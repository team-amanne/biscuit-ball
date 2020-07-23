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
.info-header {
	font-size: 13pt;
	color: orange;
	font-weight: bold;
}

.title {
	font-size: 14pt;
}

.battle-result {
	font-weight: bold;
}

.btn-result
{
	margin-bottom: 10px;
}

.form-control
{
	width: 50px;
}

</style>
</head>
<body>

		<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/BattleSubmenu.jsp"></c:import>


	<div class="container-fuild main">
		<div class="section-title container">
			크루 > 대전 > 플레이로그 > 플레이로그 입력
			<hr />
		</div>
		<div class="col-md-2"></div>
		<div class="col-md-8 col-xs-8">

			<p class="subtitle-text">대전 플레이로그 입력 - 심판</p>

			<hr />
			<div class="col-md-12 col-xs-12">
				<ul class="list-group">
					<li class="list-group-item board-body">
						<div class="row">
							<div class="col-sm-3 col-xs-3">
								<span class="info-header">대전번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</span>
								<span>123</span>
							</div>
							<div class="col-sm-3 col-xs-3">
								<span class="info-header">상대
									크루&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</span> <span>아맞네</span>
							</div>
							<div class="col-sm-3 col-xs-3">
								<span class="info-header">장소&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</span>
								<span>서울 마포구 연남코트</span>
							</div>
							<div class="col-sm-3 col-xs-3">
								<span class="info-header">경기
									방식&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</span> <span>3 on 3</span>
							</div>
						</div>
					</li>
				</ul>
			</div>

			<div class="col-md-12 col-xs-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="col-md-8 col-xs-8">
							<p class="title">쿼터별 점수 입력</p>
						</div>

						<div class="col-md-2 col-xs-2">

							<label for="cancel" class="checkbox-inline"> 합의 취소
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox"
								id="cancel" class="checkbox-inline">
							</label>

						</div>

						<div class="col-md-2 col-xs-2">
							<button class="btn btn-default btn-link btn-block btn-sm">연장전
								쿼터 추가</button>
						</div>



						<div class="col-md-12 col-xs-12">
							<ul class="list-group">

								<li class="list-group-item board-body board-header">
									<div class="row">
										<div class="col-sm-4 col-xs-4">
											<span>쿼터</span>
										</div>
										<div class="col-sm-4 col-xs-4">
											<span class="">아맞네</span>
										</div>
										<div class="col-sm-4 col-xs-4">
											<span class="">규쿤네</span>
										</div>
									</div>
								</li>

								<li class="list-group-item board-body">
									<div class="row">
										<div class="col-sm-4 col-xs-4">
											<span class="">1</span><span>쿼터</span>
										</div>
										<div class="col-sm-4 col-xs-4" align="center">
											<input type="text" class="form-control">
										</div>
										<div class="col-sm-4 col-xs-4" align="center">
											<input type="text" class="form-control">
										</div>
									</div>
								</li>

								<li class="list-group-item board-body">
									<div class="row">
										<div class="col-sm-4 col-xs-4">
											<span class="">2</span><span>쿼터</span>
										</div>
										<div class="col-sm-4 col-xs-4" align="center">
											<input type="text" class="form-control">
										</div>
										<div class="col-sm-4 col-xs-4" align="center">
											<input type="text" class="form-control">
										</div>
									</div>
								</li>

								<li class="list-group-item board-body">
									<div class="row">
										<div class="col-sm-4 col-xs-4">
											<span class="">3</span><span>쿼터</span>
										</div>
										<div class="col-sm-4 col-xs-4" align="center">
											<input type="text" class="form-control">
										</div>
										<div class="col-sm-4 col-xs-4" align="center">
											<input type="text" class="form-control">
										</div>
									</div>
								</li>

								<li class="list-group-item board-body">
									<div class="row">
										<div class="col-sm-4 col-xs-4">
											<span class="">4</span><span>쿼터</span>
										</div>
										<div class="col-sm-4 col-xs-4" align="center">
											<input type="text" class="form-control">
										</div>
										<div class="col-sm-4 col-xs-4" align="center">
											<input type="text" class="form-control">
										</div>
									</div>
								</li>
							</ul>
						</div>

							<div class="col-md-10 col-xs-10"></div>
							<div class="col-md-2 col-xs-2 btn-result">
								<button class="btn btn-default btn-block btn-link btn-sm">결과
									산출</button>
							</div>

						<div class="col-md-12 col-xs-12 battle-result">
							<ul class="list-group">


								<li class="list-group-item board-body">
									<div class="row">
										<div class="col-sm-4 col-xs-4">
											<span>합계</span>
										</div>
										<div class="col-sm-4 col-xs-4" align="center">
											<input type="text" class="form-control" disabled="disabled">
										</div>
										<div class="col-sm-4 col-xs-4" align="center">
											<input type="text" class="form-control" disabled="disabled">
										</div>
									</div>
								</li>

								<li class="list-group-item board-body">
									<div class="row">
										<div class="col-sm-4 col-xs-4">
											<span>결과</span>
										</div>
										<div class="col-sm-4 col-xs-4">
											<span class="">패배</span>
										</div>
										<div class="col-sm-4 col-xs-4">
											<span class="text-orange">승리</span>
										</div>
									</div>
								</li>
							</ul>
						</div>

					</div>




				</div>
			</div>
			<div class="col-md-2"></div>

		</div>

		<div class="col-md-3 col-xs-3"></div>
		<div class="col-md-3 col-xs-3">
			<button class="btn btn-default btn-block btn-submit">입력 완료</button>
		</div>
		<div class="col-md-3 col-xs-3">
			<button class="btn btn-default btn-block btn-link">플레이로그 목록</button>
		</div>
		<div class="col-md-3 col-xs-3"></div>
	</div>
	


	<br style="clear: both;" />

	<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>