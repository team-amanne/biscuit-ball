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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />      
<link rel="stylesheet" href="<%=cp %>/css/board.css" />
<link rel="stylesheet" href="<%=cp %>/css/default.css" />
<script type="text/javascript" src="https://code.jquery.com/jquery.min.js"></script>


<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>


<style type="text/css">
.left-btn {
   text-align: left;
}

.right-btn {
   text-align: right;
}

</style>
<script type="text/javascript">

$(document).ready(function()
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
       $("#frm").submit();
   });

});

   function fileupload()
   {
      var file = document.getElementById('fileupload');
      var filedata = new FormData(); // FormData 인스턴스 생성

        if (!file.value) return; // 파일이 없는 경우 빠져나오기

        filedata.append('fileupload', file.files[0]);

        var _xml = new XMLHttpRequest();
        _xml.open('POST', '/api/test_upload/', true);
        _xml.onload = function(event) {
          if (_xml.status == 200) {
            alert('Uploaded');
          }
          else {
            alert('Error');
          }
        };

        _xml.send(filedata);
   }

</script>

<title>마이페이지</title>

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
      <span>메인 > 마이페이지 </span>
      <hr />
   </div>
   <div class="row">
      <div class="col-md-12">
         <form action=".." method="post" id="frm" name="frm">
         <div class="row">
            <div class="col-md-2">
            </div>
            <div class="col-md-8">
               <div class="row">
                  <div class="col-md-12">
                     <p class="subtitle-text">마이페이지</p>
                  </div>
               </div>
               <div class="row">
                  <div class="col-sm-4 col-xs-5 left-btn">
                     <a><button type="button" class="btn btn-default" id="myinfomation">내 정보관리</button></a>
                     <a><button type="button" class="btn btn-default" id="achievementList">업적 목록</button></a>
                  </div>
                  <div class="col-sm-4 col-xs-2">
                  </div>
                  <div class="col-sm-4 col-xs-5 right-btn">
                     <a><button type="button" class="btn btn-default btn-link" id="friend">친구 신청</button></a>
                     <a><button type="button" class="btn btn-default btn-link" id="userblock">차단 관리</button></a>
                  </div>
               </div>
               <div class="row">
                  <div class="col-sm-4 col-xs-3">
                     
                  </div>
                  <div class="col-sm-4 col-xs-6" style="position: relative; z-index: 1; text-align: center;">
                     <img src="<%=cp %>/views/img/UserProfile.jpg" height="150px;" width="150px;"/>
                  </div>
                  <div class="col-sm-4 col-xs-3">
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-4 col-xs-3">
                  </div>
                  <div class="col-md-4 col-xs-6" style="position: relative; left:10px; top: -10px; z-index: 2; text-align: center;">
                     <button type="button" class="btn btn-default btn-submit" id="profilephoto_change" onclick="fileupload();">프로필사진 변경</button>
                     <input type="file" name="fileupload" id="fileupload" style="display: none;">
                  </div>               
                  <div class="col-md-4 col-xs-3">
                  </div>
               </div>
               <div class="row form-group">
                  <div class="col-sm-4 col-xs-3">
                  </div>
                  <div class="col-sm-4 col-xs-6" style="text-align: center"><textarea class="form-control" rows="" style="resize: none; width: 400px; height: 100px;">${user.userProfileTxt}</textarea></div>
                  <div class="col-sm-4 col-xs-3">
                  </div>
               </div>
               <div class="row">
                  <div class="col-sm-5 col-xs-5">
                  </div>
                  <div class="col-sm-2 col-xs-2">
                     <button type="button" class="btn btn-default btn-submit btn-block" id="introduce">자기소개글 등록</button>
                  </div>
                  <div class="col-sm-2 col-xs-2">
                  </div>
                  <div class="col-sm-2 col-xs-2">
                  <p><button type="button" class="btn btn-default btn-link btn-block" id="referee">심판정보</button></p>
                  </div>      
                           
               </div>
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
                              <span>${user.userNickname}</span>
                           </div>
                           <div class="col-sm-2 col-xs-2 panel-heading">
                              <span>성별</span>
                           </div>
                           <div class="col-sm-4 col-xs-4 panel-body">
                              <span>${user.userGender}</span>
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <div class="panel panel-default">
                           <div class="col-sm-2 col-xs-2 panel-heading">
                              <span>대표업적</span>
                           </div>
                           <div class="col-sm-4 col-xs-4 panel-body">                              
                              <span><i class="fas fa-star"></i>${user.titleAchievementName}</span>
                           </div>
                           <div class="col-sm-2 col-xs-2 panel-heading">
                              <span>거점지역</span>
                           </div>
                           <div class="col-sm-4 col-xs-4 panel-body">
                              <span>${user.userCity}</span>
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <div class="panel panel-default">
                           <div class="col-sm-2 col-xs-2 panel-heading">
                              <span>키</span>
                           </div>
                           <div class="col-sm-4 col-xs-4 panel-body">
                              <span>${user.userHeight}cm</span>
                           </div>
                           <div class="col-sm-2 col-xs-2 panel-heading">
                              <span>내코트</span>
                           </div>
                           <div class="col-sm-4 col-xs-4 panel-body">
                              <span><a href="#"><i class="fas fa-map-marked-alt"></i></a>${user.userCourtName}</span>
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <div class="panel panel-default">
                           <div class="col-sm-2 col-xs-2 panel-heading">
                              <span>포지션</span>
                           </div>
                           <div class="col-sm-4 col-xs-4 panel-body">
                              <span>${user.userPosition}</span>
                           </div>
                           <div class="col-sm-2 col-xs-2 panel-heading">
                              <span>내크루</span>
                           </div>
                           <div class="col-sm-4 col-xs-4 panel-body">
                              <span><a href="#"><i class="fas fa-users"></i></a>${user.userCrewName}</span>
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <div class="panel panel-default">
                           <div class="col-sm-2 col-xs-2 panel-heading">
                              <span>티어</span>
                           </div>
                           <div class="col-sm-4 col-xs-4 panel-body">
                              <span>${user.tierName}</span>
                           </div>
                           <div class="col-sm-2 col-xs-2 panel-heading">
                              <span>페어플레이 점수</span>
                           </div>
                           <div class="col-sm-4 col-xs-4 panel-body">
                              <span>${user.fairplayScore}</span>
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
         </form>
      </div>
   </div>
</div>

    <c:import url="../base/Footer.jsp"></c:import>

</body>
</html>