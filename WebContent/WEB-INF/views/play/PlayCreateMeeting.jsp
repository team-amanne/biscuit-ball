<%@page import="java.util.Calendar"%>
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
<title>BiscuitBail > 모임개설</title>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=cp%>/css/board.css" />
<link rel="stylesheet" href="<%=cp%>/css/default.css" />
<script type="text/javascript"
   src="https://code.jquery.com/jquery.min.js"></script>
<style type="text/css">
.form-head {
   font-weight: bold;
}

.subject {
   margin-bottom: 30px;
}

h4 {
   font-weight: bold;
}

h3 {
   font-weight: bold;
}

select {
   font-size: 10pt;
}

.radio {
   vertical-align: baseline;
   padding-bottom: 4px;
}

#total_playTime {
   margin-left: 65%;
   color: red;
   font-size: 10pt;
}

.err {
   color: red;
   font-size: 10pt;
   display: none;
}

.age {
   padding-right: 0px;
   padding-left: 0px;
}

.middle {
   padding-right: 5px;
   padding-top: 5px;
}
</style>

<!-- 달력(datepicker) -->
<link rel="stylesheet"
   href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
   type="text/css" />
<script
   src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<script type="text/javascript">
   $(function()
   {
      var tier = "${userDto.tierName}";
      var now = new Date();
      
       var year= now.getFullYear();
       var mon = (now.getMonth()+1)>9 ? ''+(now.getMonth()+1) : '0'+(now.getMonth()+1);
       var day = now.getDate()>9 ? ''+now.getDate() : '0'+now.getDate();
       var sysdate = now.getDate();
       
       
       $("input:radio[name='meetingTypeCode']:radio[value='" + $("#select1").val() +"']").prop('checked', true);
       $("input:radio[name='ballExistOrNot']:radio[value='" + $("#select2").val() +"']").prop('checked', true); 
   		
       
       var today =  year + '-' + mon + '-' + day;
       $("#dateselect1").val(today);
       $("#dateselect2").val(today);
       
       var tier = "${userDto.tierName}";
      	var userBirthday = "${userDto.userBirthday}".substring(0,4);
      	var age = year - parseInt(userBirthday)+1;
      	
      	
      
      
      
      

       for(var i=0; i<=Math.floor(age/10)*10; i=i+10) {        
           var minage;
           minage += "<option value="+i+">"+i+"대</option>"
       }
       $("#minage-check").append(minage);

       for(var i=Math.floor(age/10)*10; i<=100; i=i+10) {        
           var maxage;
           maxage += "<option value="+i+">"+i+"대</option>"
       }
       $("#maxage-check").append(maxage);
   
            $('#startTime').change(function() 
            {
               var meetDate = $('#dateselect1').val() + $('#startTime').val();
               $('#meetingDate').val(meetDate);
            });
            
             //모임 종료
             $('#endTime').change(function() 
               {
                var meetDate = $('#dateselect1').val() + " " + $('#startTime option:selected').val();
                   $('#meetingDate').val(meetDate);
                var meetEndDate = $('#dateselect1').val() + " " + $('#endTime option:selected').val();
                   $('#meetingEndDate').val(meetEndDate);
            })
            
             //모집 종료
             $('#closeTime').change(function() 
               {
                var meetCloseDate = $('#dateselect2').val() + " " + $('#closeTime option:selected').val();
                $('#meetingCloseDate').val(meetCloseDate);
                
            })
      $("#meeting-create").click(function()
      { 
         $("#createMeet").submit();
      });               
   });


      

</script>


</head>

