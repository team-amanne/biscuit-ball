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
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=cp%>/css/board.css" />
<link rel="stylesheet" href="<%=cp%>/css/default.css" />
<style type="text/css">
.radio {
	vertical-align: baseline;
	padding-bottom: 4px;
}

.time-ridio {
	margin-bottom: 7px;
}

.end-time {
	margin: 7px auto 7px auto;
	vertical-align: baseline;
}

.map-container {
	width: 450px;
	height: 500px;
}

.btn-mapSearch {
	padding-left: 0px;
}

.satisfy {
	text-align: center;
}

.courtInfo {
	font-weight: bold;
}

.star-score {
	color: orange;
}

.btn-serach {
	padding: 0px 0px 0px 0px;
}

.list-header {
	color: white;
	background: orange;
	font-size: 130%;
}

.paging {
	text-align: center;
}

.top-btn {
	padding-bottom: 10px;
	color: white;
}

.top-btn .col-md-2 {
	text-align: right;
}

.list-item {
	height: 50px;
	text-align: center;
}

</style>

<!-- 달력(datepicker) -->
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<!-- 스크립트단 -->
<script type="text/javascript">

	$(function()
	{
		
		
		  //날짜 placeholder 오늘로 고정
		  var now = new Date();

	      var year= now.getFullYear();
	      var mon = (now.getMonth()+1)>9 ? ''+(now.getMonth()+1) : '0'+(now.getMonth()+1);
	      var day = now.getDate()>9 ? ''+now.getDate() : '0'+now.getDate();
	      var sysdate = now.getDate();
	      
	      // 오늘로부터 14일 선택 가능하게 만듦(데이트 피커)
	      var maxDate = new Date();
	      var endDay = sysdate+14;
	      maxDate.setDate(endDay);
	              
	      var today = "ex) " + year + '-' + mon + '-' + day;
	      $("#dateselect1").attr("placeholder", today);
	      
	      //데이트피커 사용
	      $("#dateselect1").datepicker({
	    	  
	    	  minDate: 0,
	    	  maxDate: maxDate,
	    	  dateFormat: "yy-mm-dd"
	      });
	      
	      $("#dateselect2").attr("placeholder", today);
	      
	      //데이트피커 사용
	      $("#dateselect2").datepicker({
	    	  
	    	  minDate: 0,
	    	  maxDate: maxDate,
	    	  dateFormat: "yy-mm-dd"
	      });
	      
	      // 내 코트 체크 시 지도 검색 비활성화
	      
	      $("#myCourt").change(function()
		{
	    	  
			  if($("#myCourt").is(":checked"))
			  {
				    $("#regionSelect").attr("disabled", true);
					$("#citySelect").attr("disabled", true);
					$("#mapSearch").attr("disabled", true);
					
					$("#myCourt").val($("myCourtCheckedVal").val());
					
		      }
			  else
		      {
				  $("#regionSelect").attr("disabled", false);
					$("#citySelect").attr("disabled", false);
					$("#mapSearch").attr("disabled", false);
					
					$("#myCourt").val("");
		      }
		});
	      
	      $('#meetingSubject').attr("href", "<%=cp%>/play/meeting/")
	      
	      
	      
	      
	      // ajax() 사용해 시군구 불러오기
	      $("#regionSelect").on("change", function()
      	 {
         $.ajax({
            type: "get",
            dataType: "json",
            url: "<%=cp%>/ajax/citylist",
            data: {regionCode: $(this).val()},
            success: function(data) {
               var result = "<option value=''>시·군·구</option>\n";
               for(var i=0; i<data.length; i++)
                  result += "<option value='" + data[i].cityCode +"'>" + data[i].cityName + "</option>\n";
               $("#citySelect").html(result);
            },
            error: function(e){
               alert(e.responseText);
            }
         });
      	});
	      
	});
	

