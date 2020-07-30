<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
/* 이미지 가운데정렬 */
.image_frame
{
   text-align: center;
}

/* 이미지 크기조절 */
#image
{
   width: 100%;
}

</style>

<title>BiscuitBail > 코트 정보</title>

<!-- 부트스트랩/제이쿼리 -->
<!-- 부가적인 테마 -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
   href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" href="<%=cp%>/css/board.css" />
</head>
<body>
	<!-- 헤더 -->
	<c:import url="../base/Header.jsp?active=court"></c:import>

	<!-- 서브메뉴 -->
	<!-- 서브메뉴는 기능별(농구하기/코트검색/크루/...)로 복사해서 만들어두고 import 할 것 -->
	<c:import url="../base/CourtSubmenu.jsp"></c:import>

<div class="main container-fluid">
      <div class="section-title container">
         <h5></h5>
         <hr />
      </div>  
   <div class="row">
      <div class="col-md-2">
      </div>
      <div class="col-md-8 image_frame">
         <img src="<%=cp%>/images/other/blindpage.png">
      </div>
      <div class="col-md-2">
      </div>
   </div>
</div>
	<c:import url="../base/Footer.jsp"></c:import>
</body>
</html>