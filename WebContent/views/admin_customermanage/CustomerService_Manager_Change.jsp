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
<title>문의/신고 - 신고 담당자변경.jsp</title>
<style type="text/css">

#content
{
	height: 500px;
	cursor: auto;
	background-color: white;
}

#content_title
{
	background-color: orange;
	cursor: auto;
	font-size: 18px;
	font-weight: bold;
	
}

.content
{
	text-align: center;
	width: 700px;
	margin: auto;
	
}

.change
{
	display: flex;
	margin-top: 20px;
	font-weight: bold;
	
}

#admin_name
{
	font-size: 30px;
	font-weight: bold;
	width: 500px;
	height: 50px;
	color: green;
	
	
}

#select
{
	font-size: 28px;
	font-weight: bold;
	width: 200px;
	height: 50px;
	margin-left: 5px;
}

.cancel
{
	margin-top: 5px;
}


#report_target, #report_info, 

</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/board.css">
</head>
<body>

	<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/Submenu.jsp"></c:import>

<div class="container-fluid">
      <div class="section-title container">
         <h5>고객센터 > 문의/신고 > 신고조회 > 담당자변경</h5>
         <hr />
      </div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">		
			<div class="frame">
				<input type="text" class="form-control" id="content_title" value="담당자 변경" readonly="readonly">
			</div>
			<div class="form-control" id="content">
				<div class="content">
					<div class="change">
						<div class="admin">
							<div class="form-control" id="admin_name">
								GM동규
							</div>
						</div>
						<div class="select">
							<div>
								<input type="button" class="btn btn-warning" value="선택하기" id="select">
							</div>
						</div>
					</div>
					<div class="change">
						<div class="admin">
							<div class="form-control" id="admin_name">
								GM성철
							</div>
						</div>
						<div class="select">
							<div>
								<input type="button" class="btn btn-warning" value="선택하기" id="select">
							</div>
						</div>
					</div>
					<div class="change">
						<div class="admin">
							<div class="form-control" id="admin_name">
								GM진녕
							</div>
						</div>
						<div class="select">
							<div>
								<input type="button" class="btn btn-warning" value="선택하기" id="select">
							</div>
						</div>
					</div>
					<div class="change">
						<div class="admin">
							<div class="form-control" id="admin_name">
								GM승주
							</div>
						</div>
						<div class="select">
							<div>
								<input type="button" class="btn btn-warning" value="선택하기" id="select">
							</div>
						</div>
					</div>
					<div class="change">
						<div class="admin">
							<div class="form-control" id="admin_name">
								GM한별
							</div>
						</div>
						<div class="select">
							<div>
								<input type="button" class="btn btn-warning" value="선택하기" id="select">
							</div>
						</div>
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
		
				<div class="cancel" align="right">
					<button type="submit" class="btn btn-warning" id="cancel">돌아가기</button>
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
</div>

<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>