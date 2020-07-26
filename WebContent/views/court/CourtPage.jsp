<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코트 > 코트 정보</title>
<!-- 부트스트랩/제이쿼리 -->
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" href="<%=cp%>/css/board.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<style type="text/css">
.left-btn {
	text-align: left;
}

.right-btn {
	text-align: right;
}

.subtitle-text {
	font-weight: bold;
}

.playview li {
	height: 50px;
}

.cal-right {
	text-align: right;
}

.cal-left {
	text-align: left;
}

.rev-cont {
	height: 100px;
}

.list-header {
	padding-bottom: 10px;
}

.panel-center {
	padding: 50px;
}
#adminCourtDel {
	display:none;
}
#btnReviewDelete:hover {
	cursor: pointer;
	color: orange;
}

.court-img:hover {
	cursor: pointer;
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
		<h5>코트 > 코트 정보</h5>
		<hr />
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<div class="col-md-12">
						<p class="title-text">코트정보</p>
					</div>
					<div class="row">

						<div class="col-md-1"></div>
						<div class="col-md-10">
							<div class="row">
								<div class="col-sm-6 col-xs-6 left-btn">
									<button type="button" class="btn btn-default btn-submit" id="btnMyCourt"">내코트등록</button>
									<c:if test="1==0">
									<a href="#">
										<button type="button" class="btn btn-default btn-submit" id="btnHomeCourt">홈코트등록</button>
									</a>
									</c:if>

									<c:if test='${court.courtStatus == "가등록 코트" }'>
									<button type="button" class="btn btn-default btn" id="btnVoteRegister">
										<span class="fas fa-vote-yea" style="font-size:18px;"></span>
										<span>등록투표</span> 
									</button>
									</c:if>

									<c:if test='${court.courtStatus == "삭제 투표중" }'>									
									<button type="button" class="btn btn-default btn" id="btnVoteDelete">
										<span class="fas fa-vote-yea" style="font-size:18px;"></span>
										<span>삭제투표</span> 
									</button>
									</c:if>
								</div>
								<div class="col-sm-6 col-xs-6 right-btn">
									<c:if test="${sessionScope.adminInfo != null }">
										<button type="button" class="btn btn-default btn-submit" id="btnAdminCourtDel" style="display: inline;">관리자 코트 삭제</button>
									</c:if>
									<c:if test='${court.courtStatus == "정식등록 코트" }'>
										<button type="button" class="btn btn-default btn-submit" id="btnDelReq">코트 삭제 요청</button>
									</c:if>
								</div>
							</div>
							<div class="row">
								<p></p>
							</div>
							<div class="row panel panel-default" style="padding: 20px;">
								<div class="col-sm-5 col-xs-5 panel panel-default"
									style="text-align: center;">
									<div class="row">
										<div class="panel panel-heading">
											<div style="height: 190px; display: table-cell; vertical-align: middle;">
												<img src="<%=cp%>${court.courtImg1}" class="court-img-heading" width="300px;" />

											</div>
										</div>
										<div class="row panel-body" style="height: 80px;">
											<div class="col-sm-4 col-xs-4">
												<img src="<%=cp%>${court.courtImg1}" class="court-img" width="80px;" />
											</div>
											<div class="col-sm-4 col-xs-4">
												<img src="<%=cp%>${court.courtImg2}" class="court-img" width="80px;" />
											</div>
											<div class="col-sm-4 col-xs-4">
												<img src="<%=cp%>${court.courtImg3}" class="court-img" width="80px;" />
											</div>
										</div>											
									</div>
								</div>

								<div class="col-sm-7 col-xs-7 panel panel-default">
									<div class="row">
										<p></p>
										<div class="col-sm-1 col-xs-1"></div>
										<div class="col-sm-8 col-xs-8  panel panel-default">
											<span class="subtitle-text">${court.courtName }</span>
											<c:if test="${court.courtStatus == '가등록 코트' }">
												<label>(가등록)</label>
											</c:if>											
											<c:if test="${court.courtStatus == '삭제 투표중' }">
												<label>(삭제요청)</label>
											</c:if>
										</div>
										<div class="col-sm-1 col-xs-1">
											<button type="button" class="btn btn-default btn-submit" id="btnName">더보기</button>
										</div>
									</div>
									<div>
										<div class="row">
											<div class="col-sm-1 col-xs-1"></div>
											<div class="col-sm-10 col-xs-10 panel panel-default">
												<div class="panel-body court-info">
													<div class="row">
														<div class="col-sm-4 col-xs-12">
															<label>주소</label>
														</div>
														<div class="col-sm-8 col-xs-12">
															<span id="address"></span>
														</div>
													</div>
													<div class="row">
														<div class="col-sm-4 col-xs-12">
															<label>전화번호</label>
														</div>
														<div class="col-sm-8 col-xs-12">
															<span>${court.courtTelephone != null ? court.courtTelephone : "정보없음" }</span>
														</div>
													</div>
													<div class="row">
														<div class="col-sm-4 col-xs-12">
															<label>등급</label>
														</div>
														<div class="col-sm-8 col-xs-12">
															<span>${court.courtRating }</span>
														</div>
													</div>
													<div class="row">
														<div class="col-sm-4 col-xs-12">
															<label>적정인원수</label>
														</div>
														<div class="col-sm-8 col-xs-12">
															<span>
																${court.minCourtCapacity }
																<c:choose>
																	<c:when test="${court.maxCourtCapacity < 99 }">
																	~ ${court.maxCourtCapacity } 명
																	</c:when>
																	<c:otherwise>
																	명 이상
																	</c:otherwise>
																</c:choose>
																(
																<c:if test="${!empty court.courtCapacityComfidence  }">
																신뢰도 ${court.courtCapacityComfidence } %
																</c:if>
																<c:if test="${empty court.courtCapacityComfidence }">
																신뢰도 낮음
																</c:if>
																)
															</span>
														</div>
													</div>
													<div class="row">
														<div class="col-sm-4 col-xs-12">
															<label>내코트 등록수</label>
														</div>
														<div class="col-sm-8 col-xs-12">
															<span>${court.myCourtCount }명</span>
														</div>
													</div>
													<div class="row">
														<div class="col-sm-4 col-xs-12">
															<label>화장실</label>
														</div>
														<div class="col-sm-8 col-xs-12">
															<span>
															<c:choose>
															<c:when test="${court.toilet == null || court.toilet == '판별불가' }">
																정보없음
															</c:when>
															<c:otherwise>
																${court.toilet } (신뢰도 ${court.toiletConfidence } %)
															</c:otherwise>
															</c:choose>
															</span>
														</div>
													</div>
													<div class="row">
														<div class="col-sm-4 col-xs-12">
															<label>샤워실</label>
														</div>
														<div class="col-sm-8 col-xs-12">
															<span>
															<c:choose>
															<c:when test="${court.shower == null || court.shower == '판별불가' }">
																정보없음
															</c:when>
															<c:otherwise>
																${court.shower } (신뢰도 ${court.showerConfidence } %)
															</c:otherwise>
															</c:choose>
															</span>
														</div>
													</div>
													<div class="row">
														<div class="col-sm-4 col-xs-12">
															<label>주차장</label>
														</div>
														<div class="col-sm-8 col-xs-12">
															<span>
															<c:choose>
															<c:when test="${court.parkinglot == null || court.parkinglot == '판별불가' }">
																정보없음
															</c:when>
															<c:otherwise>
																${court.parkinglot } (신뢰도 ${court.parkinglotConfidence } %)
															</c:otherwise>
															</c:choose>
															</span>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="row">
								<ul class="nav nav-tabs">
									<li role="presentation" class="active"><a>모임관리</a></li>
									<li role="presentation"><a href="#">대전관리</a></li>
								</ul>
								<div class="row" style="padding-bottom: 3px;">
									<p></p>
								</div>
								<div class="row">
									<div class="col-md-12">
										<ul class="list-group playview">
											<li class="list-group-item board-body">
												<div class="col-sm-1 col-xs-1 cal-left">06/30</div>
												<div class="col-sm-2 col-xs-2">07/01</div>
												<div class="col-sm-2 col-xs-2">07/02</div>
												<div class="col-sm-2 col-xs-2">07/03</div>
												<div class="col-sm-2 col-xs-2">07/04</div>
												<div class="col-sm-2 col-xs-2">07/05</div>
												<div class="col-sm-1 col-xs-1 cal-right">07/06</div>
											</li>
											<li class="list-group-item board-body">
												<div class="col-sm-1 col-xs-1 cal-left">5</div>
												<div class="col-sm-2 col-xs-2">7</div>
												<div class="col-sm-2 col-xs-2">6</div>
												<div class="col-sm-2 col-xs-2">0</div>
												<div class="col-sm-2 col-xs-2">5</div>
												<div class="col-sm-2 col-xs-2">4</div>
												<div class="col-sm-1 col-xs-1 cal-right">1</div>
											</li>
											<li class="list-group-item board-body">
												<div class="col-sm-1 col-xs-1 cal-left">07/07</div>
												<div class="col-sm-2 col-xs-2">07/08</div>
												<div class="col-sm-2 col-xs-2">07/09</div>
												<div class="col-sm-2 col-xs-2">07/10</div>
												<div class="col-sm-2 col-xs-2">07/11</div>
												<div class="col-sm-2 col-xs-2">07/12</div>
												<div class="col-sm-1 col-xs-1 cal-right">07/06</div>
											</li>
											<li class="list-group-item board-body">
												<div class="col-sm-1 col-xs-1 cal-left">5</div>
												<div class="col-sm-2 col-xs-2">7</div>
												<div class="col-sm-2 col-xs-2">6</div>
												<div class="col-sm-2 col-xs-2">0</div>
												<div class="col-sm-2 col-xs-2">5</div>
												<div class="col-sm-2 col-xs-2">4</div>
												<div class="col-sm-1 col-xs-1 cal-right">1</div>
											</li>
											<li class="list-group-item board-header board-body">
												<div class="col-sm-3 col-xs-3">
													<span>시간</span>
												</div>
												<div class="col-sm-6 col-xs-6">
													<span>모임제목</span>
												</div>
												<div class="col-sm-3 col-xs-2">
													<span>인원수</span>
												</div>
											</li>
											<li class="list-group-item board-body">
												<div class="col-sm-3 col-xs-3">
													<span>07:00</span>
												</div>
												<div class="col-sm-6 col-xs-6">
													<span>다들모여라 농구하자</span>
												</div>
												<div class="col-sm-3 col-xs-3">
													<span>5/8</span>
												</div>
											</li>
											<li class="list-group-item board-body">
												<div class="col-sm-3 col-xs-3">
													<span>07:00</span>
												</div>
												<div class="col-sm-6 col-xs-6">
													<span>다들모여라 농구하자</span>
												</div>
												<div class="col-sm-3 col-xs-3">
													<span>5/8</span>
												</div>
											</li>
											<li class="list-group-item board-body">
												<div class="col-sm-3 col-xs-3">
													<span>07:00</span>
												</div>
												<div class="col-sm-6 col-xs-6">
													<span>다들모여라 농구하자</span>
												</div>
												<div class="col-sm-3 col-xs-3">
													<span>5/8</span>
												</div>
											</li>
											<li class="list-group-item board-body">
												<div class="col-sm-3 col-xs-3">
													<span>07:00</span>
												</div>
												<div class="col-sm-6 col-xs-6">
													<span>다들모여라 농구하자</span>
												</div>
												<div class="col-sm-3 col-xs-3">
													<span>5/8</span>
												</div>
											</li>
											<li class="list-group-item board-body">
												<div class="col-sm-3 col-xs-3">
													<span>07:00</span>
												</div>
												<div class="col-sm-6 col-xs-6">
													<span>다들모여라 농구하자</span>
												</div>
												<div class="col-sm-3 col-xs-3">
													<span>5/8</span>
												</div>
											</li>
										</ul>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-3 col-xs-3"></div>
									
								</div>
								<div class="row">
									<p></p>
								</div>
								<div class="row">
									<div class="col-sm-3"></div>

								</div>
								<hr>
								<div class="row">
									<div class="col-sm-6 col-xs-6">
										<span class="title-text">코트리뷰</span>
										<span>( 전체 ${court.totalReviewCount } 개 )</span>
									</div>	
									
									<div class="col-sm-4 col-xs-4">
										<span class="subtitle-text">코트 만족도</span>
										<c:forEach var="star" begin="1" end="${court.avgCourtSatisfaction.intValue() }">
										<i class="fas fa-star"></i>
										</c:forEach>
										<c:if test="${court.avgCourtSatisfaction.intValue() != court.avgCourtSatisfaction.doubleValue()}">
										<i class="fas fa-star-half"></i>
										</c:if>
									</div>	
									<div class="col-sm-2 col-xs-2">
										<a href="<%=cp %>/court/${court.courtCode}/review/register">
											<button type="button" class="btn btn-default btn-submit btn-block">리뷰등록</button>
										</a>
									</div>
								</div>
								<div class="row">
									<div class="panel panel-default">
										<div class="panel-body panel-heading list-header">
											<p></p>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="panel panel-default" id="reviewList">
										<c:if test="${court.courtReviewList.size() == 0 }">
										<div class="col-sm-12 col-xs-12" style="text-align: center; padding-top: 20px;">등록된 리뷰가 없습니다.</div>
										</c:if>
										<c:forEach var="review" items="${court.courtReviewList }">
										<div class="panel panel-default col-sm-12 col-xs-12">
											<div class="panel-body">
												<div class="row">
													<div class="col-sm-2 col-xs-2">
														<a href="#"><span>${review.registrantNickname }</span></a>
													</div>
													<div class="col-sm-4 col-xs-2"></div>
													<div class="col-sm-3 col-xs-6">
														<span>일시 [${review.courtReviewRegisteredDate.split("\\s")[0] }]</span>
													</div>
													
													<div class="col-sm-1 col-xs-2">
														<button type="button" class="btn btn-default btn btnLike" data-reviewcode="${review.courtReviewCode }">
															<span class="far fa-thumbs-up" style="font-size:18px;"></span> 
															<span>${review.likes }</span>
														</button>
													</div>
													<div class="col-sm-1 col-xs-2">
														<button type="button" class="btn btn-default btn btnDislike" data-reviewcode="${review.courtReviewCode }" >
															<span class="far fa-thumbs-down" style="font-size:18px;"></span> 
															<span>${review.dislikes }</span>
														</button>
													</div>
													<div class="col-sm-1 col-xs-2">
														<c:if test="${review.registrantAccountCode != sessionScope.userInfo.userAcctCode }">
														<button type="button" class="btn btn-default btn-danger">신고</button>
														</c:if>
													</div>
												</div>
												<div class="row">
													<div class="col-sm-3 col-xs-5">
														<span>만족도</span>
														<c:forEach var="star" begin="1" end="${review.courtReviewSatisfaction.intValue() }">
														<i class="fas fa-star"></i>
														</c:forEach>
														<c:if test="${review.courtReviewSatisfaction.intValue() != review.courtReviewSatisfaction.doubleValue()}">
															<i class="fas fa-star-half"></i>
														</c:if>
													</div>
													<div class="col-sm-3 col-xs-5">
														<span>시설평점</span>
														<c:forEach var="star" begin="1" end="${review.courtReviewManageScore.intValue() }">
														<i class="fas fa-star"></i>
														</c:forEach>
														<c:if test="${review.courtReviewManageScore.intValue() != review.courtReviewManageScore.doubleValue()}">
														<i class="fas fa-star-half"></i>
														</c:if>
													</div>
													<div class="col-sm-6 sol-xs-2">
														<c:if test="${review.registrantAccountCode == sessionScope.userInfo.userAcctCode }">
														<span id="btnReviewDelete" role="button" data-reviewcode="${review.courtReviewCode }">
															<i class="fas fa-trash-alt" style="font-size: 20px;"></i>
														</span>
														</c:if>
										
													</div>
												</div>
											</div>
											<div class="panel panel-default rev-cont">
												<div class="panel-body">
													<span> ${review.courtReviewContent } </span>
												</div>
											</div>
										</div>
										</c:forEach>
										
										<div class="row">
											<div class="col-md-3"></div>
											<div class="col-md-6 paging" id="pagination"></div>
											<div class="col-md-3"></div>
										</div>


									</div>
								</div>
							</div>

						</div>
						<div class="col-md-1"></div>
					</div>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>
	</div>
</div>
<c:import url="../base/Footer.jsp"></c:import>

<script type="text/javascript">
	$(function() {
		
		var alertMsg = "${alert}";
		
		if(alertMsg)
			alert(alertMsg);
		
		var position = "${court.mapPosition}".split(",");
		
		$.ajax({
	    	type:"get",
	    	dataType: "json",
	    	url: "https://dapi.kakao.com/v2/local/geo/coord2address.json",
	    	data: {x: position[0], y:position[1]},
	    	beforeSend: function(xhr) {
	    		xhr.setRequestHeader("Authorization", "KakaoAK e6e5dc704ed2b833d6f7a164f12f28b3");
	    	},
	    	success: function(data) {
	    		$("#address").text(data.documents[0].address.address_name);
	    	},
	    	error: function(e) {
	    		alert(e.responseText);
	    	}
	    });
		
		$.ajax({
			type: "get",
			dataType: "text",
			url: "<%=cp %>/ajax/court/${court.courtCode }/reviewindex",
			data: {page: 1},
			success: function(data) {
				$("#pagination").html(data);
				$("li[data-page]").click(renderNewPage);
			},
			error: function(e) {
				alert(e.responseText);
				console.log(e);
			}
		});
		
		
		$("#btnReviewDelete").click(function () {
			if(confirm("정말로 삭제하시겠습니까?"))
				$(location).attr("href", "<%=cp %>/court/${court.courtCode }/review/" + $(this).attr("data-reviewcode") + "/delete");
		});
		
		$("#btnName").click(function () {
			window.open("<%=cp %>/court/${court.courtCode }/name", "코트 > 코트 정보 > 코트 이름"
					, "top=10, left=10, width=500, height=600, status=no, menubar=no, toolbar=no, resizable=no");
		});
		
		$("#btnVoteRegister").click(function () {
			window.open("<%=cp %>/court/${court.courtCode }/registerpoll", "코트 > 코트 정보 > 코트 등록 투표"
					, "top=10, left=10, width=300, height=400, status=no, menubar=no, toolbar=no, resizable=no");
		});
		
		$("#btnVoteDelete").click(function () {
			window.open("<%=cp %>/court/${court.courtCode }/deletepoll", "코트 > 코트 정보 > 코트 삭제 투표"
					, "top=10, left=10, width=300, height=400, status=no, menubar=no, toolbar=no, resizable=no");
		});
		
		
		
		$(".court-img").hover(function() {
			$(".court-img-heading").attr("src", $(this).attr("src"));
		})
		
		$("#btnMyCourt").click(function () {
			if(confirm("내 코트로 등록하시겠습니까?"))
				$(location).attr("href", "<%=cp %>/mypage/updateuser?userCourtCode=${court.courtCode }");
		});
		
		$("#btnDelReq").click(function () {
			if(confirm("코트 삭제를 요청하시겠습니까?"))
				$(location).attr("href", "<%=cp %>/court/${court.courtCode}/deleterequest");
		});
		
		$("#btnAdminCourtDel").click(function () {
			if(confirm("정말로 해당 코트를 삭제하시겠습니까?"))
				$(location).attr("href", "<%=cp %>/court/${court.courtCode}/delete");
		});
		
		$(".btnLike[data-reviewcode]").click(pollReviewLike);
		$(".btnDislike[data-reviewcode]").click(pollReviewDislike);
		
	});
	
	function pollReviewDislike() {
		var reviewCode = $(this).attr("data-reviewcode");
		
		if($(this).is(".active"))
			return;
		
		$.ajax({
			type: "get",
			url: "<%=cp %>/court/${court.courtCode}/review/" + reviewCode + "/poll/like",
			dataType: "text",
			success: function (data) {
				$(this).addClass("active");
				$(".btnLike[data-reviewcode='" + reviewCode + "']").removeClass("active");
			}, 
			error: function(e) {
				console.log(e);
				alert(e.responseText);
			}
		});
	}
	
	function pollReviewLike() {
		var reviewCode = $(this).attr("data-reviewcode");

		if($(this).is(".active"))
			return;
		
		$.ajax({
			type: "get",
			url: "<%=cp %>/court/${court.courtCode}/review/" + reviewCode + "/poll/dislike",
			dataType: "text",
			success: function (data) {
				$(this).addClass("active");
				$(".btnDislike[data-reviewcode='" + reviewCode + "']").removeClass("active");
			}, 
			error: function(e) {
				console.log(e);
				alert(e.responseText);
			}
		});
	}
	
	function renderNewPage() {
		var page = $(this).attr("data-page");
		
		$.ajax({
			type: "get",
			dataType: "json",
			url: "<%=cp %>/ajax/court/${court.courtCode }/reviewlist",
			data: {page: page},
			success: function(data) {
				var result = "";
				for(var i=0; i<data.length; i++) {

					result += '<div class="panel panel-default col-sm-12 col-xs-12">\n';
					result += '	<div class="panel-body">\n';
					result += '		<div class="row">\n';
					result += '			<div class="col-sm-2 col-xs-2">\n';
					result += '				<a href="#"><span>' + data[i].registrantNickname + '</span></a>\n';
					result += '			</div>\n';
					result += '			<div class="col-sm-4 col-xs-2"></div>\n';
					result += '			<div class="col-sm-3 col-xs-6">\n';
					result += '				<span>일시 [' + data[i].courtReviewRegisteredDate + ']</span>\n';
					result += '			</div>\n';
					
					result += '			<div class="col-sm-1 col-xs-2">\n';
					result += '				<button type="button" class="btn btn-default btn btnLike';
					if(data[i].pollLikeOrDislike == "YES")
						result += " active ";
					result += '" data-reviewcode="' + data[i].courtReviewCode + '">\n';
					result += '					<span class="far fa-thumbs-up" style="font-size:18px;"></span>\n'; 
					result += '					<span>' + data[i].likes + '</span>\n';
					result += '				</button>\n';
					result += '			</div>\n';
					result += '			<div class="col-sm-1 col-xs-2">\n';
					result += '				<button type="button" class="btn btn-default btn btnDislike';
					if(data[i].pollLikeOrDislike == "NO")
						result += " active ";
					result += '" data-reviewcode="' + data[i].courtReviewCode + '">\n';
					result += '					<span class="far fa-thumbs-down" style="font-size:18px;"></span>\n'; 
					result += '					<span>' + data[i].dislikes + '</span>\n';
					result += '				</button>\n';
					result += '			</div>\n';
					result += '			<div class="col-sm-1 col-xs-2">\n';
					
					if("${sessionScope.userInfo.userAcctCode }" != data[i].registrantAccountCode)
						result += '			<button type="button" class="btn btn-default btn-danger">신고</button>\n';
					
					result += '			</div>\n';
					result += '		</div>\n';
					result += '		<div class="row">\n';
					result += '			<div class="col-sm-3 col-xs-5">\n';
					result += '				<span>만족도</span>\n';
					
					for(var j=1; j<=data[i].courtReviewSatisfaction; j++)
						result += '			<i class="fas fa-star"></i>\n';
					if(data[i].courtReviewSatisfaction != parseInt(data[i].courtReviewSatisfaction))
						result += '				<i class="fas fa-star-half"></i>\n';
					
					result += '			</div>\n';
					result += '			<div class="col-sm-3 col-xs-5">\n';
					result += '				<span>시설평점</span>\n';
					
					for(var j=1; j<=data[i].courtReviewManageScore; j++)
						result += '			<i class="fas fa-star"></i>\n';
					if(data[i].courtReviewManageScore != parseInt(data[i].courtReviewManageScore))
						result += '				<i class="fas fa-star-half"></i>\n';
					
					result += '			</div>\n';
					result += '			<div class="col-sm-6 sol-xs-2">\n';
					
					if("${sessionScope.userInfo.userAcctCode }" == data[i].registrantAccountCode) {						
						result += '				<span id="btnReviewDelete" role="button" data-reviewcode="';
						result += data[i].courtReviewCode;
						result += '">\n';
						result += '					<i class="fas fa-trash-alt" style="font-size: 20px;"></i>\n';
						result += '				</span>\n';
					}
					
					result += '			</div>\n';
					result += '		</div>\n';
					result += '	</div>\n';
					result += '	<div class="panel panel-default rev-cont">\n';
					result += '		<div class="panel-body">\n';
					result += '			<span>' + data[i].courtReviewContent + '</span>\n';
					result += '		</div>\n';
					result += '	</div>\n';
					result += '</div>\n';
				}
				
				
				result += '<div class="row">\n';
				result += '<div class="col-md-3"></div>\n';
				result += '<div class="col-md-6 paging" id="pagination"></div>\n';
				result += '<div class="col-md-3"></div>\n';
				result += '</div>\n';
				
				$("#reviewList").html(result);
				
				$(".btnLike[data-reviewcode]").click(pollReviewLike);
				$(".btnDisike[data-reviewcode]").click(pollReviewDislike);
				
				$.ajax({
					type: "get",
					dataType: "text",
					url: "<%=cp %>/ajax/court/${court.courtCode }/reviewindex",
					data: {page: page},
					success: function(data) {
						$("#pagination").html(data);
						$("li[data-page]").click(renderNewPage);
					},
					error: function(e) {
						alert(e.responseText);
						console.log(e);
					}
				});
			},
			error: function(e) {
				alert(e.responseText);
				console.log(e);
			}
		});
	}
</script>
</body>
</html>

