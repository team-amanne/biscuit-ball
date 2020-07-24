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
<title>회원가입.jsp</title>
<style type="text/css">

/* flex 용 */
.flex
{
	display: flex;
	margin-left: auto;
	width: 80% !important;
}

/* 이메일 */
.email
{
	margin-left: 90px;
	margin-bottom: 10px;
	width: 279px !important;
}

/* 이메일 인증 */
.email_certify
{
	margin-left: 10px;
	width: 98px !important;
	height: 34px !important;
}

/* 비밀번호1 */
.password1
{
	margin-left: 70px;
	margin-bottom: 10px;
	width: 279px !important;
}

/* 비밀번호2 */
.password2
{
	margin-left: 25px;
	margin-bottom: 10px;
	width: 279px !important;
}

/* 이름 */
.name
{
	margin-left: 109px;
	margin-bottom: 10px;
	width: 279px !important;
}

/* 닉네임 */
.nickname
{
	margin-left: 88px;
	margin-bottom: 10px;
	width: 279px !important;
}

/* 닉네임 중복확인 */
.nickname_check
{
	margin-left: 10px;
	width: 98px !important;
	height: 34px !important;
}

/* 라벨명 */
.f_size {
   font-size: 15pt;
   font-weight: bold;
   margin-top: 5px;
}

/* 생년월일 */

.birtday
{
	margin-left: 24px;
	margin-bottom: 10px;
	width: 279px !important;
}

/* 달력 이미지 */
.calenda_image
{
	width: 200px !important;
    margin-left: 47px;
    margin-top: 3px;
    font-size: 22pt;
}

/* 성별 라디오버튼 */
.jender
{
	margin-right: 5px;
	width: 220px !important;
}

/* 여자, 남자 */
.female, .male
{
	height: 20px !important;
    width: 20px !important;

}

/* 라디오버튼 크기 */
.radio_button {
   font-size: 15pt;
}

/* 신장 */

.key_height
{
	margin-left: 107px;
	margin-bottom: 10px;
	width: 279px !important;
}

/* 자기평가실력 */
.self
{
	margin-left: 27px;
	margin-bottom: 10px;
	width: 129px !important;
}

/* 지역선택 */
.country
{
	margin-left: 66px;
	margin-bottom: 10px;
	width: 130px !important;
}

/* 지역구(시 군 구) */
.region
{
	margin-left: 10px;
	margin-bottom: 10px;
	width: 140px !important;
}

/* 전화번호 1번째 3번째 입력칸 */
.tel1
{
	margin-left: 66px;
	margin-bottom: 10px;
	width: 80px !important;
}

/* 전화번호 2번째 입력칸 */
.tel2
{
	width: 80px !important;
	margin-left: 7px;
	margin-right: 7px;
	margin-bottom: 10px;
}

/* 전화번호 3번째 입력칸 */
.tel3
{
	width: 80px !important;
	margin-bottom: 10px;
}

/* 전화번호 인증번호 입력칸 */
.tel4
{
	margin-left: 66px;
	margin-bottom: 10px;
	width: 279px !important;
}

/* 전화번호 인증 */
.tel_certify
{
	margin-left: 10px;
	width: 98px !important;
	height: 34px !important;
}

.tel_certify_send
{
	margin-left: 10px;
	width: 110px !important;
	height: 34px !important;
}

/* 포지션 선택 */
.position
{
	margin-left: 46px;
	width: 279px !important;
}

/* 포지션 추천버튼 */
.position_recommend
{
	margin-left: 10px;
	width: 98px !important;
	height: 34px;
}

/* 회원가입, 돌아가기 버튼 포함클래스 */
.last_button
{
	margin-left: auto;
    width: 480px !important;
    margin-top: 50px;
}

/* 회원가입 완료버튼 */
.sign_up
{
	margin-left: 10px;
	width: 98px !important;
	height: 34px;
}

/* 돌아가기 버튼 */
.back
{
	margin-left: 10px;
	width: 98px !important;
	height: 34px;
}

/* 하이폰용 */
.space1
{
	margin-left: 6px;
	font-size: 15pt;
}

/* 하이폰용 */
.space2
{	
	margin-right: 6px;
	font-size: 15pt;

}
</style>





<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
   href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=cp%>/css/default.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
   href="css/bootstrap-theme.min.css">

<!-- 달력(datepicker) -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style>
/*datepicer 버튼 롤오버 시 손가락 모양 표시*/
.ui-datepicker-trigger{cursor: pointer;}
/*datepicer input 롤오버 시 손가락 모양 표시*/
.hasDatepicker{cursor: pointer;} 
</style>


<script type="text/javascript">
        $(function() {

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
                    }
                }
            });
            
            
            $("#sign_up").click(function() 
            {
            	
            	var str = $("#tel1").val() + "-" + $("#tel2").val() + "-" + $("#tel3").val();
            	
            	$("#userTel").val(str);
            	
            	$("#signUp_submit").submit();
			});
            
        });
    </script>

</script>

</head>
<body>

   <!-- 헤더 -->
   <c:import url="../base/Header.jsp"></c:import>
   <!-- 서브 -->
   <c:import url="../base/Submenu.jsp"></c:import>
