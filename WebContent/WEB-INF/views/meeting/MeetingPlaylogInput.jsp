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
<title>BiscuitBail > 플레이로그입력</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" href="<%=cp%>/css/board.css" />

<style type="text/css">
.info-title {
	font-size: 12pt;
	font-weight: bold;
	/* text-align: center; */
	padding-left: 0px;
	padding-right: 0px;
}

.eval-user {
	height: 30px;
	color: orange;
	font-size: 8pt;
	width: 100px;
	margin-left: 30px;
	font-family: "Font Awesome 5 Free";
	font-weight: 900;
}


.user-info {
	text-align: center;
}

.btn_action {
	text-align: center;
}
</style>

</head>
<body>

		<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/PlaySubmenu.jsp"></c:import>

	<div class="container-fluid main">
		<div class="section-title container">
			<h5></h5>
			<hr />
		</div>
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<div class="row">
					<div class="col-md-12">
						<div class="col-md-10">
							<h3>플레이로그</h3>
						</div>
						<div class="col-md-2"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-body">
								<div class="panel panel-default">
									<div class="panel-body center-move">
										<div class="col-md-6">
											<div class="col-md-4 info-title">
												<span>제목</span>
											</div>
											<div class="col-md-6">${meetingdto.meetingSubject}</div>
										</div>
										<div class="col-md-3">
											<div class="col-md-4 info-title">
												<span>주장</span>
											</div>
											<div class="col-md-8">${meetingdto.captainName}</div>
										</div>
										<div class="col-md-3">
											<div class="col-md-6 info-title">
												<span>인원</span>
											</div>
											<div class="col-md-6">${meetingdto.meetingPeopleNumber}명</div>
										</div>

									</div>
								</div>

								<h4>모임 정보</h4>

								<div class="panel panel-default">
									<div class="panel-body center-move">
										<div class="col-md-6">
											<div class="col-md-4 info-title">
												<span>시합</span>
											</div>
											<div class="col-md-8">${meetingdto.meetingTypeName}</div>
										</div>
										<div class="col-md-6">
											<div class="col-md-4 info-title">
												<span>장소</span>
											</div>
											<div class="col-md-8">
											<c:if test="${courtdto.courtCode != null}">									
												<a href="<%=cp %>/court/${courtdto.courtCode}" class="icon_connect">
												<span>${courtdto.cityName } ${courtdto.courtName}</span>
												</a>
											</c:if>
											</div>
										</div>
										<div class="col-md-6">
											<div class="col-md-4 info-title">
												<span>시작일시</span>
											</div>
											<div class="col-md-8">${meetingdto.meetingDate}</div>
										</div>

										<div class="col-md-6">
											<div class="col-md-4 info-title">
												<span>종료일시</span>
											</div>
											<div class="col-md-8">${meetingdto.meetingEndDate}</div>
										</div>

									</div>
								</div>


								<h4>참여자 정보</h4>

								<ul class="list-group">
							<li class="list-group-item board-body board-header">
								<div class="row">															
									<div class="col-sm-4 col-xs-4">
										<span>닉네임</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span>티어</span>
									</div>
									<div class="col-md-4 col-xs-4">
										<span>페어플레이 점수</span>
									</div>
										
								</div>
							</li>
							
							<c:forEach var="member" items="${memberlist}">
							
							<li class="list-group-item board-body">
								<div class="row">
									<div class="col-sm-4 col-xs-4">
										<a href="<%=cp %>/userpage/${member.userAccountCode }">${member.userNickname }</a>
									</div>
									<div class="col-sm-4 col-xs-4">Lv.${member.tierName }</div>
									<div class="col-sm-4 col-xs-4">
									<c:choose>
									<c:when test="${member.fairplayScore==5 }">
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
									</c:when>
									<c:when test="${member.fairplayScore>=4.5 }">
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star-half"></span>
									</c:when>
									<c:when test="${member.fairplayScore>=4 }">
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
									</c:when>
									<c:when test="${member.fairplayScore>=3.5 }">
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star-half"></span>
									</c:when>
									<c:when test="${member.fairplayScore>=3 }">
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
									</c:when>
									<c:when test="${member.fairplayScore>=2.5 }">
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star-half"></span>
									</c:when>
									<c:when test="${member.fairplayScore>=2 }">
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
									</c:when>
									<c:when test="${member.fairplayScore>=1.5 }">
										<span class="fa fa-star"></span>
										<span class="fa fa-star-half"></span>
									</c:when>
									<c:when test="${member.fairplayScore>=1 }">
										<span class="fa fa-star"></span>
									</c:when>
									<c:when test="${member.fairplayScore>=0.5 }">
									<span class="fa fa-star-half"></span>
									</c:when>
									<c:otherwise>
									정보없음
									</c:otherwise>
									
									</c:choose>
									
									</div>
								</div>
							</li>
						</c:forEach>
										
						</ul>
								<p class="subtitle-text">플레이로그 입력</p>	
								 <form action="<%=cp%>/play/meeting/manage/playlog/${meetingdto.meetingDate}"
           						 class="meetingPlaylog-form">							
								<ul class="list-group">
									<li class="list-group-item board-body">
										<div class="col-sm-4 col-xs-4">
											<span>실제플레이 시간</span>
										</div>
										<div class="col-sm-4 col-xs-4">
											<select class="form-control" id="playTime" name="timeSelect">
                                                   <c:forEach var="i" begin="30" end="1440" step="30">
                                                      <option value="${i }">
                                                            ${i }분
                                                      </option>
                                                   </c:forEach>
                                                </select>
										</div>
									</li>
								</ul>
								
								<ul class="list-group">
									
									<li class="list-group-item board-body board-header">
										<div class="row">
											<div class="col-sm-4 col-xs-4">
												<span>닉네임</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>실력평가</span>
											</div>
											<div class="col-sm-4 col-xs-4">
												<span>페어플레이 평가</span>
											</div>
										</div>
									</li>									
									<c:forEach var="member" items="${memberlist}">
									<c:if test="${userinfo.userAcctCode != member.userAccountCode}">
									<li class="list-group-item board-body">
										<div class="row">
											<div class="col-sm-4 col-xs-4">
												<a href="<%=cp %>/userpage/${member.userAccountCode }">${member.userNickname }</a>
											</div>
											
											<div class="col-sm-4 col-xs-4">
												<c:choose>
												<c:when test="${userinfo.tierName >= member.tierName}">
												<select name="" id="" class="form-control">												
													<option value="ZA01">UP</option>
													<option value="ZA02">SAME</option>
													<option value="ZA03">DOWN</option>
		
												</select>
												</c:when>
												<c:otherwise>
												<select name="" id="" class="form-control">													
													<option value="">평가불가</option>
												</select>
												</c:otherwise>
												</c:choose>
											</div>
		
											<div class="col-sm-4 col-xs-4">
												<div id="half-stars-example">
													<div id="half-stars-example">
														<div class="rating-group" id="fairplayScore">
															<input class="rating__input rating__input--none" checked
																name="rating2" id="rating2-0" value="0" type="radio">
															<label aria-label="0 stars" class="rating__label"
																for="rating2-0">&nbsp;</label> <label
																aria-label="0.5 stars"
																class="rating__label rating__label--half"
																for="rating2-05"><i
																class="rating__icon rating__icon--star fa fa-star-half"></i></label>
															<input class="rating__input" name="rating2"
																id="rating2-05" value="0.5" type="radio"> <label
																aria-label="1 star" class="rating__label"
																for="rating2-10"><i
																class="rating__icon rating__icon--star fa fa-star"></i></label>
															<input class="rating__input" name="rating2"
																id="rating2-10" value="1" type="radio"> <label
																aria-label="1.5 stars"
																class="rating__label rating__label--half"
																for="rating2-15"><i
																class="rating__icon rating__icon--star fa fa-star-half"></i></label>
															<input class="rating__input" name="rating2"
																id="rating2-15" value="1.5" type="radio"> <label
																aria-label="2 stars" class="rating__label"
																for="rating2-20"><i
																class="rating__icon rating__icon--star fa fa-star"></i></label>
															<input class="rating__input" name="rating2"
																id="rating2-20" value="2" type="radio"> <label
																aria-label="2.5 stars"
																class="rating__label rating__label--half"
																for="rating2-25"><i
																class="rating__icon rating__icon--star fa fa-star-half"></i></label>
															<input class="rating__input" name="rating2"
																id="rating2-25" value="2.5" type="radio" checked>
															<label aria-label="3 stars" class="rating__label"
																for="rating2-30"><i
																class="rating__icon rating__icon--star fa fa-star"></i></label>
															<input class="rating__input" name="rating2"
																id="rating2-30" value="3" type="radio"> <label
																aria-label="3.5 stars"
																class="rating__label rating__label--half"
																for="rating2-35"><i
																class="rating__icon rating__icon--star fa fa-star-half"></i></label>
															<input class="rating__input" name="rating2"
																id="rating2-35" value="3.5" type="radio"> <label
																aria-label="4 stars" class="rating__label"
																for="rating2-40"><i
																class="rating__icon rating__icon--star fa fa-star"></i></label>
															<input class="rating__input" name="rating2"
																id="rating2-40" value="4" type="radio"> <label
																aria-label="4.5 stars"
																class="rating__label rating__label--half"
																for="rating2-45"><i
																class="rating__icon rating__icon--star fa fa-star-half"></i></label>
															<input class="rating__input" name="rating2"
																id="rating2-45" value="4.5" type="radio"> <label
																aria-label="5 stars" class="rating__label"
																for="rating2-50"><i
																class="rating__icon rating__icon--star fa fa-star"></i></label>
															<input class="rating__input" name="rating2"
																id="rating2-50" value="5" type="radio">
														</div>
													</div>
												</div>
											</div>
										</div>
									</li>
									</c:if>
								</c:forEach>

								</ul>


								<div class="btn_action">
									<button type="button" class="btn btn-default btn-lg btn-submit">입력완료</button>
									<button type="button" class="btn btn-default btn-lg">목록으로</button>
								</div>
								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3"></div>
		</div>
	</div>



	<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>