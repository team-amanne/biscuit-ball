<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
   request.setCharacterEncoding("utf-8");
   String cp = request.getContextPath();    
%>
<!DOCTYPE html>
<html>
<head>


<!-- 부트스트랩/제이쿼리 -->
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=cp %>/css/default.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>


<style type="text/css"> 

input[type=file] {
	position: absolute;
    width: 0;
    height: 0;
    padding: 0;
    overflow: hidden;
    border: 0;
}

.user_item 
{
    padding-top: 8px;
    padding-left: 5px;
    display: block;
}

.icon_connect 
{
    padding-top: 6px;
    padding-right: 5px;
}

.icon_Achievement
{	
	width: 30px;
	height: 30px;
}

.left-btn {
   text-align: left;
}

.right-btn {
   text-align: right;
}

.panel-body {
    padding: 5px;
    display: flex;
}

</style>
<script type="text/javascript">

$().ready(function()
{
   $("#myinfomation").click(function()
   {
       $(location).attr("href","<%=cp%>/mypage/account");
   });
   
   $("#achievementList").click(function()
   {
       $(location).attr("href","<%=cp%>/mypage/achievement");
   });
   
   $("#friend").click(function()
   {
       $(location).attr("href","<%=cp%>/mypage/friend");
   });
   
   $("#userblock").click(function()
   {
       $(location).attr("href","<%=cp%>/mypage/userblock");
   });
   
   $("#referee").click(function()
   {
       $(location).attr("href","<%=cp%>/");
   });
   
   $("#introduce").click(function()
   {
	   $("#frm").attr("action", "updateuser");
	   $("#userProfileTxt").val($("#userProfileTxtView").val());	 
	   $("#userRequestType").val("1");	
	   
       $("#frm").submit();
   });
   
   $("#userProfileImageUpdateDo").click(function()
   {
       $("#frm").attr("action", "updateuser");
     
	   if(!/.(png|gif|jpg|jpeg)$/.test($("#uploadprofilename").val())) 
	   {
			alert("이미지 파일만 등록할 수 있습니다.");
			return;
	   }		   
	   $("#userRequestType").val("2");
	   $("#frm").submit();
   });
   
	/* 파일 설정 */
	$("input[type=file]").on("change", function() {
		
		var fullName = $(this).val().split("\\");
		var fileName = fullName[fullName.length-1];
		$("#uploadprofilename").val(fileName);
		$("#uploadprofilename").css('display','inline');
		$("#userProfileImageUpdateDo").css('display','inline');
		
	});
	
	

	 
	 	
	 
});


</script>

<title>BiscuitBail > 마이페이지</title>

</head>
<body>
   <!-- 헤더 -->
   <c:import url="../base/Header.jsp"></c:import>

   <!-- 서브메뉴 -->
   <!-- 서브메뉴는 기능별(농구하기/코트검색/크루/...)로 복사해서 만들어두고 import 할 것 -->
   <c:import url="../base/MypageSubmenu.jsp?active=mypage"></c:import>