</script>
</head>
<body>

	<!-- 헤더 -->
	<c:import url="../base/Header.jsp"></c:import>
	<c:import url="../base/PlaySubmenu.jsp"></c:import>

	<div class="container-fluid main">
		<div class="section-title container">
			<h5>농구하기 > 사용자선택 > 함께농구 조건 선택</h5>
			<hr />
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="row">
					<div class="col-md-12">
						<p class="title-text">모임 조건 설정</p>
						<br>
						<div class="row">
							<div class="col-md-3">
								<div class="panel panel-default">
									<div class="panel-heading panel-head">경기/일반 선택</div>
									<div class="panel-body">
										<label class="radio-inline radio"> 
										<input type="radio"name="meetingType" id="inlineRadio1" value="ZL01">시합
										</label> 
										<label class="radio-inline radio"> 
										<input type="radio" name="meetingType" id="inlineRadio2" value="ZL02"> 일반
										</label>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading panel-head">모임 시작 시간</div>
									<div class="panel-body">
										<div class="input-group">
											<input type="text" class="form-control" placeholder=""
												id="dateselect1"> <select class="form-control"
												id="timeselect">
												<c:forEach var="i" begin="0" end="24">
													<option value="${String.format('%02d:00', i)}">
														<c:choose>
															<c:when test="${i <10}">
															0${i }:00
                                 							</c:when>
															<c:otherwise>${i }:00</c:otherwise>
														</c:choose>
													</option>
												</c:forEach>
											</select>

										</div>
										<!-- /input-group -->

									</div>
								</div>


							</div>
							<div class="col-md-9">
								<div class="panel panel-default">
									<div class="panel-heading panel-head">모임 장소 선택</div>
									<div class="panel-body">
										<div class="col-md-4">
											<select name="" class="form-control" id="regionSelect">
												<option value="">광역시·도</option>
												<c:forEach var="regionDto" items="${regionList }">
													<option value="${regionDto.regionCode }">${regionDto.regionName }</option>
												</c:forEach>
											</select>
										</div>
										<div class="col-md-4">
											<select name="" class="form-control" id="citySelect">

											</select>
										</div>
										<div class="col-md-2 btn-mapSearch">
											<button class="btn btn-default btn-md btn-block"
												id="mapSearch">
												지도검색 <span class="glyphicon glyphicon-map-marker"></span>
											</button>
										</div>
										<div class="col-md-2">
											<label class="checkbox-inline radio"> <input
												type="checkbox" name="inlineCheckOptions" id="myCourt"
												value=""> 내 코트
											</label> <input type="hidden" value="${userDto.userCourtCode }"
												id="myCourtCheckedVal">
										</div>
									</div>
								</div>

								<div class="panel panel-default">
									<div class="panel-heading panel-head">지도 선택</div>
									<div class="panel-body">
										<div class="col-md-8 map-container" id="map"></div>

										<!-- 마커 클릭 시 등장하는 코트 정보  -->
										<div class="col-md-4" id="courtInfo">
											<h4>코트 정보</h4>
											<ul class="list-group">
												<li class="list-group-item">
													<div class="col-md-7 courtInfo">
														<span class="">코트이름</span>
													</div>
													<p id="courtName"></p>
												</li>
												<li class="list-group-item">
													<div class="col-md-7 courtInfo">
														<span class="">적정인원</span>
													</div> <span id="minCourtCapacity"></span>~<span
													id="maxCourtCapacity"></span>
												</li>
												<li class="list-group-item">
													<div class="col-md-7 courtInfo">
														<span class="">코트등급</span>
													</div>
													<p id="courtRating"></p>
												</li>
												<li class="list-group-item">
													<div class="col-md-7 courtInfo">
														<span class="">만족도</span>
													</div> <span class="star-score" id="avgCourtSatisfaction">
												</span>
												</li>
											</ul>
											<h4>코트 시설</h4>
											<ul class="list-group">
												<li class="list-group-item">
													<div class="col-md-7 courtInfo">
														<span class="">화장실</span>
													</div> <span class="" id="toilet"></span>&nbsp;&nbsp;&nbsp;&nbsp;
													<span class="" id="toiletConfidence"></span>
												</li>
												<li class="list-group-item">
													<div class="col-md-7 courtInfo">
														<span class="">샤워실</span>
													</div> <span class="" id="shower"></span>&nbsp;&nbsp;&nbsp;&nbsp;
													<span class="" id="showerConfidence"></span>
												</li>
												<li class="list-group-item">
													<div class="col-md-7 courtInfo">
														<span class="">주차장</span>&nbsp;&nbsp;&nbsp;&nbsp;
													</div> <span class="" id="parkinglot"></span>&nbsp;&nbsp;&nbsp;&nbsp;
													<span class="" id="parkinglotConfidence"></span>
												</li>
											</ul>

											<div class="col-md-12 btn-serach">
												<button class="btn btn-default btn-block btn-lg"
													id="playSearch">함께농구 검색</button>
												<button class="btn btn-default btn-block btn-lg" id="createMeeting">
													함께농구 개설</button>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- <div class="col-md-1"></div> -->
		<hr />

		<!-- 모임 목록 -->
		<div class="row" id="resultList" style="display: none;">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row top">
							<div class="col-md-12">
								<p class="subtitle-text">모임 목록</p>
								<hr>
							</div>
						</div>
						<ul class="list-group" id="meetingList">
							<!-- 게시판 출력 영역 -->
						</ul>

						<div class="row">
							<div class="col-md-12  right-btn">
								<button class="btn btn-default btn-link" type="submit">모임
									개설</button>
							</div>
						</div>


					</div>

					<div class="row">
						<div class="col-md-4"></div>
						<div class="col-md-4 paging">
							<ul class="pagination">
								<li class="disabled"><a href="#"> <span>«</span>
								</a></li>
								<li class="active"><a href="#" class="select-page">1</a></li>
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
				<div class="col-md-2">
					<input type="hidden" id="courtCode">
				</div>
			</div>
		</div>
	</div>


	<c:import url="../base/Footer.jsp"></c:import>

	<!-- 카카오 맵  -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ab23ff0014eee816a3de71fa0333dc78&libraries=services,clusterer,drawing"></script>
	<script type="text/javascript">

