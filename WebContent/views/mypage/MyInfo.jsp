<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>


<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">


<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<title>내 정보관리</title>

<!-- 부트스트랩/제이쿼리 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<script src="http://code.jquery.com/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>




<style type="text/css">
.form-group div 
{
	height: 50px;
}
.btn
{
	background-color: orange;
	color: white;
} 
.list-top
{
	padding-top: 20px;
}
.list-bottom
{
	padding-bottom: 20px;
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
         <h5>마이페이지 > 내 정보관리 </h5>
         <hr />
      </div>
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row">
							<p class="subtitle-text">마이페이지 > 내정보관리</p>
							<hr>
						</div>
						<div class="row">
							<div class="col-md-12 panel panel-default">
								<div class="row">
									<div class="col-md-12"></div>
								</div>
								<form class="form-horizontal">
									<div class="row form-group list-top">
										<div class="col-md-3 col-sm-2">
											<label class="control-label">이름</label>
										</div>
										<div class="col-md-9 col-sm-10">
											<p class="form-control-static">고길동</p>
										</div>
									</div>
									<div class="row form-group">
										<div class="col-md-3 col-sm-2">
											<label class="control-label">성별</label>
										</div>
										<div class="col-md-9 col-sm-10">
											<p class="form-control-static">남</p>
										</div>
									</div>
									<div class="row form-group">
										<div class="col-md-3 col-sm-2">
											<label class="control-label">이메일</label>
										</div>
										<div class="col-md-9 col-sm-10">
											<p class="form-control-static">email@example.com</p>
										</div>
									</div>
									<div class="row form-group">
										<div class="col-md-3 col-sm-2">
											<label class="control-label">생년월일</label>
										</div>
										<div class="col-md-9 col-sm-10">
											<p class="form-control-static">1998.01.02</p>
										</div>
									</div>
									<div class="row  form-group">
										<div class="col-md-3 col-sm-2">
											<label class="control-label">내 평가점수</label>
										</div>
										<div class="col-md-9 col-sm-10">
											<p class="form-control-static">중</p>
										</div>
									</div>
									
									<div class="row form-group">
										<div class="col-sm-3 col-xs-2">
											<label for="inputPassword" class="control-label">거점지역</label>
										</div>
										<div class="col-sm-3 col-xs-4">
											<select class="form-control">
												<option>서울</option>
												<option>경기</option>
												<option>강원</option>
												<option>부산</option>
												<option>대구</option>
											</select>
										</div>
										<div class="col-sm-3 col-xs-4">
											<select class="form-control">
												<option>마포구</option>
												<option>동작구</option>
												<option>서대문구</option>
												<option>은평구</option>
												<option>강남구</option>
											</select>
										</div>
										<div class="col-md-2 col-xs-2"></div>
									</div>
									<div class="row form-group">
										<div class="col-md-3 col-sm-2">
											<label for="inputPassword" class="control-label">전화번호*</label>
										</div>
										<div class="col-md-9 col-sm-10">
											<div class="row form-group">
												<div class="col-sm-2 col-xs-3">
													<select class="form-control">
														<option>010</option>
														<option>011</option>
														<option>070</option>
														<option>012</option>
													</select>
												</div>
												<div class="col-sm-2 col-xs-3">
													<input type="text" class="form-control" id="tel2">
												</div>
												<div class="col-sm-2 col-xs-3">
													<input type="text" class="form-control" id="tel3">
												</div>
												<div class="col-sm-3 col-xs-3">
													<button class="btn btn-default submit-btn" type="submit">전화번호
														인증</button>
												</div>
												<div class="col-sm-3"></div>
											</div>
										</div>
									</div>
									<div class="row form-group">
										<div class="col-sm-3">
										</div>
										<div class="col-md-9 col-sm-12">
											<div class="col-sm-6 col-xs-6">
												<input type="text" class="form-control" id="telcheck">
											</div>
											<div class="col-sm-2 col-xs-2">
												<button class="btn btn-default submit-btn" type="submit">
															인증</button>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>남은 시간 03:00</span>
											</div>
											
										</div>
									</div>
									<div class="row">
										<div class="col-md-3"></div>
										<div class="col-md-9"></div>
									</div>
									<div class="row form-group">
										<div class="col-sm-3 col-xs-3">
											<label for="inputPassword" class="control-label">선호
												포지션</label>
										</div>
										<div class="col-sm-6 col-xs-9">
											<select class="form-control">
												<option>센터</option>
												<option>가드</option>
												<option>포워드</option>
											</select>
										</div>
									</div>
									<div class="row form-group">
										<div class="col-sm-3 col-xs-3">
											<label for="inputPassword" class="control-label">SMS
												알림</label>
										</div>
										<div class="col-sm-3 col-xs-4">
											<input type="radio" name="jb-radio" id="jb-radio-1"
												class="custom-control-input"> <label
												class="custom-control-label" for="jb-radio-1">수신동의</label>
										</div>
										<div class="col-sm-3 col-xs-4">
											<input type="radio" name="jb-radio" id="jb-radio-1"
												class="custom-control-input"> <label
												class="custom-control-label" for="jb-radio-1">수신거부</label>
										</div>
										<div class="col-sm-3"></div>
									</div>
									<div class="row">
										<div class="col-sm-3 col-xs-3">
											<label for="inputPassword" class="control-label">SNS
												연동</label>
										</div>
										<div class="col-sm-6 col-xs-9">
											<p><button class="btn btn-default" type="submit">연동하기</button></p>
										</div>
									</div>
									<div class="row">
										<div class="col-md-3"></div>
										<div class="col-md-9"></div>
									</div>
									<div class="row">
										<div class="col-md-12"></div>
									</div>
									<div class="row">
										<div class="col-md-3"></div>
										<div class="col-md-6" style="text-align: center;">											
											<button type="submit" class="btn btn-default submit-btn btn-block">등록하기</button>
										</div>
										<div class="col-md-3"></div>
									</div>
									<div class="row list-top">
										<div class="col-md-12"></div>
									</div>
								</form>
							</div>
							<div class="row list-bottom">
								<div class="col-md-12" style="text-align: center;">
									<button class="btn btn-default" type="submit">회원탈퇴</button>
								</div>
							</div>
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