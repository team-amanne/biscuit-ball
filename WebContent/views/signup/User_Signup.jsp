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
<title>BiscuitBail > 회원가입</title>
<style type="text/css">

/* flex 용 */
.flex {
   display: flex;
   margin-left: auto;
   width: 80%;
}

/* 라벨명 */
.f_size {
   font-size: 15pt;
   font-weight: bold;
   margin-top: 5px;
}

/* 여자, 남자 */
#female, #male {
   height: 20px;
   width: 20px;
}

/* 라디오버튼 크기 */
.radio_button {
   font-size: 15pt;
}

.select, .position, .tels
{
   padding-left: 4px !important;
   margin-left: 0px !important;
}

.tel1, .tel2, .tel3
{
   width: 107px !important;
}

.space
{
   margin: 5px;
}

.button
{
   margin-left: 17%;
}


</style>





<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
   href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=cp%>/css/default.css" />
<link rel="stylesheet" href="<%=cp%>/css/board.css" />
<script type="text/javascript"
   src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
   href="css/bootstrap-theme.min.css">

<!-- 달력(datepicker) -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
   href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style>
/*datepicer 버튼 롤오버 시 손가락 모양 표시*/
.ui-datepicker-trigger {
   cursor: pointer;
}
/*datepicer input 롤오버 시 손가락 모양 표시*/
.hasDatepicker {
   cursor: pointer;
}

.sign .row {
   height: 50px;
}
</style>


