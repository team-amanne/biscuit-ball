<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코트 > 코트 정보 > 투표</title>

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

<!-- 부트스트랩/제이쿼리 -->
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<link rel="stylesheet" href="<%=cp%>/css/board.css" />
<link rel="stylesheet" href="<%=cp%>/css/default.css" />
</head>
<body onload="init()">
<div class="panel panel-default">
	<div class="col-md-4 panel-body">

		<div class="row">
			<div class="col-md-12">
				<p class="title-text" style="text-align: center;">코트 
				<c:choose>
					<c:when test='${court.courtStatus == "가등록 코트" }'>
					등록
					</c:when>
					<c:when test='${court.courtStatus == "삭제 투표중" }'>
					삭제
					</c:when>
				</c:choose>
				투표</p>
				<hr>
			</div>
			<div class="row">
				<div class="col-sm-1 col-xs-1"></div>
				<div class="col-sm-4 col-xs-4 panel panel-default">

					<div class="row  board-header board-body">
						<span class="subtitle-text">찬성</span>
					</div>
					<div class="row board-body  panel-body">
						<span class="subtitle-text" id="yesCount">
						<c:choose>
							<c:when test='${court.courtStatus == "가등록 코트" }'>
							${court.enrollYesCount == null ? "0" : court.enrollYesCount }
							</c:when>
							<c:when test='${court.courtStatus == "삭제 투표중" }'>
							${court.delRequestPollYesCount == null ? "0" : court.delRequestPollYesCount }
							</c:when>
						</c:choose>
						</span>
					</div>
					<div class="row board-body  panel-body">
						<button type="button" class="btn btn-default btn btnUp
						<c:if test="${ court.courtStatus == '가등록 코트' and court.enrollYesOrNo == 'YES'}">
						active
						</c:if>
						<c:if test="${ court.courtStatus == '삭제 투표중' and court.delRequestYesOrNo == 'YES' }">
						active
						</c:if>
						"
						<c:if test="${ court.courtStatus == '가등록 코트' and court.enrollPollOrNot == 'YES'}">
						disabled="disabled"
						</c:if>
						<c:if test="${ court.courtStatus == '삭제 투표중' and court.delRequestPollOrNot == 'YES' }">
						disabled="disabled"
						</c:if>
						>
							<span class="far fa-thumbs-up" style="font-size: 18px;"></span>
						</button>
					</div>
				</div>
				<div class="col-sm-2 col-xs-2"></div>
				<div class="col-sm-4 col-xs-4  panel panel-default">
					<div class="row  board-header board-body">
						<span class="subtitle-text">반대</span>
					</div>
					<div class="row board-body  panel-body">
						<span class="subtitle-text" id="noCount">
						<c:choose>
							<c:when test='${court.courtStatus == "가등록 코트" }'>
							${court.enrollNoCount == null ? "0" : court.enrollNoCount }
							</c:when>
							<c:when test='${court.courtStatus == "삭제 투표중" }'>
							${court.delRequestPollNoCount == null ? "0" : court.delRequestPollNoCount }
							</c:when>
						</c:choose>
						</span>
					</div>
					<div class="row board-body  panel-body">
						<button type="button" class="btn btn-default btn btnDown
						<c:if test="${ court.courtStatus == '가등록 코트' and court.enrollYesOrNo == 'NO'}">
						active
						</c:if>
						<c:if test="${ court.courtStatus == '삭제 투표중' and court.delRequestYesOrNo == 'NO' }">
						active
						</c:if>
						"
						<c:if test="${ court.courtStatus == '가등록 코트' and court.enrollPollOrNot == 'YES'}">
						disabled="disabled"
						</c:if>
						<c:if test="${ court.courtStatus == '삭제 투표중' and court.delRequestPollOrNot == 'YES' }">
						disabled="disabled"
						</c:if>
						>
							<span class="far fa-thumbs-down" style="font-size: 18px;"></span>
						</button>
					</div>
				</div>
				<div class="col-sm-1 col-xs-1"></div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">

function init() {
	$(".btnUp").click(function () {
		
		if($(this).is(".active"))
			return;
		
		var url = "<%=cp %>/court/${court.courtCode }/";
		<c:if test="${court.courtStatus == '가등록 코트'}">
		url += "registerpoll/up";
		</c:if>
		<c:if test="${court.courtStatus == '삭제 투표중'}">
		url += "deletepoll/up?requestCode=${court.delRequestCode }";
		</c:if>
		
		$.ajax({
			type: "get",
			url: url,
			dataType: "text",
			success: function (data) {
				if(data.trim() == "1") {			
					window.location.reload();
				}
			},
			error: function (e) {
				console.log(e);
				alert(e.responseText);
			}
		});
	});

	$(".btnDown").click(function () {
		
		if($(this).is(".active"))
			return;
		
		var url = "<%=cp %>/court/${court.courtCode }/";
		<c:if test="${court.courtStatus == '가등록 코트'}">
		url += "registerpoll/down";
		</c:if>
		<c:if test="${court.courtStatus == '삭제 투표중'}">
		url += "deletepoll/down?requestCode=${court.delRequestCode }";
		</c:if>
		
		$.ajax({
			type: "get",
			url: url,
			dataType: "text",
			success: function (data) {
				if(data.trim() == "1") {			
					window.location.reload();
				}
			},
			error: function (e) {
				console.log(e);
				alert(e.responseText);
			}
		});
	});
}

</script>
</body>
</html>