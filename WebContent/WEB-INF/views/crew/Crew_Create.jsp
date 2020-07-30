<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>크루생성.jsp</title>
<style type="text/css">

.crew_value
{
	width: 300px;
	margin-bottom: 10px;
}

.name
{
	width: 200px !important;
	border-color: white !important;
    box-shadow: none !important;
    font-size: 16pt !important;
    font-weight: bold;
    margin-bottom: 10px;
    
}

.region, .region2
{
	width: 150px;
}

.crew_certify, .add
{
	margin-left: 10px;
}

.select_region
{
	margin-left: auto;
    width: 70%;
    
}

/* 연령대 */
.age, .ability
{
	width: 184px !important;

}

/* 연령대2 */
.age2, .ability2, .fairplay2
{
	width: 184px !important;
    margin-left: 1.5%;
}

.fairplay
{
	width: 184px !important;
	margin-left: 0px !important;
}

/* 크루생성, 취소 버튼 포함클래스 */
.bottom_clickbutton
{
    margin-left: 42.5%;
    margin-top: 50px;
}

.cancel
{
	margin-left: 10px;
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
<!-- 서브 -->
<c:import url="../base/CrewSubmenu.jsp"></c:import>

<div class="container-fluid">
      <div class="section-title container">
         <p>메인 홈 > 크루 메인 > 크루 생성 </p>
         <hr />
      </div>
	<div class="row" style="margin-left: auto; width: 90%;">
		<div class="col-md-3">
		</div>
		<div class="col-md-6">
			<div class="crew flex">
				<span class="form-control name">크루명*</span>
				<div class="crew_value">
					<input type="text" class="form-control crew_value" id="crew_name" placeholder="크루명">
				</div>
				<div class="crew_certify">
					<button class="btn btn-warning button_small" id="crew_certify">중복확인</button>
				</div>
			</div>
			<div class="flex">
				<span class="form-control name">거점지역*</span>
					<div class="region">
						<select class="form-control region" id="region">
							<option selected="selected">지역선택</option>
							<option>서울</option>
							<option>인천</option>
							<option>대전</option>
							<option>부산</option>
							<option>대구</option>
							<option>광주</option>
						</select>
					</div>
					
					<div class="region2">
						<select class="form-control region2" id="region2">
							<option selected="selected">시군구선택</option>
							<option>마포구</option>
							<option>강남구</option>
							<option>서초구</option>
							<option>은평구</option>
						</select>
					</div>
					<div class="add">
						<button class="btn btn-warning button_small" id="add">추가</button>
					</div>
			</div>
			<div class="select_region">
				<p style="font-weight: bold;">[ 서울특별시 마포구 ]</p>
				<p>[ 지역을 추가하세요 ]</p>
				<p>[ 지역을 추가하세요 ]</p>
			</div>
			
			<div class="flex">
				<span class="form-control name">연령제한*</span>
					<select class="form-control age" id="age">
						<option selected="selected">최소 연령선택</option>
						<option>10대</option>
						<option>20대</option>
						<option>30대</option>
						<option>40대</option>
						<option>50대</option>
						<option>60대 이상</option>
						<option>연령제한 없음</option>
					</select>
					<span style="font-size: 18pt; margin-left: 10px;"> ~ </span>
					<select class="form-control age2" id="age2">
						<option selected="selected">최대 연령선택</option>
						<option>10대</option>
						<option>20대</option>
						<option>30대</option>
						<option>40대</option>
						<option>50대</option>
						<option>60대 이상</option>
						<option>연령제한 없음</option>
					</select>
			</div>
			<div class="flex">
				<span class="form-control name">실력제한*</span>
					<select class="form-control ability" id="ability">
						<option selected="selected">최소 실력선택</option>
						<option>하</option>
						<option>중</option>
						<option>상</option>
						<option>실력제한 없음</option>
					</select>
					<span style="font-size: 18pt; margin-left: 10px;"> ~ </span>
					<select class="form-control ability2" id="ability2">
						<option selected="selected">최대 실력선택</option>
						<option>하</option>
						<option>중</option>
						<option>상</option>
						<option>실력제한 없음</option>
					</select>
			</div>
			<div class="flex">
				<span class="form-control name">페어플레이제한*</span>				
					<select class="form-control fairplay" id="fairplay">
						<option selected="selected">최소 페어플레이 점수 제한</option>
						<option>1점대</option>
						<option>2점대</option>
						<option>3점대</option>
						<option>4점대</option>						
						<option>5점대</option>
						<option>점수제한 없음</option>
					</select>
					<span style="font-size: 18pt; margin-left: 10px;"> ~ </span>
					<select class="form-control fairplay2" id="fairplay2">
						<option selected="selected">최대 페어플레이 점수 제한</option>
						<option>1점대</option>
						<option>2점대</option>
						<option>3점대</option>
						<option>4점대</option>						
						<option>5점대</option>
						<option>점수제한 없음</option>
					</select>
			</div>
		</div>
		<div class="col-md-3">
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
		</div>
		<div class="col-md-6 flex">
			<div class="bottom_clickbutton">
				<button class="btn btn-warning button_middle" id="create">크루개설</button>
				<button class="btn btn-warning button_middle cancel" id="cancel">취소</button>
			</div>
		</div>
		<div class="col-md-3">
		</div>
	</div>
</div>

<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>