<script type="text/javascript">
      $(function() {       
 // 이메일 유효성검사
         $("#email_certify").click( function() {
             var email = $('#userEmail').val();
             
             //입력여부
             if($("#userEmail").val() == "")
              {
                 $("#id_check").text("입력 항목이 누락되었습니다.");
                 $("#id_check").css("color", "red");
                 $("#userEmail").focus();
                 
                 return false;  
              }
              else
              {
                 $("#id_check").text(""); 
                 
                 // 중복여부
                 $.ajax({
                 url : '<%=cp%>/ajax/check/email?email='+ email,
                     type : 'get',
                     success : function(data) {
                     console.log("1 = 중복o / 0 = 중복x : " + data);
                 if (data == 1) 
                     {
                        // 1 : 아이디가 중복되는 문구
                        $("#id_check").text("사용중인 이메일입니다");
                        $("#id_check").css("color", "red");
                        $('#userEmail').val('');
                        $('#userEmail').focus();
                       
                        
                     } 
                 else 
                     {
                         $("#id_check").text("사용가능한 이메일입니다");
                         $("#id_check").css("color", "green");
                         
                     }
                     },
                     error : function() {
                     console.log("실패");
                     }
                  }); 
                 return false;
              }
        });

         
         
         // 비밀번호 일치여부
          $("#password2").focusout(function() {
            $(".pwd-fail").css("display","none");
            $(".pwd-sucess").css("display","none");
          var pwd1 = $("#userPassword").val();
            var pwd2 = $("#password2").val();
     
            if ( pwd1 != '' && pwd2 == '' ) {
                null;
            } else if (pwd1 != "" || pwd2 != "") {
                if (pwd1 == pwd2) {
                    $(".pwd-sucess").css("display","inline");
                } else {
                   $(".pwd-fail").css("display","inline");
                   $("#password2").focus();
                }
            }
        });
         
         // 닉네임 중복여부
         $("#nickname_check").click( function() {
           var nickname = $('#userNickname').val();
           
           if($("#userNickname").val() == "")
            {
               $("#nick_check").text("입력 항목이 누락되었습니다.");
               $("#nick_check").css("color", "red");
               $("#userNickname").focus();
               
               return false;  
            }
            else
            {
               $("#nick_check").text(""); 
    
               $.ajax({
                  url : '<%=cp%>/ajax/check/nickname?nickname='+ nickname,
                       type : 'get',
                       success : function(data) {
                       console.log("1 = 중복o / 0 = 중복x : " + data);
                  if (data == 1) 
                       {
                          // 1 : 닉네임 중복되는 문구
                          $("#nick_check").text("사용중인 닉네임입니다");
                          $("#nick_check").css("color", "red");
                          $('#userNickname').val('');
                          $('#userNickname').focus();
                          return false;
                       } 
                  else 
                       {
                           $("#nick_check").text("사용가능한 닉네임입니다");
                           $("#nick_check").css("color", "green");
                           
                       }
                       },
                       error : function() {
                       console.log("실패");
                       }
               });
               return false;
              
            }
           
          });
          
         // 전화번호 인증버튼확인
         $("#tel_certify").click(function() {            
              var tel = $('#tel1').val() +"-"+ $('#tel2').val() + "-" + $('#tel3').val();
            if($("#tel1 option:selected").val() == "선택" || $("#tel2").val() == "" || $("#tel3").val() == "")
            {
                 $("#tel_check").text("입력 항목이 누락되었습니다.");
                  $("#tel_check").css("color", "red");
                $("#tel1").focus();                
                return false;  
            }
            else
            {
                $("#tel_check").text("");               
                $.ajax({
               url : '<%=cp%>/ajax/check/tel?tel='+ tel,
                    type : 'get',
                    success : function(data) {
                    console.log("1 = 중복o / 0 = 중복x : " + data);
               if (data == 1) 
                    {
                       // 1 : 전화번호가 중복되는 문구
                       $("#tel_check").text("이미 등록된 전화번호입니다");
                       $("#tel_check").css("color", "red");
                       $('#tel1').val('');
                       $('#tel2').val('');
                       $('#tel3').val('');
                       $('#tel1').focus();
  
                    } 
               else 
                    {
                        $("#tel_check").text("사용가능한 전화번호입니다");
                        $("#tel_check").css("color", "green");
                        $("#certification").css("display","inline");

                    }
                    },
                    error : function() {
                    console.log("실패");
                    }
            });
                return false;
            } 
          });
         
         
        //  전화인증번호 체크
         $("#certification").click(function() {
                       
             if($("#tel4").val() == "")
             {
                $("#tel-certify-check").text("입력 항목이 누락되었습니다.");
                $("#tel-certify-check").css("color", "red");
                $("#tel4").focus();
                return false;  
             }
             else
             {
                $("#tel-certify-check").text("");  
                return false;
             }
               
          });
         
         
         // 거점지역 띄우기
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
         
         // submit시 발생 
         $("#sign_up").click(function() {
            
           
            
            var str = $("#tel1").val() + "-" + $("#tel2").val() + "-" + $("#tel3").val();  
            
           $("#userTel").val(str);
                      
            // 이메일 입력없음
            if($("#userEmail").val() == "")
               {
                  $("#id_check").text("입력 항목이 누락되었습니다.");
                  $("#id_check").css("color", "red");
                  $("#userEmail").focus();

                  return false;  
               }
               else
                  $("#id_check").text("");
            
            
            // 비밀번호 입력 없음
            if( $("#userPassword").val() == "" || $("#password2").val() == "")
               {
                  $("#pwd_check").text("입력 항목이 누락되었습니다.");
                  $("#pwd_check").css("color", "red");
                  $("#userPassword").focus();
                  
                  return false;  
               }
               else
                  $("#pwd_check").text("");
                  
            // 이름 입력없음
            if( $("#userName").val() == "")
               {
                  $("#name_check").text("입력 항목이 누락되었습니다.");
                  $("#name_check").css("color", "red");
                  $("#userName").focus();
                  return false;  
               }
               else
                  $("#name_check").text("");
            
            // 닉네임 입력없음
            if( $("#userNickname").val() == "")
               {
                  $("#nick_check").text("입력 항목이 누락되었습니다.");
                  $("#nick_check").css("color", "red");
                  $("#userNickname").focus();
                  return false;  
               }
               else
                  $("#pwd_check").text("");
            
            // 신장 입력없음
            if( $("#userHeight").val() == "")
               {
                  $("#height_check").text("입력 항목이 누락되었습니다.");
                  $("#height_check").css("color", "red");
                  $("#userHeight").focus();           
                  return false;  
               }
               else
                  $("#height_check").text("");
            // 거점지역 입력없음
            if( $("#citySelect option:selected").val() == "")
            {
               $("#city_check").text("입력 항목이 누락되었습니다.");
               $("#city_check").css("color", "red");
               $("#regionSelect").focus();           
               return false;  
            }
            else
               $("#city_check").text("");
            
            // 자기 실력 평가입력없음
            if( $("#selfEvaluationType option:selected").val() == "실력선택")
               {
                  $("#selfevaluation_check").text("입력 항목이 누락되었습니다.");
                  $("#selfevaluation_check").css("color", "red");
                  $("#selfEvaluationType").focus();           
                  return false;  
               }
               else
                  $("#selfevaluation_check").text("");
            
               
            // 전화번호 입력없음
            if($("#tel1 option:selected").val() == "선택" || $("#tel2").val() == "" || $("#tel3").val() == "")
               {
                  $("#tel_check").text("입력 항목이 누락되었습니다.");
                  $("#tel_check").css("color", "red");
                  $("#tel1").focus();           
                  return false;  
               }
               else
                  $("#tel_check").text("");
            
            // 전화번호 인증번호 입력확인
            if($("#tel4").val() == "")
            {
               $("#tel-certify-check").text("입력 항목이 누락되었습니다.");
               $("#tel-certify-check").css("color", "red");
               $("tel4").focus();

               return false;  
            }
            else
               $("#tel-certify-check").text("");
            
            // // 포지션 입력없음
            if( $("#userPositionCode option:selected").val() == "포지션선택")
               {
                  $("#position_check").text("입력 항목이 누락되었습니다.");
                  $("#position_check").css("color", "red");
                  $("#userPositionCode").focus();           
                  return false;  
               }
               else
               {
                  $("#position_check").text("");
               }

               $("#signUp_submit").submit();
                       
      });
               
               
         // datepicker 생년월일      
      $("#datepicker").datepicker(
              {
                    dateFormat : 'yy-mm-dd' //Input Display Format 변경
                       ,
                      showOtherMonths : true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
                      ,
                      showMonthAfterYear : true //년도 먼저 나오고, 뒤에 월 표시
                      ,
                      changeYear : true //콤보박스에서 년 선택 가능
                      ,
                      changeMonth : true //콤보박스에서 월 선택 가능                
                      ,
                      buttonImage : "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
                      ,
                      buttonImageOnly : true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
                      ,
                      buttonText : "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
                      ,
                      yearSuffix : "년" //달력의 년도 부분 뒤에 붙는 텍스트
                      ,
                      monthNamesShort : [ '1', '2', '3', '4', '5', '6',
                            '7', '8', '9', '10', '11', '12' ] //달력의 월 부분 텍스트
                      ,
                      monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월',
                            '7월', '8월', '9월', '10월', '11월', '12월' ] //달력의 월 부분 Tooltip 텍스트
                      ,
                      dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ] //달력의 요일 부분 텍스트
                      ,
                      dayNames : [ '일요일', '월요일', '화요일', '수요일', '목요일',
                            '금요일', '토요일' ] //달력의 요일 부분 Tooltip 텍스트
                      ,
                      minDate : "-100Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
                      ,
                      maxDate : "+0M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                           
             });

            //초기값을 오늘 날짜로 설정
            $('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
      
   });
              