<form action=".." method="post"  enctype="multipart/form-data" id="frm" name="frm">
   <!-- 메인  enctype="multipart/form-data"  -->
   <input type="hidden" id="userRequestType" name="userRequestType">
   <div class="main container-fluid">
    <div class="section-title container">
      <span></span>
      
      <hr />
      <div class="col-md-12">
      	<p class="subtitle-text">마이페이지</p>
      	
      	
      	
      </div>
   </div>
   <div class="row">
      <div class="col-md-12">
         <div class="row">
            <div class="col-md-2">
            </div>
            <div class="col-md-8">
               <div class="row">
               </div>
               <div class="row">
                  <div class="col-sm-4 col-xs-5 right-btn">
                     <a><button type="button" class="btn btn-default" id="myinfomation">내 정보관리</button></a>
                     <a><button type="button" class="btn btn-default " id="achievementList" style="margin-right: 25%;">업적 목록</button></a>
                  </div>
                  <div class="col-sm-4 col-xs-2">
                  </div>
                  <div class="col-sm-4 col-xs-5" >
                     <a><button type="button" class="btn btn-default " style="margin-left: 25%;" id="friend">친구 관리</button></a>
                     <a><button type="button" class="btn btn-default " id="userblock">차단 관리</button></a>
                  </div>
               </div>
               <div class="row">
                  <div class="col-sm-4 col-xs-3">
                     
                  </div>
                  <div class="col-sm-4 col-xs-6" style="position: relative; z-index: 1; text-align: center;">
                  

                     
                  <c:choose>
					    <c:when test="${user.userProfileImg != null}">
					        <img src="<%=cp %>${user.userProfileImg }" height="250px;" width="250px;" style=" border-radius: 70%; margin-bottom: 20px;"/>                     
					    </c:when>
					
					    <c:otherwise>
					        <img src="<%=cp %>/images/other/UserProfile.jpg" height="250px;" width="250px;"/>
					    </c:otherwise>

				  </c:choose>

                  </div>
                  <div class="col-sm-4 col-xs-3">
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-4 col-xs-3">
                  </div>
                  <div class="col-md-4 col-xs-6" style="position: relative;top: -10px; z-index: 2; text-align: center; display: block;">
                  <div style=" padding-bottom: 10px;">
                  		<input id="uploadprofilename" style="display: none; width: 55%; text-align:right;" readonly="readonly"> 
                        <button type="button" id="userProfileImageUpdateDo" style="display: none; width: 40%;">프로필사진 등록</button>                               	
                  </div>
                        <label for="userProfileImageUpdate" class="btn btn-default btn-link btn-block btn-sm">프로필사진 변경</label>
                     	<input type="file" name="userProfileImageUpdate" id="userProfileImageUpdate" value="프로필사진 변경"/>
                  </div>               
                  <div class="col-md-4 col-xs-3">
                  </div>
               </div>
               <div class="row form-group">
                  <div class="col-sm-4 col-xs-3">
                  </div>
                  
              
                  <div class="col-sm-4 col-xs-6" style="text-align: center"><textarea class="form-control" name="userProfileTxtView" id="userProfileTxtView" rows="" style="resize: none; width: 100%; height: 100px;" >${user.userProfileTxt}</textarea></div>
                  <input type="hidden" name="userProfileTxt" id="userProfileTxt">
                  <div class="col-sm-4 col-xs-3">
                  </div>
               </div>
               <div class="row">
                  <div class="col-sm-5 col-xs-3">
                  </div>
                  <div class="col-sm-2 col-xs-6">
                     <button type="button" class="btn btn-default btn-submit btn-block btn-link" id="introduce">자기소개글 등록</button>
                  </div>
                  <div class="col-sm-5 col-xs-3">
                  </div>
               </div>
               <br>
               <div class="row">
                  <div class="col-md-1">
                  </div>
                  <div class="col-md-10">
                     <div class="row">
                        <div class="panel panel-default">
                           <div class="col-sm-2 col-xs-2 panel-heading">
                              <span>닉네임</span>
                           </div>
                           <div class="col-sm-4 col-xs-4 panel-body">
                              <span class="user_item">${user.userNickname}</span>
                           </div>
                           <div class="col-sm-2 col-xs-2 panel-heading">
                              <span>성별</span>
                           </div>
                           <div class="col-sm-4 col-xs-4 panel-body">
                              <span  class="user_item">${user.userGender}</span>
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <div class="panel panel-default">
                           <div class="col-sm-2 col-xs-2 panel-heading">
                              <span>대표업적</span>
                           </div>
                           <div class="col-sm-4 col-xs-4 panel-body">     
                           	  <img alt="" src="<%=cp %>${user.titleAchievementImg}" class="icon_Achievement"
                           	   >                         
                              <span  class="user_item"> ${user.titleAchievementName}</span>
                           </div>
                           <div class="col-sm-2 col-xs-2 panel-heading">
                              <span>거점지역</span>
                           </div>
                           <div class="col-sm-4 col-xs-4 panel-body">
                              <span  class="user_item">${user.userCity}</span>
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <div class="panel panel-default">
                           <div class="col-sm-2 col-xs-2 panel-heading">
                              <span>키</span>
                           </div>
                           <div class="col-sm-4 col-xs-4 panel-body">
                              <span  class="user_item">${user.userHeight}cm</span>
                           </div>
                           <div class="col-sm-2 col-xs-2 panel-heading">
                              <span>내 코트</span>
                           </div>
                           <div class="col-sm-4 col-xs-4 panel-body">
                           <c:if test="${user.userCourtCode != null}">
							    <a href="<%=cp %>/court/${user.userCourtCode}" class="icon_connect"><i class="fas fa-map-marked-alt"></i></a>                           
						   </c:if>
                              <span class="user_item">${user.userCourtName}</span>
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <div class="panel panel-default">
                           <div class="col-sm-2 col-xs-2 panel-heading">
                              <span>포지션</span>
                           </div>
                           <div class="col-sm-4 col-xs-4 panel-body">
                              <span class="user_item">${user.userPosition}</span>
                           </div>
                           <div class="col-sm-2 col-xs-2 panel-heading">
                              <span>내 크루</span>
                           </div>
                           <div class="col-sm-4 col-xs-4 panel-body">
                           <c:if test="${user.userCrewName != null}">
                              <a href="#" class="icon_connect"><i class="fas fa-users"></i></a>
                           </c:if>   
                              <span class="user_item">${user.userCrewName}</span>
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <div class="panel panel-default">
                           <div class="col-sm-2 col-xs-2 panel-heading">
                              <span>티어</span>
                           </div>
                           <div class="col-sm-4 col-xs-4 panel-body">
                              <span class="user_item">${user.tierName}</span>
                           </div>
                           <div class="col-sm-2 col-xs-2 panel-heading">
                              <span>페어플레이 점수</span>
                           </div>
                           <div class="col-sm-4 col-xs-4 panel-body">
                              <span class="user_item">${user.fairplayScore}</span>
                           </div>
                        </div>
                     </div>
                  </div>
                  
                  <div class="col-md-1">
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-12">
                  </div>
               </div>
            </div>
            <div class="col-md-2">
            </div>
         </div>
      </div>
   </div>
</div>
         </form>


    <c:import url="../base/Footer.jsp"></c:import>
	
</body>
</html>