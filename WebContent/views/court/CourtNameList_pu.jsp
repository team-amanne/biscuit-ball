<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>



<title>코트 > 코트 정보 > 코트 이름</title>

<!-- 부트스트랩/제이쿼리 -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
   href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
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
</style>

</head>
<body>
<div class="main container-fluid">
	<div class="row">
		<div class="col-md-6">
			<div class="row">
				<div class="col-md-8 col-xs-8">
					<p class="title-text">코트 이름 투표</p>
				</div>
				<div class="col-md-4 col-xs-4">
					<a href="<%=cp %>/court/${courtCode }/name/register">
						<button type="button" class="btn btn-default btn-submit" >이름 등록</button>
					</a>
				</div>
			</div>
			<div class="row">
				<div class="panel panel-default">
					<div class="panel-body panel-heading list-header">
						<p></p>
					</div>
				</div>
			</div>
			<c:forEach var="dto" items="${courtNameList }">		
			<div class="panel panel-default">	
				<div class="row panel-body">
					<div class="col-xs-1">
						<span class="title-text"><span>${dto.rank }</span></span>
					</div>
					<div class="col-xs-6">
						<span class="title-text">${dto.courtName }</span>
					</div>
					<div class="col-xs-1">
					</div>
					<div class="col-sm-2 col-xs-2">
						<button type="button" class="btn btn-default btn btnUp"
						<c:if test='${(sessionScope.userInfo.userAcctCode == dto.registrantAccountCode) || (dto.pollOrNot == "YES") }'>
						disabled="disabled"
						</c:if>
						data-namecode="${dto.courtNameCode }"
						>
							<span class="far fa-thumbs-up" style="font-size:18px;"></span> 
							<span>${dto.pollCount }</span>
						</button>	
					</div>
					<div class="col-sm-2 col-xs-2">
						<c:if test="${sessionScope.userInfo.userAcctCode != dto.registrantAccountCode }">
						<button type="button" class="btn btn-default btn-danger">신고</button>
						</c:if>
					</div>	
				</div>
				<hr>
				<div class="row panel-body">
					<div class="col-xs-3">
						<c:if test="${!empty dto.registrantNickname }">
						<span>등록자 :</span>
						<span>${dto.registrantNickname }</span>
						</c:if>
					</div>
					<div class="col-xs-3">
						<span>[${dto.courtNameRegisteredDate.split("\\s")[0] }]</span>
					</div>
					<div class="col-xs-6">
					</div>
				</div>				
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6"></div>
					<div class="col-md-3"></div>
				</div>					
			</div>
			</c:forEach>
			<%-- 
			<div class="panel panel-default">	
				<div class="row panel-body">
					<div class="col-xs-1">
						<span class="title-text"><span>1</span></span>
					</div>
					<div class="col-xs-6">
						<span class="title-text">길동이네 코트</span>
					</div>
					<div class="col-xs-1">
					</div>
					<div class="col-sm-2 col-xs-2">
						<a href="#">	
							
							<button type="button" class="btn btn-default btn">
								<span class="far fa-thumbs-up" style="font-size:18px;"></span> 
								<span>30</span>
							</button>	
						</a>					
					</div>
					<div class="col-sm-2 col-xs-2">
						<button type="button" class="btn btn-default btn-danger">신고</button>
					</div>	
				</div>
				<hr>
				<div class="row panel-body">
					<div class="col-xs-3">
						<span>등록자 :</span>
						<span>동규</span>
					</div>
					<div class="col-xs-3">
						<span>[20-07-01]</span>
					</div>
					<div class="col-xs-6">
					</div>
				</div>																																																									
			</div>
			--%>
			<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6 paging">
						${indexList }
						<%-- 
						<ul class="pagination">
						li태그의 클래스에 disabled를 넣으면 마우스를 위에 올렸을 때 클릭 금지 마크가 나오고 클릭도 되지 않는다.
						<li class="disabled"><a href="#"> <span>«</span></a></li>																
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#"> <span>»</span></a></li>
						disabled의 의미는 앞의 페이지가 존재하지 않다는 뜻이다.
						</ul>
						 --%>
					</div>
					<div class="col-md-3"></div>
				</div>	
			
			
		</div>
	</div>
</div>

<script type="text/javascript">

	$(function () {
		
		window.resizeTo( 600, 700 );
		
		$(".btnUp").click(function () {
			
			if($(this).attr("disabled") == "disabled")
				return;
			var url = "<%=cp %>/court/${courtCode }/name/" + $(this).data("namecode") + "/poll";
			console.log(url)
			
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

	});
</script>
</body>
</html>