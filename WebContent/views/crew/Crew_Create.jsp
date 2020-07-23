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

/* flex 용 */
.flex
{
	display: flex;
}

.crew_name
{
	display: flex;
	margin-bottom: 10px;
}

.crew_value
{
	display: flex;
	width: 300px;
    margin-left: 10%;
}


/* 크루명 중복확인 */
#crew_certify
{
	margin-left: 10px;
	width: 98px;
	height: 34px;
}

/* 라벨명 */
.f_size
{
	font-size: 15pt;
	font-weight: bold;
	margin-top: 5px;
}


/* 거점지역 */
#region
{
    margin-left: 7.5%;
    margin-bottom: 10px;
    width: 150px;
}

/* 시군구  */
#region2
{
	width: 150px;
    margin-left: 10px;
}

/* 연령대 */
#age
{
	width: 150px;
    margin-left: 4.2%;
}

/* 연령대2 */
#age2
{
	width: 150px;
    margin-left: 1.5%;
}

/* 지역추가 */
.select_region
{
	margin-left: auto;
    width: 75%;
}

/* 실력제한 */
#ability
{
	width: 150px;
    margin-left: 7.1%;
}

/* 실력제한2 */
#ability2
{
	width: 150px;
    margin-left: 1.5%;
}

/* 페어플레이점수 */
#fairplay
{
	width: 240px;
    margin-left: 3%;
}

/* 페어플레이점수2 */
#fairplay2
{
	width: 240px;
    margin-left: 1.5%;
}

/* 크루생성, 취소 버튼 포함클래스 */
.last_button
{
    margin-left: auto;
    width: 60%;
    margin-top: 50px;
}

/* 크루생성 버튼 */
#create, #cancel, #add
{
	margin-left: 10px;
	width: 98px;
	height: 34px;
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
			<div class="crew_name">
				<label class="f_size">크루명*</label>
				<div class="crew_value">
					<input type="email" class="form-control" id="crew_name" placeholder="크루명">
				
					<button class="btn btn-warning" id="crew_certify">중복확인</button>
				</div>
			</div>
			
			<div class="flex">
				<label class="f_size">거점지역*</label>
					<select class="form-control" id="region">
						<option selected="selected">지역선택</option>
						<option>서울</option>
						<option>인천</option>
						<option>대전</option>
						<option>부산</option>
						<option>대구</option>
						<option>광주</option>
					</select>
					<select class="form-control" id="region2">
						<option selected="selected">시군구선택</option>
						<option>마포구</option>
						<option>강남구</option>
						<option>서초구</option>
						<option>은평구</option>
					</select>
				<button class="btn btn-warning" id="add">추가</button>
			</div>
			<div class="select_region">
				<p style="font-weight: bold;">[ 서울특별시 마포구 ]</p>
				<p>[ 지역을 추가하세요 ]</p>
				<p>[ 지역을 추가하세요 ]</p>
			</div>
			
			<div class="flex">
				<label class="f_size">연령대 제한*</label>
					<select class="form-control" id="age">
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
					<select class="form-control" id="age2">
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
				<label class="f_size">실력 제한*</label>
					<select class="form-control" id="ability">
						<option selected="selected">최소 실력선택</option>
						<option>하</option>
						<option>중</option>
						<option>상</option>
						<option>실력제한 없음</option>
					</select>
					<span style="font-size: 18pt; margin-left: 10px;"> ~ </span>
					<select class="form-control" id="ability2">
						<option selected="selected">최대 실력선택</option>
						<option>하</option>
						<option>중</option>
						<option>상</option>
						<option>실력제한 없음</option>
					</select>
			</div>
			<div class="flex">
				<label class="f_size">페어플레이점수 제한*</label>				
					<select class="form-control" id="fairplay">
						<option selected="selected">최소 페어플레이 점수 제한</option>
						<option>1점대</option>
						<option>2점대</option>
						<option>3점대</option>
						<option>4점대</option>						
						<option>5점대</option>
						<option>점수제한 없음</option>
					</select>
					<span style="font-size: 18pt; margin-left: 10px;"> ~ </span>
					<select class="form-control" id="fairplay2">
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
			<div class="last_button">
				<button class="btn btn-warning" id="create">크루개설</button>
				<button class="btn btn-warning" id="cancel">취소</button>
			</div>
		</div>
		<div class="col-md-3">
		</div>
	</div>
</div>

<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>