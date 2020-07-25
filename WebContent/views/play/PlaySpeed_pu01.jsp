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
<title>빠른농구</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<script type="text/javascript" src="https://code.jquery.com/jquery.min.js"></script>
<style type="text/css">
.form-head {
	font-weight: bold;
}

.content
{
	margin-top: 100px;
}
</style>
</head>

	<!-- playBasketball_speed 팝업창  -->
			<div class="col-md-6 content">
				<div class="row">
					<!-- 제목(헤더) 영역 -->
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-3">
								<h4 class="form-head">제목</h4>
							</div>
							<div class="col-md-6 subject-parti">
								<h4>게임 한판 해요</h4>
							</div>
							<div class="col-md-3">
								<h4>참여인원 n/n</h4>
							</div>
						</div>
						<hr />
					</div>

				</div>
				<h4 class="form-head">모임 정보</h4>
				<div class="row panel panel-default">
					<div class="col-md-12 panel-body">
						<div class="row">
							<div class="col-md-12">
								<div class="col-md-2"></div>
								<div class="col-md-8">
									<div class="col-md-4">
										<h4 class="form-head">장소</h4>
									</div>
									<div class="col-md-8">
										<h5>서울시 마포구 쌍용코트 <button class="btn btn-xs btn-link">위치 보기</button></h5>
										
									</div>

								</div>
								<div class="col-md-2"></div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="col-md-2"></div>
								<div class="col-md-8">
									<div class="col-md-4">
										<h4 class="form-head">주장</h4>
									</div>
									<div class="col-md-8">
										<h5><a>아맞네</a></h5>
									</div>

								</div>
								<div class="col-md-2"></div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="col-md-2"></div>
								<div class="col-md-8">
									<div class="col-md-4">
										<h4 class="form-head">모임 종류</h4>
									</div>
									<div class="col-md-8">
										<h5>일반</h5>
									</div>

								</div>
								<div class="col-md-2"></div>							
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="col-md-2"></div>
								<div class="col-md-8">
									<div class="col-md-4">
										<h4 class="form-head">모임 시간</h4>
									</div>
									<div class="col-md-8">
										<h5>
											<span class="game-startDate">2020.07.06</span>
											
											<span class="game-startTime">15:00</span>
											~
											<span class="game-endDate">2020.07.06</span>
											
											<span class="game-endTime">17:00</span>
										</h5>
									</div>

								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="col-md-2"></div>
								<div class="col-md-8">
									<div class="col-md-4">
										<h4 class="form-head">모집 종료 시간</h4>
									</div>
									<div class="col-md-8">
										<h5>
										~
										<span class="end-date"> 2020.07.06</span>
										<span class="end-time"> 12:00</span>
										</h5>
									</div>

								</div>
								<div class="col-md-2"></div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="col-md-2"></div>
								<div class="col-md-8">
									<div class="col-md-4">
										<h4 class="form-head">참여자 목록</h4>
									</div>
									<div class="col-md-8">
									<div class="panel panel-default">
										<div class="panel-body">
										<h5><a>아맞네1</a></h5>
										<h5><a>아맞네2</a></h5>
										<h5><a>아맞네3</a></h5>
										<h5><a>아맞네4</a></h5>

										</div>
									</div>
									</div>
								</div>
								<div class="col-md-2"></div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="col-md-2"></div>
								<div class="col-md-8">
									<div class="col-md-4">
										<h4 class="form-head">공지 사항</h4>
									</div>
									<div class="col-md-8">
									<div class="panel panel-default">
										<div class="panel-body">
										<h5>모임 후 뒷풀이 있습니다. ^^</h5>
										</div>
									</div>
									</div>
								</div>
								<div class="col-md-2"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-2"></div>
							<div class="col-md-8">
								<div class="col-md-6">
								<button type="button" class="btn btn-default btn-block btn-submit">참가</button>
								</div>
								<div class="col-md-6">
								<button type="button" class="btn btn-default btn-block">불참</button>
								</div>
							</div>
							<div class="col-md-2"></div>
						</div>
					</div>
				</div>
			</div>

</html>