<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ 삭제.jsp</title>
<style type="text/css">

/* 내용 틀*/
#content
{
	height: 250px;
}

/* 내용 */
.content
{
	cursor: auto;
	background-color: white;
}

/* 게시물변경 팝업명  */
#content_title
{
	background-color: orange;
	cursor: auto;
	font-size: 14pt;
	font-weight: bold;
}

/* 확인, 취소 버튼 */
#confirm, #cancel
{
	font-size: 20pt;
	font-weight: bold;
	width: 200px;
	height: 50px;
	margin-left: 10px;
}

.text
{
	margin-top: 50px;
	font-size: 24pt;
	text-align: center;
	font-weight: bold;
}

.button
{
	margin-top: 10px;
	text-align: center;
}

</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/board.css">

<script type="text/javascript">

	$(function()
	{
		$("#confirm").click(function()
		{
			 alert("삭제되었습니다.");
			 location.href='FAQ_List.jsp';
		});
	});
	
</script>

</head>
<body>

	<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/Submenu.jsp"></c:import>
	
<form action="" method="post" onclick="">
	<div class="main container-fluid">
	      <div class="section-title container">
	         <h5>자주묻는질문(FAQ) > 특정 자주묻는질문(FAQ) > 삭제</h5>
	         <hr />
	      </div>
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">	
				
				<div class="frame">
					<input type="text" class="form-control" id="content_title" value="알림" readonly="readonly">
				</div>
				
				<div class="form-control" id="content">
					<div class="content">
						<div class="text">
								게시물을 삭제하시겠습니까?
						</div>
						<div class="button">
							<input type="text" class="btn btn-default btn-submit" value="확인" id="confirm">
							<input type="button" class="btn btn-default btn-cancel" value="취소" id="cancel">
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-2">
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">		
			</div>
			<div class="col-md-2">
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">
			</div>
			<div class="col-md-2">
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">		
			</div>
			<div class="col-md-2">
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
			</div>
			<div class="col-md-8">			
			</div>
			<div class="col-md-2">
			</div>
		</div>
	</div>
</form>

<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>