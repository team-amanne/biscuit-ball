<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>

<title>크루프로필 설정</title>
<style type="text/css">

/* 대표업적 클래스 */
.achievements
{
	width: 430px;
	margin-right: 10px;
}

/* 프로필사진 클래스 */
.profile
{
	width: 430px;
	margin-left: 10px;
}

/* 대표업적, 프로필사진 내용 가운데정렬 */
.achievements_content, .profile_content
{
	text-align: center;
}

/* 대표업적, 프로필사진 변경하기 버튼 */
.achievements_modify, #profile_modify
{
	width: 50%;
	margin-top: 10px;
}

/* 소개글 내용 */
.introduce_content
{
	
    resize: none;
}

/* 소개글 수정버튼 */
.introduce_modify
{
	width: 25%;
    margin-left: 10px;
}

/* 거점지역 삭제, 거점지역 추가, 홈코트 수정완료 버튼 */
.region_delete, #region_add, #homecourt_modify
{	
    margin-left: 20px;
}

/* 거점지역 추가 입력 */
.rigion_search
{
	width: 40%;
	display: inline-block;
}

</style>


<!-- 부트스트랩/제이쿼리 -->
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
								<p>메인 > 크루 > 크루 프로필 설정</p>
								<hr>
									<div style="display: flex;">
										<div class="panel-group">
										    <div class="panel panel-default achievements">
										      <div class="panel-heading">대표업적 설정</div>
										      <div class="panel-body achievements_content">현재 대표업적 : <span style="color: blue; font-weight: bold;">놓지마..정신줄!!!</span>
										      	<button class="btn btn-warning btn-submit achievements_modify" id="achievements_modify" type="submit">대표업적 변경</button>
										      </div>
										    </div>
										</div>
										<div class="panel-group">
										    <div class="panel panel-default profile">
										      <div class="panel-heading">프로필사진 설정</div>
										      <div class="panel-body profile_content">현재 프로필사진 : <span style="color: blue; font-weight: bold;">동규의40년전 졸업사진.jpg</span> (423.21kb)
										      	<button class="btn btn-warning btn-submit profile_modify" id="profile_modify" type="submit" onclick="document.all.file.click();">프로필 사진 변경</button>
										      	<input type="file" name="file" id="file" style="display: none;"/>
										      </div>
										    </div>
										</div>
									</div>
									<div class="panel-group">
									    <div class="panel panel-default">
									      <div class="panel-heading introduce">크루 소개글 변경</div>
									      <div class="panel-body introduce_content" >현재 크루소개글
									      	<button class="btn btn-warning btn-submit introduce_modify" id="introduce_modify" type="submit">크루 소개글 설정완료</button>
									      </div>
									      <textarea class="form-control introduce_content" rows="10" cols="10" id="introduce_content">
											똑바로 해 넌 정말 Bad boy
											사랑보단 호기심뿐
											
											그 동안 난 너 땜에 깜빡
											속아서 넘어간거야
											
											넌 재미없어 매너 없어
											넌 Devil Devil 넌 넌
									      </textarea>
									    </div>
									</div>
									<div class="panel-group">
									    <div class="panel panel-default">
									      <div class="panel-heading region">거점지역 설정</div>
									      <div class="panel-body region_content">현재 거점지역 : <span style="color: blue; font-weight: bold;">서울특별시 중구 을지로1가</span>
									      	<button class="btn btn-warning btn-submit region_delete" id="region_delete" type="submit">삭제</button>
									      </div>
									      <div class="panel-body region_content flex">
									      	새로운 거점지역 추가 : <input type="text" class="form-control rigion_search" id="rigion_search" placeholder="서울특별시 마포구 서교동">
									      	<button class="btn btn-warning btn-submit region_add" id="region_add" type="submit">추가</button>
									      </div>
									    </div>
									</div>
								<div>							
									<input type="text" class="form-control content" id="content" value="지도API" readonly="readonly">
								</div>
								<div class="panel-group">
								    <div class="panel panel-default">
								      <div class="panel-heading homecourt">홈코트 설정 (지도 선택)</div>
								      <div class="panel-body homecourt_content">현재 홈코트 : <span style="color: blue; font-weight: bold;">뜨거운 코트를 가르며 농구를 불태우는 승주네 농구장</span>
								      	<button class="btn btn-warning btn-submit homecourt_modify" id="homecourt_modify" type="submit">홈코트 설정 완료</button>
								      </div>
								    </div>
								</div>
							</div>
						</div>
												
						<div class="row"> 
							<div class="col-md-12  right-btn">
								<div>			
									<button class="btn btn-warning btn-submit" type="submit">수정완료</button>
									<button class="btn btn-warning btn-submit" type="submit">돌아가기</button>
								</div>			
							</div>	
						</div>
						</div>
						
						<div class="row">
							<div class="col-md-4"></div>
							<div class="col-md-4">
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