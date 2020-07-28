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
<title>BiscuitBail > 코트 이름 신고</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=cp %>/css/default.css" />
<style type="text/css">
.board-header
{
	font-size: 12pt;
	font-weight: bold;
	margin: 10px 0px 10px 0px;
}

</style>
</head>



	<div class="col-md-4">

		<div class="col-md-12">
			<p class="title-text"><span>코트이름</span> 신고</p>
		</div>
		<div class="col-md-12">
		<div class="panel panel-default">
		<div class="panel-body">
			<div class="col-md-12">
			<div class="col-md-4 board-header">
				<span class="board-header">
					카테고리
				</span>
			</div>
			<div class="col-md-8">
				<select name="" id="" class="form-control" disabled="disabled">
					<option value="">코트이름</option>
				</select>
			</div>
			</div>
			<div class="col-md-12">
			<div class="col-md-4 board-header">
				<span class="board-header">
					신고사유
				</span>
			</div>
			<div class="col-md-8">
				<select name="" id="" class="form-control">
					<option value="">욕설 및 도배</option>
				</select>
			</div>
			</div>
			<hr />
			<div class="col-md-12">
			<div class="col-md-4 board-header">
				<span class="board-header">
					게시자
				</span>
			</div>
			<div class="col-md-8">
				<input type="text" class="form-control" value="아맞네" readonly="readonly">
			</div>
			</div>
			
			<div class="col-md-12">
			<div class="col-md-12 board-header">
				<span class="board-header">
					신고 내용
				</span>
			</div>
			<div class="col-md-12">
				<div class="panel panel-default">
				<div class="panel-body">
				<textarea name="" id="" cols="50" rows="10" class="form-control">신고 내용 무엇인지 입력
				</textarea>
				</div>
				
				</div>
			</div>
			</div>
			<div class="col-md-12" align="center">
				<button class="btn btn-default btn-lg btn-submit">
				신고 등록
				</button>
			</div>
		</div>
	</div>
	</div>
	</div>

</html>