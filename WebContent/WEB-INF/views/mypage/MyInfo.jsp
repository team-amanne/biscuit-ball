<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
   request.setCharacterEncoding("UTF-8");
   String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>


<!-- 부가적인 테마 -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<title>내 정보관리</title>

<!-- 부트스트랩/제이쿼리 -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<script src="http://code.jquery.com/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>




<style type="text/css">
.form-group div 
{
   height: 50px;
}
.btn
{
   background-color: orange;
   color: white;
} 
.list-top
{
   padding-top: 20px;
}
.list-bottom
{
   padding-bottom: 20px;
}

</style>

<script type="text/javascript">

/* 도시, 시군구 선택 */


$(document).ready(function() 
{
   $("#city_select").on("change", function()
    {
       $.ajax({
          type: "get",
          dataType: "json",
          url: "<%=cp %>/ajax/citylist",
          data: {regionCode: $(this).val()},
          success: function(data) {
             var result = "<option value=''>시·군·구</option>\n";
             for(var i=0; i<data.length; i++)
                result += "<option value='" + data[i].cityCode +"'>" + data[i].cityName + "</option>\n";
             
             $("#region_select").html(result);
          },
          error: function(e){
             alert(e.responseText);
          }
       });
       
    });

   $("#region_select").change(function() {
      /* alert("확인"); */
       $("#citydata").val($("#city_select option:selected").text());
       $("#ragiondata").val($("#region_select option:selected").text());
       alert($("#region_select option:selected").text());
   });
   
   /* 생년월일 뒷부분 자르기 */
   var sub_birthday = '${user.userBirthday}';
   var birthday = sub_birthday.substring(0,10);
   $("#birthdayarea").html(birthday);
   
   /* 전화번호 */
   var sub_tel = '${user.userTel}';
   var tel2 = sub_tel.substring(4,8);
   var tel3 = sub_tel.substring(9,13);
   $("#tel2").val(tel2);
   $("#tel3").val(tel3);
   
   /* 거점지역 */
   var sub_city = '${user.userCity}';
   var city = sub_city.substring(0,2);
   var region = sub_city.substring(3,7);
   $("#usercity").html(city);
   $("#userregion").html(region);
   
   
});


</script>

