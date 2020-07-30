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
<title>BiscuitBail > 농구하기</title>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/board.css">
<style type="text/css">

.col-party 
{
   text-align: center;
   border-radius: 30px;
   height: 300px;
   padding-top: 60px;
   margin: 100px auto auto auto;
}

</style>

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">

   $(document).ready(function()
   {
      $("#btn-solo").click(function()
      {
         $(location).attr("href", "<%=cp%>/play/mode");
      });
      
      $("#btn-party").click(function()
      {
         
      });
   });

</script>
<!-- 스크립트 단 -->
<body>

   <!-- 헤더 -->
      <c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/PlaySubmenu.jsp"></c:import>

   <div class="main container-fluid">
         <div class="col-md-2"></div>
         <div class="col-md-8">
            <div class="section-title">
               <h5></h5>
               <hr />
            </div>
            
      <div class="row">
         <div class="col-md-2"></div>
            <div class="col-md-8">
               <div class="col-md-6">
                  <div class="panel panel-default col-party">
                     <div class="panel-body">
                        <h2>파 티</h2>
                        <p>친구와 함께</p>
                        <button class="btn btn-default btn-ling" id="btn-party">PLAY</button>
                     </div>
                  </div>
               </div>
               <div class="col-md-6">

                  <div class="panel panel-default col-party">
                     <div class="panel-body">
                        <h2>개 인</h2>
                        <p>혼자서도 즐겁게</p>
                        <button class="btn btn-default btn-link" id="btn-solo">PLAY</button>
                     </div>
                  </div>
               </div>
            </div>
         <div class="col-md-2"></div>
      </div>
            
         </div>
         <div class="col-md-2"></div>
   </div>
   
<c:import url="../base/Footer.jsp"></c:import>
   
</body>
</html>