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
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/default.css">
<script type="text/javascript" src="https://code.jquery.com/jquery.min.js"></script>
<style type="text/css">

	h5.region
	{
		text-align: center;
	}
	
	.big-row
	{
		margin-top: 100px;
	}
	
	.game_type_align, .ball_align
	{
		text-align: center;
	}
	
</style>
<script type="text/javascript">

$(document).ready(function()
{

	
	$("#Speed_join").click(function()
	{	
		
		$("#frm").attr("action","<%=cp%>/play/meeting").submit();
	});
	
	

	/* 도시, 시군구 선택 */
	$("#region_select").on("change", function()
     {
        $.ajax({
           type: "get",
           dataType: "json",
           url: "<%=cp %>/ajax/citylist",
           data: {regionCode: $(this).val()},
           success: function(data) {
              var result = "<option value=''>시·군·구</option>\n";
              for(var i=0; i<data.length; i++)
                 result += "<option value='" + data[i].cityCode +"'>" + data[i].cityName + "</option>\n";
              
              $("#city_select").html(result);
           },
           error: function(e){
              alert(e.responseText);
           }
        });
        return false;
        
     });
	
	$("#city_select").change(function() {	 	
	 	$("#regiondata").val($("#region_select option:selected").text());
	 	alert($("#city_select option:selected").val())
	 	$("#citydata").val($("#city_select option:selected").text());
	});

	
	$("#Speed_create").on("click", function() {
		
		if($(':radio[name="game_type"]:checked').length < 1 || $(':radio[name="ball"]:checked').length < 1){
		    alert('카테고리를 선택해주세요');
		    return false;
		   
		}
		if( $("#city_select").val() == "" ||  $("#city_select").val() == "시·군·구 선택" ) 
	    {
	       alert('지역을 선택해주세요');
	       $("#city_select").focus();
	       return false;
	    }
		
		
		$("#frm").submit();		
	});	
	
	

});

</script>
</head>
<body>
	<!-- 헤더 -->
		<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/PlaySubmenu.jsp"></c:import>

<div class="main container-fluid">
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<div class="section-title">
			<h5>농구하기 > 사용자선택 > 빠른농구 </h5>
			<hr />
		</div>
	</div>
	<div class="col-md-2"></div>
	<div class="row big-row">
		<div class="col-md-3">
		</div>
		<div class="col-md-6">
		<form action="<%=cp%>/play/meeting/create" class="speedPlay-form" method="post" id="frm" name="frm">
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
										<div class="panel-body game_type_align">
											<label for="rank" class="radio-inline">
												<input type="radio" name="game_type" id="rank" value="rank" value="1"/> 경기
											</label>
											<label for="normal" class="radio-inline">
												<input type="radio" name="game_type" id="normal" value="normal" value="0" /> 일반
											</label>
										</div>
									</div>									
								</div>
								<div class="col-md-6">
									<div class="panel panel-default">
										<div class="panel-heading">
											농구공 지참 여부
										</div>
										<div class="panel-body ball_align">
											<label for="yes" class="radio-inline">
												<input type="radio" name="ball" id="yes" value="yes" /> 지참
											</label>
											<label for="no" class="radio-inline">
												<input type="radio" name="ball" id="no" value="no"/> 미지참
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
												<select class="form-control" id="region_select" name="region_select">
													<option selected="selected">광역시·도 선택</option>
												<c:forEach var="city" items="${regionList }">
													<option value="${city.regionCode}">${city.regionName }</option>
												</c:forEach>
												</select>												
												<input type="hidden" name="regiondata" id="regiondata" value="">
											</div>
											<div class="col-md-3 sel-region">
												<h5 class="region">시·군·구</h5>
											</div>
											<div class="col-md-3">
												<select class="form-control" id="city_select" name="city_select">
													<option selected="selected">시·군·구 선택</option>
												</select>
												<input type="hidden" name="citydata" id="citydata" value="">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-1">
								</div>
								<div class="col-md-10">
									<button type="button" class="btn btn-default btn-lg btn-block" name="button" id="Speed_create">빠른농구 개설</button>
									<button type="button" class="btn btn-default btn-lg btn-block" name="button" id="Speed_join">빠른농구 참여</button>
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