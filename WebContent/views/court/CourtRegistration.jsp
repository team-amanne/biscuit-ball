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
<title>코트 > 코트 등록</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" href="<%=cp%>/css/board.css" />
<style type="text/css">
.courtinfo-title {
	font-size: 12pt;
}

.text-orange {
	font-size: 12pt;
	font-weight: bold;
	padding-top: 1%;
}

.select-map {
	background-color: gray;
	width: 500px;
	height: 400px;
	margin-top: 2%;
	margin-left: 2%;
}

.court-address {
	margin-top: 2%;
}

.filebox input[type=file] {
	position: absolute;
    width: 0;
    height: 0;
    padding: 0;
    overflow: hidden;
    border: 0;
}
</style>
</head>
<body>

<c:import url="../base/Header.jsp?active=court"></c:import>
<c:import url="../base/CourtSubmenu.jsp?active=register"></c:import>

<div class="container-fuild main">
	<div class="section-title container">
		<h5>코트 > 코트 등록</h5>
		<hr />
	</div>
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<div class="col-md-12 col-xs-12">
			<p class="title-text">코트 등록</p>
			<hr />
		</div>

		<div class="col-md-12 col-xs-12">
			<p class="subtitle-text">기본 코트 정보 입력</p>
		</div>
		<form id="courtRegisterForm" method="post" enctype="multipart/form-data" class="col-md-12 col-xs-12">
			<div class="panel panel-default">
				<div class="panel-body">
					<p class="courtinfo-title">지역 정보</p>
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="panel panel-default">
								<div class="panel-body">
									<div class="col-md-2 col-xs-2">
										<span class="text-orange">지역 선택 &nbsp;&nbsp;&nbsp;&nbsp;|</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<select class="form-control" name="regionCode" id="regionSelect">
											<option value="">광역시·도</option>
											<c:forEach var="region" items="${regions }">
												<option value="${region.regionCode }">${region.regionName }</option>
											</c:forEach>
										</select>
									</div>
									<div class="col-md-2 col-xs-2">
										<select class="form-control" name="cityCode" id="citySelect">
											<option value="">시·군·구</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-md-12 col-xs12">
								<div class="col-md-7 col-xs-7">
									<span class="text-orange">지도 선택 &nbsp;&nbsp;&nbsp;&nbsp;|</span>
								</div>
								<div class="col-md-5 col-xs-5">
									&nbsp;&nbsp;&nbsp;<span class="text-orange">코트 정보 입력 &nbsp;&nbsp;&nbsp;&nbsp;|</span>
								</div>
							</div>

							<div class="col-md-12 col-xs12">
								<div class="col-md-8  col-xs-8 select-map" id="map"></div>
								<div class="col-md-4  col-xs-4 court-address">
									<div class="panel panel-default">
										<div class="panel-body">
											<div class="col-md-12 col-xs-12">
												<span class="text-orange">주소 </span>
											</div>
											<div class="col-md-12 col-xs-12" style="height: 34px;">
												<input type="hidden" name="mapPositionX" id="positionX" value="" />
												<input type="hidden" name="mapPositionY" id="positionY" value="" />
												<span id="address"></span>
											</div>
										</div>
									</div>

									<div class="panel panel-default">
										<div class="panel-body">
											<div class="col-md-12 col-xs-12">
												<span class="text-orange">코트 이름 </span>
											</div>
											<div class="col-md-12 col-xs-12">
												<input type="text" class="form-control" name="courtName" id="courtName">
											</div>
										</div>
									</div>

									<div class="panel panel-default">
										<div class="panel-body">
											<div class="col-md-12 col-xs-12">
												<span class="text-orange">적정 인원수 </span>
											</div>
											<div class="col-md-12 col-xs-12">
												<select class="form-control" name="courtCapacityCode" id="courtCapacity">
													<option value="">적정 인원수</option>
													<option value="ZH01">1~4</option>
													<option value="ZH02">5~7</option>
													<option value="ZH03">8 이상</option>
												</select>
											</div>
										</div>
									</div>


								</div>
							</div>

						</div>
					</div>


					<div class="panel panel-default">
						<div class="panel-body">
							<div class="col-md-12 col-xs-12">
								<span class="text-orange"> 코트 사진 등록 </span>
							</div>

							<!-- 사진 -->
