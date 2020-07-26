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
<title>빠른농구</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery.min.js"></script>
<style type="text/css">
.form-head {
	font-weight: bold;
}

.content {
	margin-top: 100px;
}
</style>


</head>
<!-- playBasketball_speed 팝업창  -->
<div class="col-md-6 content">
	<div class="row">
		<div class="col-md-6 subject-parti">
			<h4 class="form-head">코트 정보</h4>
	<%=request.getParameter("regionSelect") %>
	<%=request.getParameter("citySelect") %>		</div>	
	</div>
	
	<div class="row panel panel-default">
		<div class="col-md-12 panel-body">
			<div class="row">
				<div class="col-md-8 map-container" id="map" style="height: 300px;"></div>

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
							</div> <span id="minCourtCapacity"></span>~<span id="maxCourtCapacity"></span>
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
							</div> <span class="star-score" id="avgCourtSatisfaction"> </span>
						</li>
					</ul>
					<h4>코트 시설</h4>
					<ul class="list-group">
						<li class="list-group-item">
							<div class="col-md-7 courtInfo">
								<span class="">화장실</span>
							</div> <span class="" id="toilet"></span>&nbsp;&nbsp;&nbsp;&nbsp; <span
							class="" id="toiletConfidence"></span>
						</li>
						<li class="list-group-item">
							<div class="col-md-7 courtInfo">
								<span class="">샤워실</span>
							</div> <span class="" id="shower"></span>&nbsp;&nbsp;&nbsp;&nbsp; <span
							class="" id="showerConfidence"></span>
						</li>
						<li class="list-group-item">
							<div class="col-md-7 courtInfo">
								<span class="">주차장</span>&nbsp;&nbsp;&nbsp;&nbsp;
							</div> <span class="" id="parkinglot"></span>&nbsp;&nbsp;&nbsp;&nbsp; <span
							class="" id="parkinglotConfidence"></span>
						</li>
						<li>
							<button type="button" id="btnCourt">선택완료</button>
							<input type="hidden" id="region-name" name="region-name" value="<%=request.getParameter("regionSelect") %>">
							<input type="hidden" id="city-name" name="city-name" value="<%=request.getParameter("citySelect") %>">
							<input type="hidden" id="city-code" name="city-code" value="<%=request.getParameter("cityCode") %>">
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 카카오 맵  -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ab23ff0014eee816a3de71fa0333dc78&libraries=services,clusterer,drawing"></script>
<script type="text/javascript">

$(function() {
			markers = [];
			// 카카오 맵 사용
			map = new kakao.maps.Map(document.getElementById("map"), 
					{
				center: new kakao.maps.LatLng(37.5668260054796, 126.978656785931),
				level: 3
			});
			
			/* marker = new kakao.maps.Marker({ center: map.getCenter() });
			marker.setMap(map); */
			
				// 시군구 주소 좌표로 변환해 주는 에이젝스
				$.ajax({
			    	type:"get",
			    	dataType: "json",
			    	url: "https://dapi.kakao.com/v2/local/search/address.json",
			    	data: {query: "<%=request.getParameter("regionSelect") %>" + " " + "<%=request.getParameter("citySelect") %>"},
			    	beforeSend: function(xhr) {
			    		xhr.setRequestHeader("Authorization", "KakaoAK f910b6b7f9f4a0828f745a3a4014bb1d");
			    	},
			    	success: function(data) {
			    		var lng = data.documents[0].x;
			    		var lat = data.documents[0].y;
			    		map.setCenter(new kakao.maps.LatLng(lat, lng));
			    		/* marker.setPosition(map.getCenter()); */
			    		alert(<%=request.getParameter("cityCode") %>);
			    		// 특정 시군구 코트 리스트 불러오기 + 마커 찍는 에이젝스
			    		$.ajax({
				            type: "get",
				            dataType: "json",
				            url: "<%=cp%>/ajax/courtlist",
				            data: {cityCode: "<%=request.getParameter("cityCode") %>"},
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
			
			
			
			$("#btnCourt").click(function() {
				$("#regionSelect", parent.opener.document).val($("#region-name").val());
				$("#citySelect", parent.opener.document).val($("#city-name").val());
				$("#courtSelect", parent.opener.document).val($('#courtName').text()); 
				window.self.close();
				
			});
		});


</script>
</html>