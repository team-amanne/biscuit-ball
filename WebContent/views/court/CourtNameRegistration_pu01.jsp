<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>



<title>코트 > 코트 정보 > 코트 이름 등록</title>

<!-- 부트스트랩/제이쿼리 -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
   href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" href="<%=cp%>/css/board.css" />

<style type="text/css">
.paging {
	text-align: center;
}

.title-text {
	font-weight: bold;
}
.duplicate{

	color: red; 
	text-align: center;
}

</style>

</head>
<body>
	<div class="main container-fluid">
		<div class="row">
			<div class="col-md-4">
				<div class="row">
					<div class="col-md-12">
						<p class="title-text">코트 이름 등록</p>
					</div>
				</div>
				<div class="row">
					<div class="panel panel-default">
						<div class="panel-body panel-heading list-header">
							<p></p>
						</div>
					</div>
				</div>
				<form class="form-horizontal">							
					<div class="panel panel-default form-group">	
						<div class="row panel-body">
							<div class="col-xs-1">							
							</div>
							<div class="col-xs-2">
								<label for="inputCourtName" class="control-label">이름</label>								
							</div>
							<div class="col-xs-6">
								<input type="text" class="form-control" id="CourtName">
							</div>
							<div class="col-xs-2">
								<button type="button" class="btn btn-default btn-submit">중복체크</button>
							</div>
							<div class="col-xs-1">
							</div>	
						</div>					
						<div class="duplicate">
							<span style="display: inline;">이미 등록된 이름입니다.</span>
						</div>
						<hr>
						<div class="row panel-body">
							<div class="col-xs-4">
							</div>
							<div class="col-xs-4">
								<button class="btn btn-default btn-submit btn-block" type="submit">등록</button>
							</div>
							<div class="col-xs-4">
							</div>	
						</div>																			
					</div>																		
				</form>
			</div>
		</div>
	</div>

</body>
</html>