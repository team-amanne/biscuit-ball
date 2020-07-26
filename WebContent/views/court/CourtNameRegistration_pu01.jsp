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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" href="<%=cp%>/css/board.css" />
<script type="text/javascript" src="https://code.jquery.com/jquery.min.js"></script>
<style type="text/css">
.main {
	padding-top: 20px;
}

.paging {
	text-align: center;
}

.title-text {
	font-weight: bold;
}

.duplicate {
	color: red;
	text-align: center;
}
</style>

</head>
<body>

<div class="main container-fluid" style="overflow: hidden;">
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
			<form class="form-horizontal" id="courtNameRegisterForm">
				<div class="panel panel-default form-group">
					<div class="row panel-body">
						<div class="col-xs-1"></div>
						<div class="col-xs-2">
							<label for="inputCourtName" class="control-label">이름</label>
						</div>
						<div class="col-xs-6">
							<input type="text" class="form-control" id="courtName" name="courtName">
						</div>
						<div class="col-xs-2">
							<button type="button" class="btn btn-default btn-submit" id="btnCheck">중복체크</button>
						</div>
						<div class="col-xs-1"></div>
					</div>
					<div class="duplicate">
						<span id="msg" style="display: none;">이미 등록된 이름입니다.</span>
					</div>
					<hr>
					<div class="row panel-body">
						<div class="col-xs-4"></div>
						<div class="col-xs-4">
							<button class="btn btn-default btn-submit btn-block" type="button" id="btnSubmit">등록</button>
						</div>
						<div class="col-xs-4"></div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

<script type="text/javascript">
	var name = "";
	var checked = false;

	$(function () {
		
		window.resizeTo( 500, 380 );
		
		
		/* 이벤트 핸들러 처리 */
		
		
		$("#btnSubmit").click(function() {
			$("#msg").css("display", "none");
			
			if(!$("#courtName").val()) {
				$("#msg").text("이름을 입력해주세요.");
				$("#msg").css("display", "inline");
				return;
			}

			if($("#courtName").val() != name || !checked) {
				$("#msg").text("중복인지 확인해주세요.");
				$("#msg").css("display", "inline");
				return;
			}
				
			$("#courtNameRegisterForm").attr("action", "<%=cp %>/court/${courtCode }/name/registerdo");
			$("#courtNameRegisterForm").submit();
			
		});
		
		$("#btnCheck").click(function () {
			$("#msg").css("display", "none");
			
			if(!$("#courtName").val()) {
				$("#msg").text("이름을 입력해주세요.")
				$("#msg").css("display", "inline");
				return;
			}
			
			if($("#courtName").val() == name) {
				if(checked)
					$("#msg").text("등록 가능한 이름입니다.");
				else
					$("#msg").text("이미 등록된 이름입니다.")
				$("#msg").css("display", "inline");
				return;
			}
			
			$.ajax({
				method: "get",
				url: "<%=cp %>/ajax/check/courtname",
				data: { courtCode: "${courtCode }", courtName: $("#courtName").val().trim() },
				dataType: "text",
				success: function (data) {
					name = $("#courtName").val();
					if(data.trim() == "0") {
						checked = true;
						$("#msg").text("등록 가능한 이름입니다.");
					} else {
						checked = false;
						$("#msg").text("이미 등록된 이름입니다.");						
					}
					$("#msg").css("display", "inline");
				},
				error: function (e) {
					console.log(e.responseText);
					alert(e.responseText);
				}
			});
			
		});
	});

</script>
</body>
</html>