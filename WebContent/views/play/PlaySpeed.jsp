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
<title>빠른농구</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<style type="text/css">

	h5.region
	{
		text-align: center;
	}
	
	.big-row
	{
		margin-top: 100px;
	}
	


</style>
</head>
<body>
	<!-- 헤더 -->
		<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/PlaySubmenu.jsp"></c:import>

<div class="container-fluid">
	<div class="section-title">
		<h5>농구하기 > 사용자선택 > 빠른농구 </h5>
		<hr />
	</div>
	<div class="row big-row">
		<div class="col-md-3">
		</div>
		<div class="col-md-6">
		<form action="" class="speedPlay-form">
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-2">
						</div>
						<div class="col-md-8">
							<div class="row">
								<div class="col-md-6">
									<div class="panel panel-default">
										<div class="panel-heading">
											경기/일반 선택
										</div>
										<div class="panel-body">
											<label for="" class="radio-inline">
												<input type="radio" /> 경기
											</label>
											<label for="" class="radio-inline">
												<input type="radio" /> 일반
											</label>
										</div>
									</div>									
								</div>
								<div class="col-md-6">
									<div class="panel panel-default">
										<div class="panel-heading">
											농구공 지참 여부
										</div>
										<div class="panel-body">
											<label for="" class="radio-inline">
												<input type="radio" /> 지참
											</label>
											<label for="" class="radio-inline">
												<input type="radio" /> 미지참
											</label>
										</div>
									</div>									
								</div>								
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="panel panel-default">
										<div class="panel-heading">
											모임 지역 선택
										</div>
										<div class="panel-body row">
											<div class="col-md-3 sel-region">
											<h5 class="region">광역시·도</h5>
											</div>
											<div class="col-md-3">
												<select class="form-control">
												<option value="">광역시·도 선택</option>
												</select>
											</div>
										
											<div class="col-md-3 sel-region">
											<h5 class="region">시·군·구</h5>
											</div>
											<div class="col-md-3">
												<select class="form-control">
												<option value="">시·군·구 선택</option>
												</select>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-1">
								</div>
								<div class="col-md-10">
									<button type="button" class="btn btn-default btn-lg btn-block">빠른농구 개설</button>
									<button type="button" class="btn btn-default btn-lg btn-block">빠른농구 참여</button>
								</div>
								<div class="col-md-1">
								</div>
							</div>
						</div>
						<div class="col-md-2">
						</div>
					</div>
				</div>
			</div>
		</form>
		</div>
		<div class="col-md-3">
		</div>
	</div>
</div>

<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>