$(function()
{
	markers = [];
	
	// 카카오 맵 사용
	map = new kakao.maps.Map(document.getElementById("map"), 
			{
		center: new kakao.maps.LatLng(37.5668260054796, 126.978656785931),
		level: 3
	});
	
	/* marker = new kakao.maps.Marker({ center: map.getCenter() });
	marker.setMap(map); */
	
	$("#mapSearch").on("click", function() 
	{
		// 시군구 주소 좌표로 변환해 주는 에이젝스
		$.ajax({
	    	type:"get",
	    	dataType: "json",
	    	url: "https://dapi.kakao.com/v2/local/search/address.json",
	    	data: {query: $("#regionSelect>option[value=" + $("#regionSelect").val() + "]").text() + " " + $("#citySelect>option[value=" + $("#citySelect").val() + "]").text()},
	    	beforeSend: function(xhr) {
	    		xhr.setRequestHeader("Authorization", "KakaoAK f910b6b7f9f4a0828f745a3a4014bb1d");
	    	},
	    	success: function(data) {
	    		var lng = data.documents[0].x;
	    		var lat = data.documents[0].y;
	    		map.setCenter(new kakao.maps.LatLng(lat, lng));
	    		/* marker.setPosition(map.getCenter()); */
	    	
	    		// 특정 시군구 코트 리스트 불러오기 + 마커 찍는 에이젝스
	    		$.ajax({
		            type: "get",
		            dataType: "json",
		            url: "<%=cp%>/ajax/courtlist",
		            data: {cityCode: $("#citySelect").val()},
		            success: function(data) 
		            {
		            	var positions = new Array(data.length);
		            	
		            	for(var i=0; i<data.length; i++)
		            	{
		            		var tmp = data[i].mapPosition.split(",");
		            		positions[i] = 
		            	    {
		            	        content: '<div>'+ data[i].courtName+'</div>', 
		            	        latlng: new kakao.maps.LatLng(tmp[1], tmp[0])
		            	    };
		            	}
		            	
		            		
	            		for (var i = 0; i < positions.length; i ++) 
	            		{
	            		    // 마커를 생성합니다
	            		    var marker = new kakao.maps.Marker({
	            		        map: map, // 마커를 표시할 지도
	            		        position: positions[i].latlng // 마커의 위치
	            		    });
	            		    
	            		    markers.push(marker);

	            		    // 마커에 표시할 인포윈도우를 생성합니다 
	            		    var infowindow = new kakao.maps.InfoWindow({
	            		        content: positions[i].content // 인포윈도우에 표시할 내용
	            		    });

	            		    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
	            		    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
	            		    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
	            		    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
	            		    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
	            		    
	            		    
	            		 // 마커에 클릭이벤트를 등록 → 코트 정보 html에 표시
		            		kakao.maps.event.addListener(marker, 'click', function() 
		            		{
		            		      var courtPositionX = this.getPosition().getLng();
		            		      var courtPositionY = this.getPosition().getLat();
		            		      
		            		      $.ajax
		            		      ({
		          		            type: "get",
		          		            dataType: "json",
		          		            url: "<%=cp%>/ajax/court",
		          		            data: {mapPositionX: courtPositionX, mapPositionY: courtPositionY},
		          		            success: function(data)
		          		            {
		          		            	/* 코트 정보 */
		          		            	/* 코트이름 */
		          		            	$("#courtCode").val(data.courtCode);
		          		            	$("#courtName").text(data.courtName);
		          		            	/* 적정인원 최소 */
		          		            	$("#minCourtCapacity").text(data.minCourtCapacity);
		          		            	/* 적정인원 최대 */
		          		            	$("#maxCourtCapacity").text(data.maxCourtCapacity);
		          		            	/* 코트 관리 등급 */
		          		            	$("#courtRating").text(data.courtRating);
		          		            	/* 만족도 */
		          		            	$("#avgCourtSatisfaction").text(data.avgCourtSatisfaction);
		          		            	/* 화장실  */
		          		            	$("#toilet").text(data.toilet);
		          		            	$("#toiletConfidence").text(data.toiletConfidence);
		          		            	/* 샤워실 */
		          		            	$("#shower").text(data.shower);
		          		            	$("#showerConfidence").text(data.showerConfidence);
		          		            	/* 주차장 */
		          		            	$("#parkinglot").text(data.parkinglot);
		          		            	$("#parkinglotConfidence").text(data.parkinglotConfidence);
		          		            	
		            		      },
		            		    	error: function(e) {
		            		    		alert(e.responseText);
		            		    	}
		            		    });
		            		      
		            		});
	            		    
	            		}
	            		
	            		// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
	            		function makeOverListener(map, marker, infowindow) 
	            		{
	            		    return function() {
	            		        infowindow.open(map, marker);
	            		    };
	            		}

	            		// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
	            		function makeOutListener(infowindow) 
	            		{
	            		    return function() 
	            		    {
	            		        infowindow.close();
	            		    };
	            		}
	            		
		            },
		            error: function(e){
		               alert(e.responseText);
		            }
		         });
	    	},
	    	error: function(e) {
	    		alert(e.responseText);
	    	}
	    });
		
	});
	
	
	//---
	
	
	// 모임 검색
	$("#playSearch").click(function()
	{ 	
		$("#resultList").css("display", "inline");
		
		$.ajax
		({
			type: "get",
            dataType: "json",
            url: "<%=cp%>/ajax/togethermeetinglist",
			data :
			{
				courtRegistrationCode : $("#courtCode").val(),
				meetingDate : $("#dateselect1").val()+" "+$("#timeselect option:selected").val(),
				meetingTypeCode : $('input[name="meetingType"]:checked').val(),
				start : 1,
				end : 10
			},
			success : function(data)
			{

				var listPrint = "<li class='list-group-item board-body board-header'><div class='row'>"
						+ "<div class='col-md-4 col-xs-4'><span>제목</span></div><div class='col-md-2 col-xs-2'><span>주장</span>"
						+ "</div><div class='col-md-3 col-xs-3'><span>장소</span></div><div class='col-md-2 col-xs-2'>"
						+ "<span>일시</span></div><div class='col-md-1 col-xs-1'><span>인원</span></div></div></li>";

				console.log(data);
				for (var i=0; i<data.length; i++)
				{
					listPrint += "<li class='list-group-item board-body'><div class='row'><div class='col-md-4 col-xs-4'>";
					listPrint += "<span id='meetingSubject'>"+ data[i].meetingSubject+ "</span>";
					$('#meetingSubject').attr("href", "<%=cp%>/play/meeting/"+ data[i].meetingCode);
					listPrint += "</div><div class='col-md-2 col-xs-2'>";
					listPrint += "<span id='captainName'>"+ data[i].captainName+ "</span>";
					listPrint += "</div><div class='col-md-3 col-xs-3'>";
					listPrint += "<span id='courtName'>"+ $("#courtName").text()+ "</span>";
					$('#courtName').attr("href", "<%=cp%>/play/meeting/"+ data[i].courtRegistrationCode);
					listPrint += "</div><div class='col-md-2 col-xs-2'>";
					listPrint += "<span>"+ data[i].meetingDate+ "</span>";
					listPrint += "</div><div class='col-md-1 col-xs-1'>";
					listPrint += "<span>"+ data[i].nowPeopleNumber+ "/"+ data[i].meetingPeopleNumber+ "</span>";
					listPrint += "</div></div></li>";

					/* <li class="list-group-item board-body">
					<div class="row">
						<div class="col-md-4 col-xs-4">
							<span>안녕하십니까 한판합시다</span>
						</div>
						<div class="col-md-2 col-xs-2">
							<span>아맞네짱</span>
						</div>
						<div class="col-md-3 col-xs-3">
							<span>서울 마포구 쌍용코트</span>
						</div>
						<div class="col-md-2 col-xs-2">
							<span>2020-07-17 12:00</span>
						</div>
						<div class="col-md-1 col-xs-1">
							<span>3/4</span>
						</div>
					</div>
					</li> */
					
						
				}
				$("#meetingList").html(listPrint);
				
				alert(listPrint);
			},
			error : function(e)
			{
				alert(e.responseText);
			}
					});
		});
	
		$("#createMeeting").click(function()
		{
			$(location).attr("href","<%=cp%>/play/meeting/createfull");
		});

		});
	</script>

</body>
</html>