<form action="<%=cp%>/signupdo" id="signUp_submit" method="post">
   <div class="container-fluid">
      <div class="section-title container">
      
         <h5>메인 홈 > 회원가입</h5>
         <hr />
      </div>
      <div class="row">
         <div class="col-md-3"></div>
         <div class="col-md-6 input_content">
            <div class="flex">
               <label class="f_size">이메일*</label> <span><input type="email"
                  class="form-control userEmail" id="userEmail" name="userEmail" placeholder="email"></span>

               <button class="btn btn-warning email_certify" id="email_certify">중복확인</button>
               
            </div>
            <div class="flex">
               <label class="f_size">비밀번호*</label> <input type="password"
                  class="form-control userPassword" id="userPassword" name="userPassword" placeholder="*********">
            </div>
            <div class="flex">
               <label class="f_size">비밀번호 확인*</label> 
               <input type="password" class="form-control password2" id="password2" placeholder="영문,소문자,숫자,특수문자 8~15자">
               <label class="pwd-fail" style="color: red; display: none;" >비밀번호 불일치</label>
               <label class="pwd-sucess" style="color: green; display: none;">비밀번호 일치</label>
            </div>
            <div class="flex">
               <label class="f_size">이름*</label> <input type="text"
                  class="form-control userName" id="userName" name="userName" placeholder="홍길동규">
            </div>
            <div class="flex">
               <label class="f_size">닉네임*</label> <input type="text"
                  class="form-control userNickname" id="userNickname" name="userNickname" placeholder="동규의칠갑산">

               <button class="btn btn-warning nickname_check" id="nickname_check">중복확인</button>
            </div>
            
            <div class="flex">
            <div class="row">

               <label class="f_size datepicker" style="width: 150px;">생년월일*</label> 
               <input type="text" id="datepicker" name="userBirthday">
            </div>
            </div>
            <div class="flex">
               <label class="f_size userGenderCode" id="userGenderCode" >성별*</label> 
               <label
                  class="radio-inline radio_button female"> <input type="radio"
                  name="userGenderCode" id="female" value="ZK02" checked="checked">여자
               </label> 
               <label class="radio-inline radio_button male"> 
               <input
                  type="radio" name="userGenderCode" id="male" value="ZK01">남자
               </label>
            </div>
            <div class="flex">
               <label class="f_size">신장*</label> <input type="text"
                  class="form-control userHeight" id="userHeight" name="userHeight" placeholder="100~250(cm) 입력">
            </div>
            <div class="flex">
               <label class="f_size">자기실력평가*</label>
                <select class="form-control selfEvaluationType"
                  id=" selfEvaluationType" name="selfEvaluationType">
                  <option selected="selected">실력선택</option>
                  <option value="ZR01">하</option>
                  <option value="ZR02">중</option>
                  <option value="ZR03">상</option>
               </select>

            </div>
            <div class="flex">
               <label class="f_size">거점지역*</label> 
               <select class="form-control country"
                  id="country" name="">
                  <option selected="selected">지역선택</option>
                  <option>서울</option>
                  <option>인천</option>
                  <option>대전</option>
                  <option>부산</option>
                  <option>대구</option>
                  <option>광주</option>
               </select> <select class="form-control userCityCode" id="userCityCode" name="userCityCode">
                  <option selected="selected">시군구선택</option>
                  <option value="ZG000014">마포구</option>
                  <option>강남구</option>
                  <option>서초구</option>
               </select>
            </div>
            <div class="flex">
               <label class="f_size">전화번호*</label> <select class="form-control tel1"
                  id="tel1">
                  <option selected="selected">선택</option>
                  <option>010</option>
                  <option>011</option>
                  <option>012</option>
                  <option>017</option>
                  <option>018</option>
                  <option>019</option>
               </select>
               <div id="space1">-</div>
               <input type="tel" class="form-control tel2" id="tel2">
               <div id="space2">-</div>
               <input type="tel" class="form-control tel3" id="tel3">
               <input type="hidden" name="userTel" id="userTel">

               <button class="btn btn-warning" id="tel_certify">인증</button>
            </div>

            <div class="flex">
               <label class="f_size">인증번호*</label> <input type="tel"
                  class="form-control tel4" id="tel4" placeholder="인증번호를 입력해주세요" name="smsReceive">

               <button class="btn btn-warning tel_certify_send" id="tel_certify_send">인증번호
                  발송</button>

            </div>

            <div class="flex">
               <label class="f_size">선호포지션*</label> <select class="form-control userPositionCode"
                  id="userPositionCode" name="userPositionCode">
                  <option selected="selected">포지션선택</option>
                  <option value="ZP01">포인트가드</option>
                  <option value="ZP02">센터</option>
                  <option value="ZP03">슈팅가드</option>
                  <option value="ZP04">스몰 포워드</option>
                  <option value="ZP05">파워 포워드</option>
               </select>




               <button class="btn btn-warning position_recommend" id="position_recommend">포지션
                  추천</button>
            </div>
         </div>
         <div class="col-md-3"></div>
      </div>
      
      
      <div class="flex">
               <label class="f_size" id="" >sms수신여부*</label> 
               <label class="radio-inline radio_button"> 
                  	<input type="radio" name="snsSync" value="ZU02" checked="checked">NO
               </label> 
               <label class="radio-inline radio_button"> 
               		<input type="radio" name="snsSync" value="ZU01">YES
               </label>
      </div>
      	
      <div class="row">
         <div class="col-md-3"></div>
         <div class="col-md-6 flex">
            <div class="last_button">
               <button class="btn btn-warning sign_up" id="sign_up">회원가입</button>
               <button class="btn btn-warning back" id="back">돌아가기</button>
            </div>
         </div>
         <div class="col-md-3"></div>
      </div>
      
      
 
           
      
      
      
      

      <div class="row">
         <div class="col-md-3"></div>
         <div class="col-md-6"></div>
         <div class="col-md-3"></div>
      </div>
      <div class="row">
         <div class="col-md-3"></div>
         <div class="col-md-6"></div>
         <div class="col-md-3"></div>
      </div>
      <div class="row">
         <div class="col-md-3"></div>
         <div class="col-md-6"></div>
         <div class="col-md-3"></div>
      </div>
   </div>
</form>
   <c:import url="../base/Footer.jsp"></c:import>

</body>
</html>