</script>

</head>

<body>

   <!-- 헤더 -->
   <c:import url="../base/Header.jsp"></c:import>
   <!-- 서브 -->
   <c:import url="../base/Submenu.jsp"></c:import>
   <form action="<%=cp%>/signupdo" id="signUp_submit" method="post">
   <div class="main container-fluid">
      <div class="section-title container">
         <p>회원가입</p>
         <hr />
      </div>
      <div class="row">
         <div class="col-md-3"></div>
         <div class="col-md-9 input_content sign">
            <div class="row">
               <div class="col-sm-3 col-xs-3">
                  <label class="f_size">이메일*</label>
               </div>
               <div class="col-sm-4 col-xs-4">
                  <span><input type="email" class="form-control userEmail"
                     id="userEmail" name="userEmail" placeholder="email"></span>
               </div>
               <div class="col-sm-2 col-xs-2">
                  <button class="btn btn-warning email_certify" id="email_certify">중복확인</button>
               </div>
               <div class="col-sm-2 col-xs-2" id="id_check"></div>
            </div>
            
            <div class="row">
               <div class="col-sm-3 col-xs-3">
                  <label class="f_size">비밀번호*</label>
               </div>
               <div class="col-sm-4 col-xs-4">
                  <input type="password" class="form-control userPassword"
                     id="userPassword" name="userPassword" placeholder="*********" maxlength="15">
               </div>
            </div>
            
            <div class="row">
               <div class="col-sm-3 col-xs-3">
                  <label class="f_size">비밀번호 재확인*</label>
               </div>
               <div class="col-sm-4 col-xs-4">
                  <input type="password" class="form-control password2"
                     id="password2" placeholder="영문,소문자,숫자,특수문자 8~15자">
               </div>
               <div class="col-sm-3 col-xs-3">
                  <label class="pwd-fail" style="color: red; display: none;">비밀번호
                     불일치</label> <label class="pwd-sucess"
                     style="color: green; display: none;">비밀번호 일치</label>
               </div>
               <div class="col-sm-2 col-xs-2" id="pwd_check"></div>
            </div>
            
            <div class="row">
               <div class="col-sm-3 col-xs-3">
                  <label class="f_size">이름*</label>
               </div>
               <div class="col-sm-4 col-xs-4">
                  <input type="text" class="form-control userName" id="userName" name="userName" placeholder="홍길동규">
               </div>
               <div class="col-sm-5 col-xs-5" id="name_check"></div>
            </div>
            
            <div class="row">
               <div class="col-sm-3 col-xs-3">
                  <label class="f_size">닉네임*</label>
               </div>

               <div class="col-sm-4 col-xs-4">
                  <input type="text" class="form-control userNickname"
                     id="userNickname" name="userNickname" placeholder="동규의칠갑산">
               </div>
               <div class="col-sm-2 col-xs-2">
                  <button class="btn btn-warning nickname_check" id="nickname_check">중복확인</button>
               </div>
               <div class="col-sm-2 col-xs-2" id="nick_check"></div>
            </div>

            <div class="row">
               <div class="col-sm-3 col-xs-3">
                  <label class="f_size datepicker" style="width: 150px;">생년월일*</label>
               </div>
               <div class="col-sm-4 col-xs-4">
                  <input type="text" id="datepicker" name="userBirthday" class="form-control">
               </div>
               <div class="col-sm-3 col-xs-3" id="birth_check"></div>
            </div>
            
            <div class="row">
               <div class="col-sm-3 col-xs-3">
                  <label class="f_size userGenderCode" id="userGenderCode">성별*</label>
               </div>
               <div class="col-sm-5 col-xs-5">
                  <label class="radio-inline radio_button female"> <input
                     type="radio" name="userGenderCode" id="female" value="ZK02"
                     checked="checked">여자
                  </label> <label class="radio-inline radio_button male"> <input
                     type="radio" name="userGenderCode" id="male" value="ZK01">남자
                  </label>
               </div>
            </div>
            
            <div class="row">
               <div class="col-sm-3 col-xs-3">
                  <label class="f_size">신장*</label>
               </div>
               <div class="col-sm-4 col-xs-4">
                  <input type="text" class="form-control userHeight" id="userHeight"
                     name="userHeight" placeholder="100~250(cm) 입력">
               </div>
               <div class="col-sm-2 col-xs-2" id="height_check"></div>
            </div>
            
            <div class="row">
               <div class="col-sm-3 col-xs-3">
                  <label class="f_size">자기실력평가*</label>
               </div>
               <div class="col-sm-4 col-xs-4">
                  <select class="form-control selfEvaluationType"
                     id=" selfEvaluationType" name="selfEvaluationType">
                     <option selected="selected">실력선택</option>
                     <option value="ZR01">하</option>
                     <option value="ZR02">중</option>
                     <option value="ZR03">상</option>
                  </select>
               </div>
               <div class="col-sm-3 col-xs-3" id="selfEvaluation_check"></div>
            </div>
            
            <div class=" flex row">
               <div class="col-sm-4 col-xs-4">
                  <label class="f_size">거점지역*</label>
               </div>
               <div class="col-sm-2 col-xs-2 select">
                  <select name="" class="form-control regionSelect" id="regionSelect">
                  <option value="">광역시·도</option>
                  <c:forEach var="regionDto"  items="${regionList }">
                  <option value="${regionDto.regionCode }">${regionDto.regionName } </option>
                  </c:forEach>
            </select>
               </div>
               <div class="col-sm-2 col-xs-2">
               <select class="form-control citySelect" name='userCityCode' id="citySelect"></select>
            </div>
                     <div class="col-sm-2 col-xs-2 city_check"></div>
            </div>
            
            <div class="flex row">
               <div class="col-sm-4 col-xs-4">
                  <label class="f_size">전화번호*</label>
               </div>
               
               <div class="col-sm-4 col-xs-4 flex tels">
                  <div class="col-sm-1.5 col-xs-1.5">
                     <select class="form-control tel1" id="tel1">
                        <option selected="selected">선택</option>
                        <option>010</option>
                        <option>011</option>
                        <option>012</option>
                        <option>017</option>
                        <option>018</option>
                        <option>019</option>
                     </select>
                  </div>
               
                  <div class="space"> - </div>
                  
                  <div class="col-sm-1.5 col-xs-1.5">
                        <input type="tel" class="form-control tel2" id="tel2">
                  </div>
                  
                  <div class="space"> - </div>
                  
                  <div class="col-sm-1.5 col-xs-1.5">
                      <input type="tel" class="form-control tel3" id="tel3"> 
                        <input type="hidden" name="userTel" id="userTel">
                  </div>
                  <div class="col-sm-3 col-xs-3">
                        <button class="btn btn-warning tel_certify" id="tel_certify">인증</button>
                     </div>
                  
               </div>
               
               <div id="tel_check"></div>
            </div>

            <div class="flex row" style="display: none;" id="certification">
               <div class="col-sm-3 col-xs-3">
                  <label class="f_size">인증번호*</label>
               </div>
               <div class="col-sm-4 col-xs-4">
                  <input type="tel" class="form-control tel4" id="tel4"
                     placeholder="인증번호를 입력해주세요" name="smsReceive">
               </div>
               <div class="col-sm-2 col-xs-2">
                  <button class="btn btn-warning tel_certify_send"
                     id="tel_certify_send">인증번호 발송</button>
               </div>
               <div class="col-sm-2 col-xs-2" id="tel-certify-check"></div>
            </div>

      <div class="flex row">
           <div class="col-sm-4 col-xs-4">
              <label class="f_size">선호포지션*</label>
           </div>
           <div class="col-sm-4 col-xs-4 position">
              <select class="form-control userPositionCode"
                 id="userPositionCode" name="userPositionCode">
                 <option selected="selected">포지션선택</option>
                 <option value="ZP01">포인트가드</option>
                 <option value="ZP02">센터</option>
                 <option value="ZP03">슈팅가드</option>
                 <option value="ZP04">스몰 포워드</option>
                 <option value="ZP05">파워 포워드</option>
              </select>
           </div>
           <div class="col-sm-2 col-xs-2">
               <button class="btn btn-warning position_recommend" id="position_recommend">포지션 추천</button>
           </div>
        <div class="col-sm-2 col-xs-2" id="position_check"></div>
      </div>
      <div class="flex row">
         <div class="col-sm-4 col-xs-4">
            <label class="f_size" id="">SMS 수신여부*</label>
         </div>
         <div class="col-sm-5 col-xs-5">
            <label class="radio-inline radio_button"> 
               <input type="radio" name="snsSync" value="ZU01" checked="checked">YES
            </label>
            <label class="radio-inline radio_button"> 
               <input type="radio" name="snsSync" value="ZU02">NO
            </label> 
         </div>
      </div>
         <div class="col-md-3"></div>
      </div>

      <div class="row">
         <div class="col-md-3"></div>
         <div class="col-md-6">
            <div class="align_center button">
               <button class="btn btn-warning button_middle sign_up" id="sign_up">회원가입</button>
               <button class="btn btn-warning button_middle back" id="back">돌아가기</button>
            </div>
         </div>
      </div>
   </div>
  </div>
   </form>
   <c:import url="../base/Footer.jsp"></c:import>

</body>
</html>