<!-- 
							<div class="col-md-6 col-xs-6">

								<div class="col-md-4">
									<img src="" alt="사진1" />
								</div>
								<div class="col-md-4">
									<img src="" alt="사진2" />
								</div>
								<div class="col-md-4">
									<img src="" alt="사진3" />
								</div>
							</div>
 -->
							<!-- <div class="col-md-6 col-xs-6"> -->
							<div class="col-md-12 col-xs-12">
								<ul class="list-group">
									<li class="list-group-item board-body">
										<div class="row filebox">
											<input type="file" name="courtImg1" id="file1" />
											<!-- <div class="col-sm-6 col-xs-6"> -->
											<div class="col-sm-8 col-xs-8">
												<span id="file1-uploadname"></span>
											</div>
											<!-- <div class="col-md-6 col-xs-6"> -->
											<div class="col-md-4 col-xs-4">
												<label for="file1" class="btn btn-default btn-link btn-block btn-sm">사진 첨부</label>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row filebox">
											<input type="file" name="courtImg2" id="file2" />
											<!-- <div class="col-sm-6 col-xs-6"> -->
											<div class="col-sm-8 col-xs-8">
												<span id="file2-uploadname"></span>
											</div>
											<!-- <div class="col-md-6 col-xs-6"> -->
											<div class="col-md-4 col-xs-4">
												<label for="file2" class="btn btn-default btn-link btn-block btn-sm">사진 첨부</label>
											</div>
										</div>
									</li>
									<li class="list-group-item board-body">
										<div class="row filebox">
											<input type="file" name="courtImg3" id="file3" />
											<!-- <div class="col-sm-6 col-xs-6"> -->
											<div class="col-sm-8 col-xs-8">
												<span id="file3-uploadname"></span>
											</div>
											<!-- <div class="col-md-6 col-xs-6"> -->
											<div class="col-md-4 col-xs-4">
												<label for="file3" class="btn btn-default btn-link btn-block btn-sm">사진 첨부</label>
											</div>
										</div>
									</li>
								</ul>
							</div>

						</div>
					</div>

					<div class="col-md-3 col-xs-3"></div>
					<div class="col-md-3 col-xs-3">
						<button type="button" class="btn btn-submit btn-block btn-default" id="btnSubmit">코트 등록</button>
					</div>
					<div class="col-md-3 col-xs-3">
						<button type="button" class="btn btn-block btn-default" id="btnCancel">취 소</button>
					</div>
					<div class="col-md-3 col-xs-3"></div>

				</div>
			</div>
		</form>

	</div>
</div>
<br style="clear: both;" />
<c:import url="../base/Footer.jsp"></c:import>

