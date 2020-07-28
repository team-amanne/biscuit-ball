<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>

<title>BiscuitBail > 코트 리뷰 등록</title>
<!-- 부트스트랩/제이쿼리 -->
<!-- 부가적인 테마 -->

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<script type="text/javascript" src="https://code.jquery.com/jquery.min.js"></script>
<link rel="stylesheet" href="<%=cp%>/css/board.css" />
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
</head>
<body>

<!-- 헤더 -->
<c:import url="../base/Header.jsp?active=court"></c:import>

<!-- 서브메뉴 -->
<!-- 서브메뉴는 기능별(농구하기/코트검색/크루/...)로 복사해서 만들어두고 import 할 것 -->
<c:import url="../base/CourtSubmenu.jsp"></c:import>

<!-- 메인 -->
<div class="main container-fluid">
	<div class="section-title container">
		<h5></h5>
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
						<form class="form-horizontal" method="post" name="courtReviewRegisterForm" id="courtReviewRegisterForm">
							<div class="row panel-body">
								<div class="col-sm-2"></div>
								<div class="col-sm-8 panel panel-default">
									<div class="row court-name panel-body">
										<input type="hidden" name="courtCode" value="${court.courtCode }" />
										<p class="title-text">${court.courtName }</p>
									</div>
								</div>
								<div class="col-sm-2"></div>
							</div>
							<div class="row">
								<div class="col-sm-1"></div>
								<div class=" col-sm-10 panel panel-default">
									<div class="row review">
										<div class="col-sm-3 col-xs-3">
											<label for="courtReviewContent" class="control-label"> 내용 * </label>
										</div>
										<div class="col-sm-8 col-xs-8">
											<textarea class="form-control" rows="10" id="courtReviewContent" name="courtReviewContent"></textarea>
										</div>
										<div class="col-sm-1 col-xs-1"></div>
									</div>

									<div class="row review form-group">
										<div class="col-sm-3 col-xs-3">
											<label for="courtReviewSatisfaction-rating" class="control-label"> 만족도 평가 * </label>
										</div>

										<div id="courtReviewSatisfaction-rating">
											<div class="rating-group">
												<label aria-label="0 stars" class="rating__label" for="courtReviewSatisfaction-0">&nbsp;</label> 
												<input class="rating__input rating__input--none" name="courtReviewSatisfaction" id="courtReviewSatisfaction-0" value="0" type="radio" checked> 
												
												<label aria-label="0.5 stars" class="rating__label rating__label--half" for="courtReviewSatisfaction-05">
													<i class="rating__icon rating__icon--star fa fa-star-half"></i>
												</label> 
												<input class="rating__input" name="courtReviewSatisfaction" id="courtReviewSatisfaction-05_1" value="0.5" type="radio"> 
												
												<label aria-label="1 star" class="rating__label" for="courtReviewSatisfaction-10_1">
													<i class="rating__icon rating__icon--star fa fa-star"></i>
												</label> 
												<input class="rating__input" name="courtReviewSatisfaction" id="courtReviewSatisfaction-10_1" value="1" type="radio"> 
												
												<label aria-label="1.5 stars" class="rating__label rating__label--half" for="courtReviewSatisfaction-15_1">
													<i class="rating__icon rating__icon--star fa fa-star-half"></i>
												</label> 
												<input class="rating__input" name="courtReviewSatisfaction" id="courtReviewSatisfaction-15_1" value="1.5" type="radio"> 
												
												<label aria-label="2 stars" class="rating__label" for="courtReviewSatisfaction-20_1">
													<i class="rating__icon rating__icon--star fa fa-star"></i>
												</label> 
												<input class="rating__input" name="courtReviewSatisfaction" id="courtReviewSatisfaction-20_1" value="2" type="radio">
												
												<label aria-label="2.5 stars" class="rating__label rating__label--half" for="courtReviewSatisfaction-25_1">
													<i class="rating__icon rating__icon--star fa fa-star-half"></i>
												</label> 
												<input class="rating__input" name="courtReviewSatisfaction" id="courtReviewSatisfaction-25_1" value="2.5" type="radio"> 
												
												<label aria-label="3 stars" class="rating__label" for="courtReviewSatisfaction-30_1">
													<i class="rating__icon rating__icon--star fa fa-star"></i>
												</label> 
												<input class="rating__input" name="courtReviewSatisfaction" id="courtReviewSatisfaction-30_1" value="3" type="radio"> 
												
												<label aria-label="3.5 stars" class="rating__label rating__label--half" for="courtReviewSatisfaction-35_1">
													<i class="rating__icon rating__icon--star fa fa-star-half"></i>
												</label> 
												<input class="rating__input" name="courtReviewSatisfaction" id="courtReviewSatisfaction-35_1" value="3.5" type="radio"> 
												
												<label aria-label="4 stars" class="rating__label" for="courtReviewSatisfaction-40_1">
													<i class="rating__icon rating__icon--star fa fa-star"></i>
												</label> 
												<input class="rating__input" name="courtReviewSatisfaction" id="courtReviewSatisfaction-40_1" value="4" type="radio"> 
												
												<label aria-label="4.5 stars" class="rating__label rating__label--half" for="courtReviewSatisfaction-45_1">
													<i class="rating__icon rating__icon--star fa fa-star-half"></i>
												</label> 
												<input class="rating__input" name="courtReviewSatisfaction" id="courtReviewSatisfaction-45_1" value="4.5" type="radio"> 
												
												<label aria-label="5 stars" class="rating__label" for="courtReviewSatisfaction-50_1">
													<i class="rating__icon rating__icon--star fa fa-star"></i>
												</label> 
												<input class="rating__input" name="courtReviewSatisfaction" id="courtReviewSatisfaction-50_1" value="5" type="radio">
											</div>
										</div>



									</div>

									<div class="row review form-group">
										<div class="col-sm-3 col-xs-3">
											<label for="courtReviewManageScore-rating" class="control-label"> 시설 평가 * </label>
										</div>
										<div id="courtReviewManageScore-rating">
											<div class="rating-group">
												<label aria-label="0 stars" class="rating__label" for="courtReviewManageScore-0">&nbsp;</label> 
												<input class="rating__input rating__input--none" name="courtReviewManageScore" id="courtReviewManageScore-0" value="0" type="radio" checked>
												
												<label aria-label="0.5 stars" class="rating__label rating__label--half" for="courtReviewManageScore-05">
													<i class="rating__icon rating__icon--star fa fa-star-half"></i>
												</label> 
												<input class="rating__input" name="courtReviewManageScore" id="courtReviewManageScore-05" value="0.5" type="radio"> 
												
												<label aria-label="1 star" class="rating__label" for="courtReviewManageScore-10">
													<i class="rating__icon rating__icon--star fa fa-star"></i>
												</label> 
												<input class="rating__input" name="courtReviewManageScore" id="courtReviewManageScore-10" value="1" type="radio"> 
												
												<label aria-label="1.5 stars" class="rating__label rating__label--half" for="courtReviewManageScore-15">
													<i class="rating__icon rating__icon--star fa fa-star-half"></i>
												</label> 
												<input class="rating__input" name="courtReviewManageScore" id="courtReviewManageScore-15" value="1.5" type="radio"> 
												
												<label aria-label="2 stars" class="rating__label" for="courtReviewManageScore-20">
													<i class="rating__icon rating__icon--star fa fa-star"></i>
												</label> 
												<input class="rating__input" name="courtReviewManageScore" id="courtReviewManageScore-20" value="2" type="radio"> 
												
												<label aria-label="2.5 stars" class="rating__label rating__label--half" for="courtReviewManageScore-25">
													<i class="rating__icon rating__icon--star fa fa-star-half"></i>
												</label> 
												<input class="rating__input" name="courtReviewManageScore" id="courtReviewManageScore-25" value="2.5" type="radio"> 
												
												<label aria-label="3 stars" class="rating__label" for="courtReviewManageScore-30">
													<i class="rating__icon rating__icon--star fa fa-star"></i>
												</label> 
												<input class="rating__input" name="courtReviewManageScore" id="courtReviewManageScore-30" value="3" type="radio"> 
												
												<label aria-label="3.5 stars" class="rating__label rating__label--half" for="courtReviewManageScore-35">
													<i class="rating__icon rating__icon--star fa fa-star-half"></i>
												</label> 
												<input class="rating__input" name="courtReviewManageScore" id="courtReviewManageScore-35" value="3.5" type="radio"> 
												
												<label aria-label="4 stars" class="rating__label" for="courtReviewManageScore-40">
													<i class="rating__icon rating__icon--star fa fa-star"></i>
												</label> 
												<input class="rating__input" name="courtReviewManageScore" id="courtReviewManageScore-40" value="4" type="radio"> 
												
												<label aria-label="4.5 stars" class="rating__label rating__label--half" for="courtReviewManageScore-45">
													<i class="rating__icon rating__icon--star fa fa-star-half"></i>
												</label> 
												<input class="rating__input" name="courtReviewManageScore" id="courtReviewManageScore-45" value="4.5" type="radio"> 
												
												<label aria-label="5 stars" class="rating__label" for="courtReviewManageScore-50">
													<i class="rating__icon rating__icon--star fa fa-star"></i>
												</label> 
												<input class="rating__input" name="courtReviewManageScore" id="courtReviewManageScore-50" value="5" type="radio">
											</div>
										</div>

									</div>


									<div class="row review">
										<div class="col-md-3 col-xs-3">
											<label class="control-label"> 시설정보 </label>
										</div>
										<div class="col-sm-3 col-xs-3">
											<span> 화장실 </span> 
											<label class="radio-inline"> 
												<input type="radio" name="toilet" id="inlineRadio1" value="ZU01"> 
												유
											</label> 
											<label class="radio-inline"> 
												<input type="radio" name="toilet" id="inlineRadio2" value="ZU02"> 
												무
											</label>
										</div>

										<div class="col-sm-3 col-xs-3">
											<span> 주차장 </span> 
											<label class="radio-inline"> 
												<input type="radio" name="parkinglot" id="inlineRadio1" value="ZU01"> 
												유
											</label> 
											<label class="radio-inline"> 
												<input type="radio" name="parkinglot" id="inlineRadio2" value="ZU02"> 
												무
											</label>
										</div>

										<div class="col-sm-3 col-xs-3 cen">
											<span> 샤워실 </span> 
											<label class="radio-inline"> 
												<input type="radio" name="shower" id="inlineRadio1" value="ZU01"> 
												유
											</label> 
											<label class="radio-inline"> 
												<input type="radio" name="shower" id="inlineRadio2" value="ZU02"> 
												무
											</label>
										</div>

										<div class="col-sm-1"></div>

									</div>
									<div class="row review">
										<div class="col-sm-3 col-xs-3">
											<label for="courtCapacity" class="control-label"> 적정수용인원수 * </label>
										</div>
										<div class="col-sm-4 col-xs-4">
											<select name="courtCapacityCode" class="form-control" id="courtCapacity">
												<option value="">선택</option>
												<option value="ZH01">1 ~ 4 명</option>
												<option value="ZH02">5 ~ 7 명</option>
												<option value="ZH03">8 명 이상</option>
											</select>
										</div>
										<div class="col-sm-6 col-xs-4"></div>
									</div>
									<div class="row">
										<div class="col-md-3"></div>
										<div class="col-md-6  btn-bot">
											<button type="button" id="btnSubmit" class="btn btn-default btn-submit btn-block">등록하기</button>
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
	
<script type="text/javascript">

	$(function() {
		$("#btnSubmit").click(function() {
			if(!$("#courtReviewContent").val()) {
				alert("리뷰 내용을 입력해주세요.");
				return;
			}
			
			if(!document.courtReviewRegisterForm.courtReviewSatisfaction.value || document.courtReviewRegisterForm.courtReviewSatisfaction.value == "0") {
				alert("만족도 평가를 선택해주세요.");
				return;
			}

			if(!document.courtReviewRegisterForm.courtReviewManageScore.value || document.courtReviewRegisterForm.courtReviewManageScore.value == "0") {
				alert("시설 평가를 선택해주세요.");
				return;
			}
			
			if(!$("#courtCapacity").val()) {
				alert("코트 적정 수용 인원수를 선택해주세요.");
				return;
			}
			
			$("#courtReviewRegisterForm").attr("action", "<%=cp %>/court/${court.courtCode}/review/registerdo");	
			$("#courtReviewRegisterForm").submit();
		});
	});

</script>
</body>
</html>
