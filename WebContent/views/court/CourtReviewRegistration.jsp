<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
.left-btn {
	text-align: left;
}

.right-btn {
	text-align: right;
}

.sel {
	padding-top: 30px;
}

.img {
	padding-bottom: 30px;
}

.btn-bot {
	padding-bottom: 30px;
}
.court-name {
	text-align: center;
}
.title-text {
	font-weight: bold;
}
.review {
	padding: 50px;
}

</style>
<title>코트 > 코트 정보 > 코트 리뷰 등록</title>
<!-- 부트스트랩/제이쿼리 -->
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="<%=cp%>/css/board.css" />

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/default.css">

</head>
<body>
	<!-- 헤더 -->
	<c:import url="../base/Header.jsp"></c:import>

	<!-- 서브메뉴 -->
	<!-- 서브메뉴는 기능별(농구하기/코트검색/크루/...)로 복사해서 만들어두고 import 할 것 -->
	<c:import url="../base/CourtSubmenu.jsp"></c:import>

	<!-- 메인 -->
	<div class="main container-fluid">
		<div class="section-title container">
			<h5>코트 > 코트 정보 > 코트 리뷰 등록</h5>
			<hr />
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row">
							<p class="title-text">코트리뷰</p>
						</div>
						<div class="panel panel-default">
							<form class="form-horizontal">
								<div class="row panel-body">
									<div class="col-sm-2"></div>
									<div class="col-sm-8 panel panel-default">
										<div class="row court-name panel-body">									
											<p class="title-text">홍대농구장</p>																													
										</div>
									</div>
									<div class="col-sm-2"></div>
								</div>
								<div class="row">	
									<div class="col-sm-1"></div>														
								<div class=" col-sm-10 panel panel-default">									
										<div class="row review">
											<div class="col-sm-3 col-xs-3">
												<label for="inputContent" class="control-label"> 
													내용
												</label>
											</div>
											<div class="col-sm-8 col-xs-8"><textarea class="form-control" rows="10"></textarea></div>
											<div class="col-sm-1 col-xs-1">
											</div>
										</div>
									
										<div class="row review form-group">
											<div class="col-sm-3 col-xs-3">
												<label for="inputContent" class="control-label"> 
													만족도 평가
												</label>
											</div>

<div id="half-stars-example">
    <div class="rating-group">
        <input class="rating__input rating__input--none" checked name="rating2" id="rating2-0" value="0" type="radio">
        <label aria-label="0 stars" class="rating__label" for="rating2-0">&nbsp;</label>
        <label aria-label="0.5 stars" class="rating__label rating__label--half" for="rating2-05"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
        <input class="rating__input" name="rating2_1" id="rating2-05_1" value="0.5" type="radio">
        <label aria-label="1 star" class="rating__label" for="rating2-10_1"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
        <input class="rating__input" name="rating2_1" id="rating2-10_1" value="1" type="radio">
        <label aria-label="1.5 stars" class="rating__label rating__label--half" for="rating2-15_1"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
        <input class="rating__input" name="rating2_1" id="rating2-15_1" value="1.5" type="radio">
        <label aria-label="2 stars" class="rating__label" for="rating2-20_1"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
        <input class="rating__input" name="rating2_1" id="rating2-20_1" value="2" type="radio">
        <label aria-label="2.5 stars" class="rating__label rating__label--half" for="rating2-25_1"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
        <input class="rating__input" name="rating2_1" id="rating2-25_1" value="2.5" type="radio" checked>
        <label aria-label="3 stars" class="rating__label" for="rating2-30_1"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
        <input class="rating__input" name="rating2_1" id="rating2-30_1" value="3" type="radio">
        <label aria-label="3.5 stars" class="rating__label rating__label--half" for="rating2-35_1"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
        <input class="rating__input" name="rating2_1" id="rating2-35_1" value="3.5" type="radio">
        <label aria-label="4 stars" class="rating__label" for="rating2-40_1"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
        <input class="rating__input" name="rating2_1" id="rating2-40_1" value="4" type="radio">
        <label aria-label="4.5 stars" class="rating__label rating__label--half" for="rating2-45_1"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
        <input class="rating__input" name="rating2_1" id="rating2-45_1" value="4.5" type="radio">
        <label aria-label="5 stars" class="rating__label" for="rating2-50_1"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
        <input class="rating__input" name="rating2_1" id="rating2-50_1" value="5" type="radio">
    </div>
