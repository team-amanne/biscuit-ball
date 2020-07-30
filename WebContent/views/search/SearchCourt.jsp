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
<title>코트 정보 > 코트 검색</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=cp%>/css/default.css" />
<script type="text/javascript" src="https://code.jquery.com/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style type="text/css">
.subtitle-text {
	font-weight: bold;
}

.court-info-title {
	color: orange;
	font-size: 12pt;
	font-weight: bold;
}

.correct-percent {
	color: orange;
}
</style>
</head>

<body>

<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/CourtSubmenu.jsp?active=search"></c:import>

<div class="container-fluid main">
	<div class="section-title container">
		<h5>코트 정보 > 코트 검색</h5>
		<hr />
	</div>
	<div class="row">

		<div class="col-md-2 col-xs-2"></div>
		<div class="col-md-8 col-xs-12">


			<div class="col-md-12 col-xs-12 form-group">
				<div class="panel panel-default">
					<div class="panel-heading">검색</div>
					<div class="panel-body">
						<div class="col-md-12 col-xs-12 ">
							<div class="col-md-6 col-xs-6">
								<div class="col-md-12 col-xs-12 ">
									<p class="subtitle-text">지역 선택</p>
								</div>
								<div class="form-group col-md-6 col-xs-6">
									<select class="form-control" id="regionSelect" >
										<option value="">광역시·도</option>
										<c:forEach var="region" items="${regions }">
	                                       <option value="${region.regionCode }">${region.regionName }</option>
	                                    </c:forEach>
									</select>

								</div>

								<div class="form-group col-md-6 col-xs-6">
									<select class="form-control" id="citySelect" >
										<option value="">시·군·구</option>
									</select>

								</div>
							</div>
							<div class="form-group col-md-6 col-xs-6">
								<div class="col-md-12 col-xs-12">
									<p class="subtitle-text">선택조건</p>
								</div>
								<div class="col-md-4 col-xs-4">
									<select class="form-control" id="capacitySelect">
										<option value="">적정 인원</option>
										<option value="1,4">1 ~ 4</option>
										<option value="5,8">5 ~ 8</option>
										<option value="8,99">8명 이상</option>
									</select>
								</div>
								<div class="col-md-4 col-xs-4 checkbox">
									<label for="excludeTempRegister" class="checkbox-inline">
										<input type="checkbox" id="excludeTempRegister" >가등록 제외
									</label>
								</div>
								<div class="col-md-4 col-xs-4">
									<button type="button" class="btn btn-default btn-link btn-block" id="mapSearch" >검색</button>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>

			<div class="col-md-12 col-xs-12">
				<p class="subtitle-text">지도에서 코트 선택</p>
				<hr />

			</div>

			<div class="col-md-12 col-xs-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="col-md-8 col-xs-8" style="height: 500px; background-color: gray" id="map"></div>

						<!-- 선택 코트에 따라 바뀌는 정보 -->
						<div class="col-md-4 col-xs-4">
							<div class="col-md-12 col-xs-12">
								<div class="col-md-8 col-xs-8">
									<p class="subtitle-text">코트 정보</p>
								</div>
								<div class="col-md-4 col-xs-4">
									<a href="" id="courtLink">
										<button class="btn btn-defualt btn-xs btn-link">코트페이지</button>
									</a>
								</div>

							</div>
							<div class="col-md-12 col-xs-12">
								<div class="panel panel-default">

									<div class="panel-body">
										<div class="col-md-12 col-xs-12">
											<p>
												<span class="court-info-title">코트이름 |</span>
												<span id="courtName"></span>
											</p>
										</div>
										<div class="col-md-12 col-xs-12">
											<p>
												<span class="court-info-title">적정인원 |</span>
												<span id="courtCapacity"></span>
											</p>
										</div>
										<div class="col-md-12 col-xs-12">
											<p>
												<span class="court-info-title">시설등급 |</span>
												<span id="courtRating"></span>
											</p>
										</div>
										<div class="col-md-12 col-xs-12">
											<p>
												<span class="court-info-title">만족도 |</span> 
												<span id="avgCourtSatisfaction"></span>
											</p>

										</div>

									</div>
								</div>
							</div>
						</div>

						<div class="col-md-4 col-xs-4">
							<div class="col-md-12 col-xs-12">
								<div class="col-md-12 col-xs-12">
									<p class="subtitle-text">시설 정보</p>
								</div>


							</div>
							<div class="col-md-12 col-xs-12">
								<div class="panel panel-default">

									<div class="panel-body">
										<div class="col-md-12 col-xs-12">
											<p>
												<span class="court-info-title">보유시설 |</span>
											</p>
											<p>
												<span>화장실<span id="toilet" class="fa fa-question-circle"></span></span> 
												<span>주차장<span id="parkinglot" class="fa fa-question-circle"></span></span>
												<span>샤워실<span id="shower" class="fa fa-question-circle"></span></span>
											</p>
										</div>


									</div>
								</div>
								
								<div class="col-md-12 col-xs-12">
									<p class="subtitle-text">
										찾는 코트가 없다면 ? 
									</p>
									<a href="<%=cp %>/court/register">								
										<button class="btn btn-defualt btn-block btn-link">코트 등록 GO!</button>
									</a>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>



		</div>
	</div>

</div>

<c:import url="../base/Footer.jsp"></c:import>

