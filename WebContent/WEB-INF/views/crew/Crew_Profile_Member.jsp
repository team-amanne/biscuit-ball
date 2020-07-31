<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>

<title>크루프로필 - 회원.jsp</title>
<style type="text/css">


/* 캘린더 넣을공간 */
#content
{
	resize: none;
	cursor: auto;
	background-color: white;
	margin-bottom: 10px;
	height: 350px;
	text-align: center;
}

/* 지도 넣을공간 */
#content2
{
	resize: none;
	cursor: auto;
	background-color: white;
	margin-bottom: 10px;
	height: 350px;
	text-align: center;
}

/* 크루 소개, 크루 조건 */
#crew_introduce, #crew_condition
{
	width: 100%;
	height: 180px;
	text-align: center;
	margin-bottom: 10px;
}

/* 크루 거점지역, 홈코트 */
#crew_region, #crew_homecourt
{
	width: 100%;
	text-align: center;
	background-color: orange;
	color: white;
}

/* 크루 프로필사진, 크루 업적 */
#profile_photo, #profile_achievement
{
	width: 250px;
	height: 200px;
	text-align: center;
}

/* 크루명, 크루상태, 크루등급, 크루활동지수, 크루성별, 크루페어플레이점수 */
#profile_name, #profile_situation, #profile_grade, #profile_activity, #profile_jender, #profile_fairplay_score
{
	width: 200px;
	height: 50px;
	margin-left: 10px;
	text-align: center;
	margin-bottom: 10px;
}

/* 크루 승률 */
#profile_winningrate
{
	margin-top: 10px;
	margin-bottom: 10px;
	width: 492px;
}

/* 크루선호경기방식, 크루대전거부설정 여부 */
#profile_favorite_mode, #profile_battle_refusal
{
	margin-top: 10px;
	margin-bottom: 10px;
	margin-left: 10px;
	width: 200px;
	text-align: center;
}

.region, .homecourt
{
	width: 560px;
	text-align: center;
	margin-right: 2px;
}



</style>


<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
   href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" href="<%=cp%>/css/board.css" />