</div>



										</div>
									
										<div class="row review form-group">
											<div class="col-sm-3 col-xs-3">
												<label for="inputContent" class="control-label"> 
													시설 평가
												</label>
											</div>
<div id="half-stars-example">
    <div class="rating-group">
        <input class="rating__input rating__input--none" checked name="rating2" id="rating2-0" value="0" type="radio">
        <label aria-label="0 stars" class="rating__label" for="rating2-0">&nbsp;</label>
        <label aria-label="0.5 stars" class="rating__label rating__label--half" for="rating2-05"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
        <input class="rating__input" name="rating2" id="rating2-05" value="0.5" type="radio">
        <label aria-label="1 star" class="rating__label" for="rating2-10"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
        <input class="rating__input" name="rating2" id="rating2-10" value="1" type="radio">
        <label aria-label="1.5 stars" class="rating__label rating__label--half" for="rating2-15"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
        <input class="rating__input" name="rating2" id="rating2-15" value="1.5" type="radio">
        <label aria-label="2 stars" class="rating__label" for="rating2-20"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
        <input class="rating__input" name="rating2" id="rating2-20" value="2" type="radio">
        <label aria-label="2.5 stars" class="rating__label rating__label--half" for="rating2-25"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
        <input class="rating__input" name="rating2" id="rating2-25" value="2.5" type="radio" checked>
        <label aria-label="3 stars" class="rating__label" for="rating2-30"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
        <input class="rating__input" name="rating2" id="rating2-30" value="3" type="radio">
        <label aria-label="3.5 stars" class="rating__label rating__label--half" for="rating2-35"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
        <input class="rating__input" name="rating2" id="rating2-35" value="3.5" type="radio">
        <label aria-label="4 stars" class="rating__label" for="rating2-40"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
        <input class="rating__input" name="rating2" id="rating2-40" value="4" type="radio">
        <label aria-label="4.5 stars" class="rating__label rating__label--half" for="rating2-45"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
        <input class="rating__input" name="rating2" id="rating2-45" value="4.5" type="radio">
        <label aria-label="5 stars" class="rating__label" for="rating2-50"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
        <input class="rating__input" name="rating2" id="rating2-50" value="5" type="radio">
    </div>
</div>

										</div>
									
									
									<div class="row review">
										<div class="col-md-3 col-xs-3">
											<label for="inputPassword" class="control-label"> 
												시설정보 
											</label>
										</div>
										<div class="col-sm-3 col-xs-3">
											<span> 화장실 </span>
											<label class="radio-inline"> <input type="radio"
												name="inlineRadio1" id="inlineRadio1" value="option1">
												유
											</label> <label class="radio-inline"> <input type="radio"
												name="inlineRadio1" id="inlineRadio2" value="option2">
												무
											</label>
										</div>
	
										<div class="col-sm-3 col-xs-3">
											<span> 주차장 </span>
											<label class="radio-inline"> <input type="radio"
												name="inlineRadio2" id="inlineRadio1" value="option1">
												유
											</label> <label class="radio-inline"> <input type="radio"
												name="inlineRadio2" id="inlineRadio2" value="option2">
												무
											</label>
										</div>
	
										<div class="col-sm-3 col-xs-3 cen">
											<span> 샤워실 </span>
											<label class="radio-inline"> <input type="radio"
												name="inlineRadio3" id="inlineRadio1" value="option1">
												유
											</label> <label class="radio-inline"> <input type="radio"
												name="inlineRadio3" id="inlineRadio2" value="option2">
												무
											</label>
										</div>
										
										<div class="col-sm-1"></div>
										
									</div>
									<div class="row review">
										<div class="col-sm-2 col-xs-4">
											<label for="inputPassword" class="control-label">
												수용인원수 </label>
										</div>
										<div class="col-sm-4 col-xs-4">
											<select class="form-control">
												<option>8~10</option>
												<option>5~7</option>
												<option>1~4</option>
											</select>
										</div>
										<div class="col-sm-6 col-xs-4"></div>
									</div>
									<div class="row">
										<div class="col-md-3"></div>
										<div class="col-md-6  btn-bot">
											<button type="submit"
												class="btn btn-default btn-submit btn-block">등록하기</button>
										</div>
									</div>
										<div class="col-md-3"></div>
									</div>
									<div class="col-md-1"></div>
								</div>

							</form>
						</div>
					</div>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>
	</div>
	<c:import url="../base/Footer.jsp"></c:import>
</body>
</html>