<script type="text/javascript" src="https://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=71d2a00bcbaa2c09a70387dda258c248&libraries=services,clusterer,drawing"></script>
<script type="text/javascript">
	
	$(function()
	{
		/* 지도 설정 */
		map = new kakao.maps.Map(document.getElementById("map"), {
			center: new kakao.maps.LatLng(37.556552, 126.919516),
			level: 3
		});
		
		marker = new kakao.maps.Marker({ center: map.getCenter() });
		marker.setMap(map);
		
		$("#regionSelect").on("change", function() {
			$.ajax({
				type: "get",
				dataType: "json",
				url: "<%=cp %>/ajax/citylist",
				data: {regionCode: $(this).val()},
				success: function(data) {
					var result = "<option value=''>시·군·구</option>\n";
					for(var i=0; i<data.length; i++)
						result += "<option value='" + data[i].cityCode +"'>" + data[i].cityName + "</option>\n";
					
					$("#citySelect").html(result);
					$("#positionX").val("");
					$("#positionY").val("");
					$("#address").text("");
				},
				error: function(e){
					alert(e.responseText);
				}
			});
			
			$.ajax({
		    	type:"get",
		    	dataType: "json",
		    	url: "https://dapi.kakao.com/v2/local/search/address.json",
		    	data: {query: $("#regionSelect>option[value=" + $(this).val() + "]").text()},
		    	beforeSend: function(xhr) {
		    		xhr.setRequestHeader("Authorization", "KakaoAK e6e5dc704ed2b833d6f7a164f12f28b3");
		    	},
		    	success: function(data) {
		    		var lng = data.documents[0].x;
		    		var lat = data.documents[0].y;
		    		map.setCenter(new kakao.maps.LatLng(lat, lng));
		    		marker.setPosition(map.getCenter());
		    	},
		    	error: function(e) {
		    		alert(e.responseText);
		    	}
		    });
			
			
		});
		
		$("#citySelect").on("change", function() {
			$.ajax({
		    	type:"get",
		    	dataType: "json",
		    	url: "https://dapi.kakao.com/v2/local/search/address.json",
		    	data: {query: $("#regionSelect>option[value=" + $("#regionSelect").val() + "]").text() + " " + $("#citySelect>option[value=" + $(this).val() + "]").text()},
		    	beforeSend: function(xhr) {
		    		xhr.setRequestHeader("Authorization", "KakaoAK e6e5dc704ed2b833d6f7a164f12f28b3");
		    	},
		    	success: function(data) {
		    		var lng = data.documents[0].x;
		    		var lat = data.documents[0].y;
		    		map.setCenter(new kakao.maps.LatLng(lat, lng));
		    		marker.setPosition(map.getCenter());
		    		$("#positionX").val("");
					$("#positionY").val("");
					$("#address").text("");
		    	},
		    	error: function(e) {
		    		alert(e.responseText);
		    	}
		    });
		});
		
		kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
		    
		    var latlng = mouseEvent.latLng;
		    $("#positionX").val(latlng.getLng());
		    $("#positionY").val(latlng.getLat());
		    marker.setPosition(latlng);
		    
		    $.ajax({
		    	type:"get",
		    	dataType: "json",
		    	url: "https://dapi.kakao.com/v2/local/geo/coord2address.json",
		    	data: {x: latlng.getLng(), y:latlng.getLat()},
		    	beforeSend: function(xhr) {
		    		xhr.setRequestHeader("Authorization", "KakaoAK e6e5dc704ed2b833d6f7a164f12f28b3");
		    	},
		    	success: function(data) {
		    		var address = data.documents[0].address
		    		var addr1 = address.region_1depth_name;
		    		var addr2 = address.region_2depth_name.split(" ")[0];
		    		
		    		$("#regionSelect").children().map(function (ri, re) {
		    			
		    			if($(re).text().trim() == addr1.trim()) {
		    				$(re).prop("selected", true);
		    				
		    				$.ajax({
								type: "get",
								dataType: "json",
								url: "<%=cp %>/ajax/citylist",
								data: {regionCode: $(this).val()},
								success: function(data) {
									var result = "<option value=''>시·군·구</option>\n";
									for(var i=0; i<data.length; i++) {
										result += "<option value='" + data[i].cityCode +"'";
										if(data[i].cityName == addr2)
											result += " selected "
										result += ">" + data[i].cityName + "</option>\n";
									}
									$("#citySelect").html(result);
								},
								error: function(e){
									alert(e.responseText);
								}
							});
		    				
		    			}
		    			else 
		    				$(re).prop("selected", false);
		    		});
		    		
		    		$("#address").text(address.address_name);
		    		
		    	},
		    	error: function(e) {
		    		alert(e.responseText);
		    	}
		    });
		    
		});
		
		/* 파일 설정 */
		$(".filebox input[type=file]").on("change", function() {
			var fullName = $(this).val().split("\\");
			var fileName = fullName[fullName.length-1];
			$("#" + $(this).attr("id") + "-uploadname").text(fileName);
		});
		
		/* 버튼 설정 */
		$("#btnSubmit").click(function() {
			if(!$("#citySelect").val()) {
				alert("지역을 선택하세요.");
				return;
			}
			
			if(!$("#courtName").val()) {
				alert("코트 이름을 입력하세요.");
				return;
			}
			
			if(!$("#courtCapacity").val()) {
				alert("적정 코트 사용 인원수를 선택하세요.");
				return;
			}
			
			if(!$("#file1").val() || !$("#file2").val() || !$("#file3").val()) {
				alert("코트 사진을 등록하세요.");
				return;
			}
			
			if(!/.(png|gif|jpg|jpeg)$/.test($("#file1").val()) 
					|| !/.(png|gif|jpg|jpeg)$/.test($("#file2").val()) 
					|| !/.(png|gif|jpg|jpeg)$/.test($("#file3").val())) {
				alert("이미지 파일만 등록할 수 있습니다.");
				return;
			}
			
			if($("#file1").val() == $("#file2").val() || $("#file1").val() == $("#file3").val() || $("#file2").val() == $("#file3").val()) {
				alert("같은 코트 사진을 등록할 수 없습니다.")
				return;
			}
			
			$("#courtRegisterForm").attr("action", "<%=cp %>/court/registerdo");
			$("#courtRegisterForm").submit();
		});
		
		$("#btnCancel").click(function() {
			history.back();
		});
		
		
	});
</script>
</body>
</html>