</head>
<body>
	<!-- 헤더 -->
	<c:import url="../base/Header.jsp"></c:import>
	<!-- 서브메뉴 -->
	<!-- 서브메뉴는 기능별(농구하기/코트검색/크루/...)로 복사해서 만들어두고 import 할 것 -->
	<c:import url="../base/CrewSubmenu.jsp"></c:import>
	<!-- 메인 -->
	<div class="main container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row top">
							<div class="col-md-12">
								<p>메인 > 크루 > 크루 프로필</p>
								<hr>
								
								<div style="display: flex;">
									<div class="form-control" id="profile_photo">
										<span>프로필 사진</span>
									</div>
									<div class="form-control" id="profile_achievement">
										<span>크루 업적</span>
									</div>
									<div>
										<div class="form-control" id="profile_name">
											<span>크루명</span>
										</div>
										<div class="form-control" id="profile_situation">
											<span>크루상태</span>
										</div>
									</div>
									<div>
										<div class="form-control" id="profile_grade">
											<span>크루 등급</span>
										</div>
										<div class="form-control" id="profile_activity">
											<span>크루 활동지수</span>
										</div>
									</div>
									<div>
										<div class="form-control" id="profile_jender">
											<span>크루 성별</span>
										</div>
										<div class="form-control" id="profile_fairplay_score">
											<span>크루 페어플레이 점수</span>
										</div>
									</div>
								</div>
								<div>
									<div style="display: flex;">
										<div class="form-control" id="profile_winningrate">
											<div class="progress">
											  <div class="progress-bar progress-bar-warning progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
											    승률 (60%)
											  </div>
											</div>
										</div>
										<div class="form-control" id="profile_favorite_mode">
											<span>선호경기방식</span>
										</div>
										<div class="form-control" id="profile_battle_refusal">
											<span>대전 거부 설정여부</span>
										</div>
									</div>
								</div>
								
									<div style="display: flex;">
										<div class="form-control" id="crew_introduce">	
											<p>서울 살고 30대 이상이신분들만 모이는 크루이구요</p>
											<p>가족처럼 지내실분들 모집합니다.</p>
											<p>해당하시는 분만 크루가입 신청해주시면 됩니다 ^^</p>
										</div>				
										<div class="form-control" id="crew_condition">
											<p>서울특별시 거주자</p>
											<p>연령 30대 이상</p>
											<p>가족같은 사람들</p>
										</div>
									</div>
									
									<div style="display: flex;">
										<div class="panel-group">
										    <div class="panel panel-default region">
										      <div class="panel-heading">현재 거점지역</div>
										      <div class="panel-body region_content"><span style="color: blue; font-weight: bold;">인천광역시 미추홀구 제물포역</span>
										      </div>
										    </div>
										</div>
										<div class="panel-group">
										    <div class="panel panel-default homecourt">
										      <div class="panel-heading">현재 홈코트</div>
										      <div class="panel-body homecourt_content"><span style="color: blue; font-weight: bold;">뜨거운 코트를 가르며 농구를 불태우는 승주네 농구장</span>
										      </div>
										    </div>
										</div>
									</div>
							</div>
						</div>
						<ul class="list-group">
							<li class="list-group-item board-body board-header">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>번호</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>닉네임</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>페어플레이점수</span>
									</div>
									<div class="col-md-2 col-xs-1">
										<span>등급</span>
									</div>
									<div class="col-md-1 col-xs-2">
										<span>연령</span>
									</div>	
									<div class="col-md-1 col-xs-1">
										<span>실력</span>
									</div>	
									<div class="col-md-2 col-xs-2">
										<span>가입일자</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>545</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>문승주식회사</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>3</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>크루원</span>
									</div>
									<div class="col-md-1 col-xs-1">
										<span>20</span>
									</div>	
									<div class="col-md-1 col-xs-1">
										<span>3</span>
									</div>	
									<div class="col-md-2 col-xs-2">
										<span>2020.07.15</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>565</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>신성철물점</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>크루원</span>
									</div>
									<div class="col-md-1 col-xs-1">
										<span>30</span>
									</div>	
									<div class="col-md-1 col-xs-1">
										<span>5</span>
									</div>	
									<div class="col-md-2 col-xs-2">
										<span>2020.07.15</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>515</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>주한별나라</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>5</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span style="color: blue; font-weight: bold;">행동대장</span>
									</div>
									<div class="col-md-1 col-xs-1">
										<span>40</span>
									</div>	
									<div class="col-md-1 col-xs-1">
										<span>2</span>
									</div>	
									<div class="col-md-2 col-xs-2">
										<span>2020.07.15</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>525</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>다섯오진녕</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>1</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span style="color: red; font-weight: bold;">크루리더</span>
									</div>
									<div class="col-md-1 col-xs-1">
										<span>30</span>
									</div>	
									<div class="col-md-1 col-xs-1">
										<span>1</span>
									</div>	
									<div class="col-md-2 col-xs-2">
										<span>2020.07.15</span>
									</div>	
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>575</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>길동규카츠</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>5</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>크루원</span>
									</div>
									<div class="col-md-1 col-xs-1">
										<span>60</span>
									</div>	
									<div class="col-md-1 col-xs-1">
										<span>3</span>
									</div>	
									<div class="col-md-2 col-xs-2">
										<span>2020.07.15</span>
									</div>	
								</div>
							</li>
						</ul>
						
						<div class="row"> 
							<div class="col-md-12  right-btn">
								<div>	
									<button class="btn btn-warning btn-submit" type="submit">크루 업적</button>
									<button class="btn btn-warning btn-submit" type="submit">크루 탈퇴</button>
									<button class="btn btn-warning btn-submit" type="submit">가입신청</button>
									<button class="btn btn-warning btn-submit" type="submit">커뮤니티</button>
									<button class="btn btn-warning btn-submit" type="submit">크루 플레이로그 조회</button>
									<button class="btn btn-warning btn-submit" type="submit">크루 신고</button>
								</div>			
							</div>	
						</div>
						
							
						</div>
						
						<div class="row">
							<div class="col-md-4"></div>
							<div class="col-md-4 paging">
								<ul class="pagination">
									<li class="disabled"><a href="#"> <span>«</span>
									</a></li>
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#"> <span>»</span>
									</a></li>
								</ul>
							</div>
							<div class="col-md-4"></div>
						</div>
						<div class="row">
							<div class="col-md-12"></div>
						</div>
					</div>
					<div class="col-md-2"></div>
				</div>
			</div>
		</div>

	<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>