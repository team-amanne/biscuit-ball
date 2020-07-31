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
   <link rel="stylesheet" type="text/css" href="<%=cp %>/css/default.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

   $(document).ready(function()
   {
      $("#btn-speed").click(function()
      {
         $(location).attr("href", "<%=cp%>/play/mode/speed")
      });
      
      $("#btn-together").click(function()
      {
         $(location).attr("href", "<%=cp%>/play/mode/together")
      });
   });

</script>
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
</head>
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
                        <h2>빠른농구</h2>
                        <p>지금 당장 농구하고 싶다면?</p>
                        <button class="btn btn-default btn-link
                        " id="btn-speed">PLAY</button> <!-- btn-speed -->
                     </div>
                  </div>
               </div>
               <div class="col-md-6">

                  <div class="panel panel-default col-party">
                     <div class="panel-body">
                        <h2>함께농구</h2>
                        <p>나에게 꼭 맞는 모임은?</p>
                        <button class="btn btn-link" id="btn-together">PLAY</button>
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