</head>
<body>
   <!-- 헤더 -->
   <c:import url="../base/Header.jsp"></c:import>
   <!-- 서브메뉴 -->
   <!-- 서브메뉴는 기능별(농구하기/코트검색/크루/...)로 복사해서 만들어두고 import 할 것 -->
   <c:import url="../base/Submenu.jsp"></c:import>

   <!-- 메인 -->
   <div class="main container-fluid">
   <div class="section-title container">
      </div>
      <div class="row">
         <div class="col-md-12">
            <div class="row">
               <div class="col-md-2"></div>
               <div class="col-md-8">
                  <div class="row">
                     <p class="subtitle-text">마이페이지 > 내정보관리</p>
                     <hr>
                  </div>
                  <div class="row">
                     <div class="col-md-12 panel panel-default">
                        <div class="row">
                           <div class="col-md-12"></div>
                        </div>
                        <form class="form-horizontal">
                           <div class="row form-group list-top">
                              <div class="col-md-3 col-sm-2">
                                 <label class="control-label">이름</label>
                              </div>
                              <div class="col-md-9 col-sm-10">
                                 <p class="form-control-static">${user.userNickname}</p>
                                 
                              </div>
                           </div>
                           <div class="row form-group">
                              <div class="col-md-3 col-sm-2">
                                 <label class="control-label">성별</label>
                              </div>
                              <div class="col-md-9 col-sm-10">
                                 <p class="form-control-static">${user.userGender }</p>
                              </div>
                           </div>
                           <div class="row form-group">
                              <div class="col-md-3 col-sm-2">
                                 <label class="control-label">이메일</label>
                              </div>
                              <div class="col-md-9 col-sm-10">
                                 <p class="form-control-static">${user.userEmail }</p>
                              </div>
                           </div>
                           <div class="row form-group">
                              <div class="col-md-3 col-sm-2">
                                 <label class="control-label">생년월일</label>
                              </div>
                              <div class="col-md-9 col-sm-10">
                                 <p class="form-control-static"><span id="birthdayarea"></span></p>
                              </div>
                           </div>
                           <div class="row  form-group">
                              <div class="col-md-3 col-sm-2">
                                 <label class="control-label">내 평가점수</label>
                              </div>
                              <div class="col-md-9 col-sm-10">
                                 <p class="form-control-static">${user.selfEvaluationType }</p>
                              </div>
                           </div>
                           <div class="row form-group">
                              <div class="col-sm-3 col-xs-2">
                                 <label for="inputPassword" class="control-label">거점지역</label>
                              </div>
                             
                              <div class="col-sm-3 col-xs-4">
                              <c:set var="sub_citycode" value="${user.userCityCode }"/>
                                 <select class="form-control" id="city_select" name="city_select">
                           <c:forEach var="city" items="${regionList }">
                           <option value="${city.regionCode}"
                              <c:if test="${sub_citycode eq city.regionCode }">selected </c:if>>${city.regionName}
                           </option>
                           <c:out value="${city.regionCode}"></c:out>
                           </c:forEach>
                                 </select>
                              </div>
                              <c:out value="${sub_citycode}"></c:out>
                              
                              
                              <div class="col-sm-3 col-xs-4">
                                 <select class="form-control" id="region_select" name="region_select">
                                    <option>시군구 선택</option>
                                 </select>
                              </div>
                              <div class="col-md-2 col-xs-2"></div>
                           </div>
                           <div class="row form-group">
                              <div class="col-md-3 col-sm-2">
                                 <label for="inputPassword" class="control-label">전화번호*</label>
                              </div>
                              <div class="col-md-9 col-sm-10">
                                 <div class="row form-group">
                                    <div class="col-sm-2 col-xs-3">
                                    <c:set var="sub_tel" value="${user.userTel }"/>
                                       <select class="form-control">
                                          <option value="010"
                                             <c:if test="${fn:substring(sub_tel,0,3) eq 010 }">selected </c:if>>010
                                          </option>
                                          <option value="011"
                                             <c:if test="${fn:substring(sub_tel,0,3) eq 011 }">selected </c:if>>011
                                          </option>
                                          <option value="012"
                                             <c:if test="${fn:substring(sub_tel,0,3) eq 012 }">selected </c:if>>012
                                          </option>
                                          <option value="013"
                                             <c:if test="${fn:substring(sub_tel,0,3) eq 013 }">selected </c:if>>013
                                          </option>
                                          <option value="014"
                                             <c:if test="${fn:substring(sub_tel,0,3) eq 014 }">selected </c:if>>014
                                          </option>
                                          <option value="015"
                                            <c:if test="${fn:substring(sub_tel,0,3) eq 015 }">selected </c:if>>015
                                          </option>
                                          <option value="016"
                                             <c:if test="${fn:substring(sub_tel,0,3) eq 016 }">selected </c:if>>016
                                          </option>
                                          <option value="017"
                                             <c:if test="${fn:substring(sub_tel,0,3) eq 017 }">selected </c:if>>017
                                          </option>
                                          <option value="018"
                                             <c:if test="${fn:substring(sub_tel,0,3) eq 018 }">selected </c:if>>018
                                          </option>
                                          <option value="019"
                                             <c:if test="${fn:substring(sub_tel,0,3) eq 019 }">selected </c:if>>019
                                          </option>
                                       </select>
                                    </div>
                                    <div class="col-sm-2 col-xs-3">
                                       <input type="text" class="form-control" id="tel2">
                                    </div>
                                    <div class="col-sm-2 col-xs-3">
                                       <input type="text" class="form-control" id="tel3">
                                    </div>
                                    <div class="col-sm-3 col-xs-3">
                                       <button class="btn btn-default submit-btn" type="submit">전화번호
                                          인증</button>
                                    </div>
                                    <div class="col-sm-3"></div>
                                 </div>
                              </div>
                           </div>
                           <div class="row form-group">
                              <div class="col-sm-3">
                              </div>
                              <div class="col-md-9 col-sm-12">
                                 <div class="col-sm-6 col-xs-6">
                                    <input type="text" class="form-control" id="telcheck">
                                 </div>
                                 <div class="col-sm-2 col-xs-2">
                                    <button class="btn btn-default submit-btn" type="submit">
                                             인증</button>
                                 </div>
                                 <div class="col-sm-4 col-xs-4">
                                    <span>남은 시간 03:00</span>
                                 </div>
                              </div>
                           </div>
                           <div class="row">
                              <div class="col-md-3"></div>
                              <div class="col-md-9"></div>
                           </div>
                           <div class="row form-group">
                              <div class="col-sm-3 col-xs-3">
                                 <label for="inputPassword" class="control-label">선호
                                    포지션</label>
                              </div>
                              <div class="col-sm-6 col-xs-9">
                                 <select class="form-control" id="position" name="position">
                                    <option value="센터"
                                    <c:if test="${user.userPosition eq '센터' }">selected </c:if>>센터
                                    </option>
                                    <option value="슈팅가드"
                                    <c:if test="${user.userPosition eq '슈팅가드' }">selected </c:if>>슈팅가드
                                    </option>
                                    <option value="스몰포워드"
                                    <c:if test="${user.userPosition eq '스몰포워드' }">selected </c:if>>스몰포워드
                                    </option>
                                    <option value="파워포워드"
                                    <c:if test="${user.userPosition eq '파워포워드' }">selected </c:if>>파워포워드
                                    </option>
                                    <option value="포인트가드"
                                    <c:if test="${user.userPosition eq '포인트가드' }">selected </c:if>>포인트가드
                                    </option>
                                 </select>
                              </div>
                           </div>
                           <div class="row form-group">
                              <div class="col-sm-3 col-xs-3">
                                 <label for="inputPassword" class="control-label">SMS
                                    알림</label>
                              </div>
                              <div class="col-sm-3 col-xs-4">
                                 <input type="radio" name="sms" id="YES" value="YES" class="custom-control-input"
                                  <c:if test="${user.smsReceive eq 'YES' }">checked </c:if>>
                                 <label class="custom-control-label" for="YES">수신동의</label>
                              </div>
                              <div class="col-sm-3 col-xs-4">
                                 <input type="radio" name="sms" id="NO" value="NO" class="custom-control-input"
                                 <c:if test="${user.smsReceive eq 'NO' }">checked </c:if>>
                                 <label class="custom-control-label" for="NO">수신거부</label>
                              </div>
                              <div class="col-sm-3"></div>
                           </div>
                           <div class="row">
                              <div class="col-sm-3 col-xs-3">
                                 <label for="inputPassword" class="control-label">SNS
                                    연동</label>
                              </div>
                              <div class="col-sm-6 col-xs-9">
                                 <p><button class="btn btn-default" type="submit">연동하기</button></p>
                              </div>
                           </div>
                           <div class="row">
                              <div class="col-md-3"></div>
                              <div class="col-md-9"></div>
                           </div>
                           <div class="row">
                              <div class="col-md-12"></div>
                           </div>
                           <div class="row">
                              <div class="col-md-3"></div>
                              <div class="col-md-6" style="text-align: center;">                                 
                                 <button type="submit" class="btn btn-default submit-btn btn-block">등록하기</button>
                              </div>
                              <div class="col-md-3"></div>
                           </div>
                           <div class="row list-top">
                              <div class="col-md-12"></div>
                           </div>
                        </form>
                     </div>
                     <div class="row list-bottom">
                        <div class="col-md-12" style="text-align: center;">
                           <button class="btn btn-default" type="submit">회원탈퇴</button>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-md-2"></div>
            </div>
         </div>
      </div>
   </div>

   <c:import url="../base/Footer.jsp"></c:import>

</body>
</html>