<body>

   <!-- 헤더 -->
   <c:import url="../base/Header.jsp"></c:import>
   <c:import url="../base/PlaySubmenu.jsp?active=mode"></c:import>

   <!------------------------------------------ 바디 ------------------------------------------------>
   <div class="container-fluid main">
      <!------------------------------------------ 섹션 ---------------------------------------->
      <div class="section-title container">
         <h5></h5>
         <hr />
      </div>

      <!------------------------------------------ 컨텐츠 영역 --------------------------------->
      <div class="row">
         <div class="col-md-3"></div>
         <form action="<%=cp%>/play/meeting/createcomplete"
            class="createMeeting-form" id="createMeet">
            <div class="col-md-6">
               <div class="row">

                  <!--------------------------------모임개설 입력 패널 ------------------------->
                  <h3>모임 개설 입력 사항</h3>
                  <br>
                  <div class="panel panel-default">
                     <div class="panel-body">
                        <div class="input-group input-group-lg subject">
                           <span class="input-group-addon">모임 제목</span>                            
                           <input type="text"
                              class="form-control" id="meetingSubject" name="meetingSubject">
                           <span class="err">*모임 제목을 입력해주세요</span>
                        </div>
                        <div id="subjectCheck"></div>
                        <h4>모임 정보 입력</h4>
                        <div class="row">
                           <div class="col-md-4">
                              <div class="panel panel-default">
                                 <div class="panel-heading">경기/일반</div>
                                 <div class="panel-body playtype">
                                    <label class="radio-inline radio"> 
                                       <input type="radio" name="meetingTypeCode" id="inlineRadio1"
                                       value="ZL01"> 경기
                                    </label> <label class="radio-inline radio"> <input
                                       type="radio" name="meetingTypeCode" id="inlineRadio2"
                                       value="ZL02"> 일반
                                    </label>
                                    <input type="hidden" id="select1" value="<%=request.getParameter("meetingType") %>">

                                 </div>
                                 
                              </div>
                              
                           </div>
                           <div id="meetingTypeCodeCheck"></div>
                           
                           <div class="col-md-4">
                              <div class="panel panel-default">
                                 <div class="panel-heading">농구공 소유여부</div>
                                 <div class="panel-body playtype">
                                    <label class="radio-inline radio"> <input
                                       type="radio" name="ballExistOrNot" id="inlineRadio1"
                                       value="ZU01"> yes
                                    </label> <label class="radio-inline radio"> <input
                                       type="radio" name="ballExistOrNot" id="inlineRadio2"
                                       value="ZU02"> no
                                    </label>
                                    <input type="hidden" id="select2" value="<%=request.getParameter("ballExistOrNot") %>">

                                 </div>
                              </div>
                           </div>
                           
                           <div class="col-md-4">
                              <div class="panel panel-default">
                                 <div class="panel-heading">빠른농구 참가 여부</div>
                                 <div class="panel-body playtype">
                                    <label class="radio-inline radio"> <input
                                       type="radio" name="quickPlayOrNot" id="inlineRadio1"
                                       value="ZU01" checked="checked"> 찬성</label>

                                 </div>
                              </div>
                           </div>
                            <div class="col-md-6">
                           <div class="panel panel-default">
                           
                              <div class="panel-heading">모임 지역</div>
                              <div class="panel-body">
                                <div class="col-sm-4">
                                   <input type="text" name="regionSelect" id="regionSelect" class="form-control" value="<%=request.getParameter("regiondata") %>" disabled="disabled">
                           <input type="hidden" name="regionCode" id="regionCode" value="<%=request.getParameter("region_select") %>">                                       
                        </div>
                        <div class="col-sm-4">   
                           <input type="text" name="citySelect" id="citySelect" class="form-control" value="<%=request.getParameter("citydata") %>" disabled="disabled">
                           <input type="hidden" name="cityCode" id="cityCode" value="<%=request.getParameter("city_select") %>">                        
                        </div>
                        
                         <div class="col-md-4 btn-mapSearch">
                                 <button type="button" class="btn btn-default btn-md btn-block"
                                    id="mapSearch">
                                    지도검색 <span class="glyphicon glyphicon-map-marker"></span>
                                 </button>
                              </div> 
                                 <span class="err">*지역을 선택해주세요.</span>
                              </div>
                           </div>
                        </div>

                           <div class="col-md-4">
                              <div class="panel panel-default">
                                 <div class="panel-heading">모집 인원수</div>
                                 <div class="panel-body">
                                    <div class="col-md-5">
                                       <select name="meetingPeopleNumber" id="citySelect"
                                          class="form-control">
                                          <c:forEach var="i" begin="2" end="10">
                                             <option value=${ i}>${ i} 명</option>
                                          </c:forEach>
                                       </select>
                                    </div>
                                 </div>
                              </div>
                           </div>


                           <div class="col-md-12" id="mapArea">
                              <div class="panel panel-default">

                                 <div class="panel-heading">코트 선택</div>
                                 <div class="panel-body">
                                    <div class="col-md-8">
                                       <div class="col-md-8" style="width: 100%; height: 400px;"
                                          id="map">
                                          <!-- 지도영역 -->
                                       </div>
                                    </div>

                                    <!-- 마커 클릭 시 등장하는 코트 정보  -->
                                    <div class="col-md-4" id="courtInfo" style="display: none;">
                                       <h4>코트 정보</h4>
                                       <ul class="list-group">
                                          <li class="list-group-item" style="height: 50px">
                                             <div class="col-md-7 courtInfo">
                                                <span class="">코트이름</span>
                                             </div>
                                             <div class="col-md-5 courtInfo">
                                             <p id="courtName"></p>
                                             </div>
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



                                    </div>
                                 </div>
                              </div>
                           </div>

                           <div class="row">
                              <div class="col-md-12">
                                 <div class="col-md-12">
                                    <div class="panel panel-default">
                                       <div class="panel-heading">
                                          모임 시간 <span id="total_playTime">*예상 플레이 시간 : <span>n
                                                시간</span></span>
                                       </div>
                                       <div class="panel-body">

                                          <div class="col-md-4">
                                             <div class="input-group">
                                                <input type="text" id="dateselect1" class="form-control" disabled="disabled">
                                             </div>
                                          </div>

                                          <div class="col-md-4">
                                             <div class="input-group">
                                                <span class="input-group-addon">시작 시간</span>
                                                <select class="form-control" id="startTime" name="meetTimeSelect">
                                                   <c:forEach var="i" begin="0" end="23">
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
                                          </div>

                                          <div class="col-md-4">
                                             <div class="input-group">
                                                <span class="input-group-addon">끝 시간</span> <select
                                                   class="form-control" id="endTime" name="meetEndTimeSelect">
                                                   <c:forEach var="i" begin="0" end="23">
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
                                          </div>
                                       </div>
                                    </div>
                                    <input type="hidden"  id="meetingDate" name="meetingDate">
                                    <input type="hidden"  id="meetingEndDate" name="meetingEndDate">
                                    <div class="panel panel-default">
                                       <div class="panel-heading">모집 종료 시간</div>
                                       <div class="panel-body">

                                          <div class="col-md-4">
                                             <div class="input-group">

                                                <input type="text" id="dateselect2" class="form-control"  disabled="disabled">
                                             </div>
                                          </div>
                                          <div class="col-md-3">
                                             <select class="form-control" id="closeTime" name="meetCloseTimeSelect">
                                                <c:forEach var="i" begin="0" end="23">
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
                                          <div class="col-md-5">
                                             <span id="err">*모집 종료 시간은 모임 시작 3시간 전 까지 설정 가능.</span>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <input type="hidden"  id="meetingCloseDate" name="meetingCloseDate">
                           <div class="row">
                              <div class="col-md-12">
                                 <div class="col-md-3">
                                    <div class="panel panel-default">
                                       <div class="panel-heading">최소 실력</div>
                                       <div class="panel-body">
                                          <select name="ablLimitCode" id="tier-check"
                                             class="form-control">
                                             <option value="ZB05">1LV</option>
                                             <option value="ZB09">2LV</option>
                                             <option value="ZB12">3LV</option>
                                             <option value="ZB14">4LV</option>
                                             <option value="ZB15">5LV</option>
                                          </select>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="col-md-5">
                                    <div class="panel panel-default">
                                       <div class="panel-heading">나이 제한</div>
                                       <div class="panel-body">
                                          <div class="col-md-3 age">
                                             <select name="minage-check" id="minage-check"
                                                class="form-control">

                                             </select>
                                          </div>
                                          <div class="col-md-1">
                                             <p class="middle">~</p>
                                          </div>
                                          <div class="col-md-3 age">
                                             <select name="maxage-check" id="maxage-check"
                                                class="form-control">

                                             </select>
                                          </div>
                                          <div class="col-md-4">
                                             <label class="radio-inline radio"> <input
                                                type="radio" name="allAge" id="inlineRadio2" value="0">
                                                누구나
                                             </label>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="row">
                              <div class="col-md-12">
                                 <div class="col-md-12">
                                    <h4>공지사항</h4>
                                    <div class="panel panel-default">
                                       <div class="panel-body">
                                          <textarea class="form-control" id="notice"
                                             name="meetingNotice"></textarea>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="row">
                              <div class="col-md-12">
                                 <div class="row">
                                    <div class="col-md-4"></div>
                                    <div class="col-md-4">
                                       <div class="col-md-6">
                                          <button type="button" class="btn btn-default btn-lg btn-block"
                                             id="meeting-create" name="meeting-create">개설</button>
                                       </div>
                                       <div class="col-md-6">
                                          <button class="btn btn-default btn-lg btn-block" type="button" onclick="location.href='<%=cp %>/play/mode/speed'"> 
                                             취소</button>
                                       </div>
                                    </div>
                                    <div class="col-md-4"></div>
                                    <input type="hidden" id="courtRegistrationCode" name="courtRegistrationCode">
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-3"></div>
               </div>
            </div>
         </form>

      </div>
   </div>
   <!----------------------------바디 영역 끝 ------------------------->
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
                         data: {query:  $("#regionSelect").val() + " " + $("#citySelect").val()},
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
                                 data: {cityCode: $("#cityCode").val()},
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
                                          
                                          $("#courtInfo").css("display", "inline");
                                          
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
                                                    $("#courtRegistrationCode").val(data.courtCode);
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
                                                 //alert(e.responseText);
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
            
            
             
             // 실력 조건, 나이 조건 자바스크립트
             
             var tier = "${userDto.tierName}";
            var userBirthday = "${userDto.userBirthday}".substring(0,4);
            var age = year - parseInt(userBirthday)+1;
            
            /*
            for(var i=parseInt(tier); i<=5; i=i+1) {        
                 var html;
                 html += "<option value="+userBirthday+">LV."+i+"</option>"
             }
             $("#tier-check").append(html);
             */
             
             for(var i=0; i<=Math.floor(age/10)*10; i=i+10) {        
                 var minage;
                 minage += "<option value="+i+">"+i+"대</option>"
             }
             $("#minage-check").append(minage);

             for(var i=Math.floor(age/10)*10; i<=100; i=i+10) {        
                 var maxage;
                 maxage += "<option value="+i+">"+i+"대</option>"
             }
             $("#maxage-check").append(maxage);
             
             $("#mapSearch").trigger("click");
            
            
          
      
             /* $('#meeting-create').submit(); */
            
         });
         
         /*
         function check() {
            
            var startTime = $('#startTime option:selected').val();
            var endTime = $('#endTime option:selected').val();
            var closeTime = $('#closeTime option:selected').val();
            startTime = parseInt(startTime.replace(":00", ""));
            endTime = parseInt(endTime.replace(":00", ""));
            closeTime = parseInt(closeTime.replace(":00", ""));
            
            var playTime = startTime-closeTime;
            
            // alert(startTime + "/" + endTime + "/" + closeTime);
            // return false;
            
            
              
            if($("#meetingSubject").val() == "")
              {
                 $("#subjectCheck").text("입력 항목이 누락되었습니다.");
                 $("#subjectCheck").css("color", "red");
                 $("#meetingSubject").focus();
                 return false;  
              }
              else
              {
                 $("#subjectCheck").text("");  
              }
            if($(':radio[name="meetingTypeCode"]:checked').length < 1 
                   || $(':radio[name="quickPlayOrNot"]:checked').length < 1
                   || $(':radio[name="ballExistOrNot"]:checked').length < 1)
             {
                alert('카테고리를 선택해주세요');
                return false;  
            }
             
             if($('#dateselect1').val() == "" || $('#dateselect2').val() == "")
             {
                alert("날짜를 입력하세요");
                return false;
             }
             if($('#dateselect1').val() == $('#dateselect2').val() && playTime < 3 || endTime<startTime)
             {
                alert("시간 조건에 맞지않습니다 다시 입력해주세요");
                return false;
             }
             
         }*/
   </script>

</body>
</html>