</body>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ab23ff0014eee816a3de71fa0333dc78&libraries=services,clusterer,drawing"></script>
<script type="text/javascript">

	$(function() 
	{
		markers = [];
		   
		// 카카오 맵 사용
		map = new kakao.maps.Map(
			document.getElementById("map"), 
			{
				center: new kakao.maps.LatLng(37.5668260054796, 126.978656785931),
				level: 3
			}
		);
		
		// ajax() 사용해 시군구 불러오기
		$("#regionSelect").on("change", function()
		{
			$.ajax({
				type: "get",
				dataType: "json",
				url: "<%=cp%>/ajax/citylist",
				data: { regionCode: $(this).val() },
				success: function(data) 
				{
					var result = "<option value=''>시·군·구</option>\n";
					
					for(var i=0; i<data.length; i++)
						result += "<option value='" + data[i].cityCode +"'>" + data[i].cityName + "</option>\n";
					
					$("#citySelect").html(result);
				},
				error: function(e){
					console.log(e.responseText);
					alert(e.responseText);
				}
			});
		});
		
		$("#mapSearch").on("click", function() 
		{
			for(var i=0; i<markers.length; i++)
				markers[i].setMap(null);
			
			// 시군구 주소 좌표로 변환해 주는 에이젝스
			$.ajax({
				type:"get",
				dataType: "json",
				url: "https://dapi.kakao.com/v2/local/search/address.json",
				data: {query: $("#regionSelect>option[value=" + $("#regionSelect").val() + "]").text() + " " + $("#citySelect>option[value=" + $("#citySelect").val() + "]").text()},
				beforeSend: function(xhr) {
					xhr.setRequestHeader("Authorization", "KakaoAK f910b6b7f9f4a0828f745a3a4014bb1d");
				},
				success: function(data) 
				{
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
							var positions = [];
		                	
							for(var i=0; i<data.length; i++)
							{
								if($("#capacitySelect").val())
								{
									var [minCap, maxCap] = $("#capacitySelect").val().split(",");
									if(data[i].minCourtCapacity < minCap || data[i].maxCourtCapacity > maxCap)
										continue;
								}
								
								if($("#excludeTempRegister").prop("checked") && data[i].courtStatus == "가등록 코트")
									continue;
								
								var tmp = data[i].mapPosition.split(",");
								positions.push({
									content: '<div>'+ data[i].courtName+'</div>', 
									latlng: new kakao.maps.LatLng(tmp[1], tmp[0])
								});
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
		                         
									console.log(courtPositionX, courtPositionY);
									
									$.ajax(
									{
										type: "get",
										dataType: "json",
										url: "<%=cp%>/ajax/court",
										data: {mapPositionX: courtPositionX, mapPositionY: courtPositionY},
										success: function(data)
										{
											/* $("#courtinfoboard").css("display", "inline"); */
											/* 코트 정보 */
											/* 코트이름 */
											$("#courtLink").attr("href", "<%=cp %>/court/" + data.courtCode);
											$("#courtName").text(data.courtName);
											/* 적정인원 최소 */
											
											/* 적정인원 최대 */
											if(parseInt(data.maxCourtCapacity) < 99)
												$("#courtCapacity").text(data.minCourtCapacity + " ~ " + data.maxCourtCapacity + " 명");
											else
												$("#courtCapacity").text(data.minCourtCapacity + " 명 이상");
											
											/* 코트 관리 등급 */
											$("#courtRating").text(data.courtRating);
											/* 만족도 */
											var star = "";
											for(var k=1; k<= data.avgCourtSatisfaction; k++)
												star += '<span class="fa fa-star"></span>';
											
											if(parseInt(data.avgCourtSatisfaction) + 0.5 <= data.avgCourtSatisfaction)
												star += '<span class="fa fa-star-half"></span>';
											if(data.avgCourtSatisfaction == "0")
												star = "정보없음";
												
											$("#avgCourtSatisfaction").html(star);
											/* 화장실  */
											$("#toilet").removeClass("fa-check-circle-o");
											$("#toilet").removeClass("fa-times-circle-o");
											$("#toilet").removeClass("fa-question-circle");
											
											if(data.toilet == "YES")
												$("#toilet").addClass("fa-check-circle-o");
											else if(data.toilet == "NO")
												$("#toilet").addClass("fa-times-circle-o");
											else
												$("#toilet").addClass("fa-question-circle");
												
											/* 샤워실 */
											$("#shower").removeClass("fa-check-circle-o");
											$("#shower").removeClass("fa-times-circle-o");
											$("#shower").removeClass("fa-question-circle");
											
											if(data.shower == "YES")
												$("#shower").addClass("fa-check-circle-o");
											else if(data.shower == "NO")
												$("#shower").addClass("fa-times-circle-o");
											else
												$("#shower").addClass("fa-question-circle");
											
											/* 주차장 */
											$("#parkinglot").removeClass("fa-check-circle-o");
											$("#parkinglot").removeClass("fa-times-circle-o");
											$("#parkinglot").removeClass("fa-question-circle");
											
											if(data.shower == "YES")
												$("#parkinglot").addClass("fa-check-circle-o");
											else if(data.shower == "NO")
												$("#parkinglot").addClass("fa-times-circle-o");
											else
												$("#parkinglot").addClass("fa-question-circle");
											
										},
										error: function(e) 
										{
											alert(e.responseText);
										}
									});
								});
							}
							
							
						},
						error: function(e)
						{
							alert(e.responseText);
						}
					});
				},
				error: function(e) 
				{
					alert(e.responseText);
				}
			});
		});
	});


	// 인포윈도우를 표시하는 클로저를 만드는 함수입니다
	function makeOverListener(map, marker, infowindow)
	{
		return function() 
		{
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
</script>
</html>