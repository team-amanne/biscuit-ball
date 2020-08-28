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
<title>BiscuitBail > 빠른농구</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery.min.js"></script>

<!-- 모달 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />


<style type="text/css">
h5.region {
	text-align: center;
}

.big-row {
	margin-top: 100px;
}

.game_type_align, .ball_align {
	text-align: center;
}

.modal {
	max-width: 100%;
	width: auto;
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
           url: "<%=cp%>/ajax/citylist",
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
       $("#citydata").val($("#city_select option:selected").text());
   });

    
   $("#Speed_create").on("click", function() {
      
      if($(':radio[name="meetingType"]:checked').length < 1 || $(':radio[name="ballExistOrNot"]:checked').length < 1){
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
   
   
  
   count = 1; 
   var modalLayer = $("#modalLayer");
   var modalLink = $(".modalLink");
   var modalCont = $(".modalContent");
   var marginLeft = modalCont.outerWidth()/2;
   var marginTop = modalCont.outerHeight()/2; 
   
   
  
   	$("#Speedjoin").click(function speedMeet(page){
    modalLayer.fadeIn("slow");
    modalCont.css({"margin-top" : -marginTop, "margin-left" : -marginLeft});
    $(this).blur();
    $(".modalContent > a").focus(); 

    
   
    articlePrint =""; 
 	  /*  alert($("#city_select").val());
 	   alert($('input[name="ballExistOrNot"]:checked').val());
 	   alert($('input[name="meetingType"]:checked').val()); */
    	// 사용자 입력 값 있을 시에만 에이젝스 실행
  	
 	  	$.ajax
 	  	({
 	  		type: "get",
 	        dataType: "json",
 			url: "<%=cp%>/ajax/meeting/modal",
 	        data :
 	        {
 	        	cityCode : $("#city_select").val(),
 	        	speedSeqNumber : count,
 	        	ballExistOrNot : $('input[name="ballExistOrNot"]:checked').val(),
 	            meetingTypeCode : $('input[name="meetingType"]:checked').val(),

 	        },
 	        success : function(data)
 	        { 	        		
            if (Object.keys(data).length==0)
 			{
            							
            	articlePrint = "<div align='center' style='font-size: 14pt; margin-top: 2%;'>해당 조건의 모임이 존재하지 않습니다.</div>"
 			}
            else
            {
            	$("#meetCode").val(data.meetingCode);
                articlePrint += "<div class='row'><div class='panel panel-default article'><div class='panel-body'>"
                articlePrint += "<div class='panel panel-default'><div class='panel-body center-move'>"
                articlePrint += "<div class='col-md-6'><div class='col-md-6 info-title'><span class='board-header'>제목</span></div>"
                articlePrint +=	"<div class='col-md-6'><span class='meetingPage' id='"+ data.meetingCode +"'>"+ data.meetingSubject+ "</span></div></div>"
                articlePrint += "<div class='col-md-6'><div class='col-md-6 info-title'><span class='board-header'>주장</span></div>"
                articlePrint +=	"<div class='col-md-6'><span class='captainName' id='"+ data.captainAcctCode +"'>"+ data.captainName+ "</span></div></div></div></div>"				
               
                articlePrint += "<div class='panel panel-default'><div class='panel-body center-move'>"
                articlePrint += "<div class='col-md-6'><div class='col-md-6 info-title'><span class='board-header'>시합/일반</span></div>"
                articlePrint += "<div class='col-md-6'>${" + data.meetingTypeName + "=='ZL01'?'시합':'일반'}</div></div>"
                articlePrint += "<div class='col-md-6'><div class='col-md-6 info-title'><span class='board-header'>인원수</span></div>"
                articlePrint += "<div class='col-md-6 info-title'><span>" + data.nowPeopleNumber + "/" + data.meetingPeopleNumber + "</span>명</div></div></div></div>";
                
                
                articlePrint += "<div class='panel panel-default'><div class='panel-body center-move'>"
               	articlePrint += "<div class='col-md-12'><div class='col-md-4 info-title'><span class='board-header'>모임장소</span></div>"
               	articlePrint +=	"<div class='col-md-8'>"
               	if(data.courtRegistrationCode != null)
               	{
               		articlePrint += "<a href='<%=cp%>/court/" + data.courtRegistrationCode + "' class='icon_connect'><span>" + data.courtName + "</span></a>"
               	}
            	articlePrint +=	"</div></div></div></div>"
            	
            	
            		articlePrint += "<div class='panel panel-default'><div class='panel-body center-move'>"
            	$.ajax({
            		type: "get",
                    dataType: "json",
                    url: "<%=cp%>/ajax/meetingmember/modal",
                    data: {meetingCode : data.meetingCode},
                    success: function(member)
                    {

                    	articlePrint += "<div class='col-md-3'><div class='col-md-8 info-title'>참여자 목록</div></div>"
                        articlePrint += "<div class='col-md-9'><div class='panel panel-default'><div class='panel-body'>"
                        articlePrint += "<div class='panel panel-default'><div class='panel-body user-info'>"
                        articlePrint += "<div class='col-md-4'><span class=''>닉네임</span></div><div class='col-md-4'><span class=''>티어</span></div><div class='col-md-4'><span class=''>페어플레이 점수</span></div></div></div>" 
                    	articlePrint += "<div class='panel panel-default'><div class='panel-body user-info'>"
                    	
                    	
                    	for(var i=0; i<member.length; i++)
	                    {
                    		
                    		articlePrint += "<div class='col-md-4'>" 
                    		articlePrint += "<a href='<%=cp %>/userpage/" + member[i].userAccountCode + "'>" + member[i].userNickname + "</a>"
                    		articlePrint += "</div>"
                    		articlePrint += "<div class='col-md-4'>" + member[i].tierName + "</div>"
                    		articlePrint += "<div class='col-md-4'>" 
                    		if(member[i].fairplayScore==5)
                    		{
                    			articlePrint += "<span class='fa fa-star'></span><span class='fa fa-star'></span><span class='fa fa-star'></span><span class='fa fa-star'></span><span class='fa fa-star'></span>"
                    		}                    		
                    		else if(member[i].fairplayScore>=4.5)
                    		{
                    			articlePrint += "<span class='fa fa-star'></span><span class='fa fa-star'></span><span class='fa fa-star'></span><span class='fa fa-star'></span><span class='fa fa-star-half'></span>"
                    		}
                    		else if(member[i].fairplayScore>=4)
                    		{
                    			articlePrint += "<span class='fa fa-star'></span><span class='fa fa-star'></span><span class='fa fa-star'></span><span class='fa fa-star'></span>"
                    		}
                    		else if(member[i].fairplayScore>=3.5)
                    		{
                    			articlePrint += "<span class='fa fa-star'></span><span class='fa fa-star'></span><span class='fa fa-star'></span><span class='fa fa-star-half'></span>"
                    		}
                    		else if(member[i].fairplayScore>=3)
                    		{
                    			articlePrint += "<span class='fa fa-star'></span><span class='fa fa-star'></span><span class='fa fa-star'></span>"
                    		}
                    		else if(member[i].fairplayScore>=2.5)
                        	{
                    			articlePrint += "<span class='fa fa-star'></span><span class='fa fa-star'></span><span class='fa fa-star-half'></span>"	
                        	}
                    		else if(member[i].fairplayScore>=2)
                        	{
                    			articlePrint += "<span class='fa fa-star'></span><span class='fa fa-star'></span>"	
                        	}
                    		else if(member[i].fairplayScore>=1.5)
                        	{
                    			articlePrint += "<span class='fa fa-star'></span><span class='fa fa-star-half'></span>"
                        	}
                    		else if(member[i].fairplayScore>=1)
                        	{
                    			articlePrint += "<span class='fa fa-star'></span>"	
                        	} 
                    		else if(member[i].fairplayScore>=0.5)
                        	{
                    			articlePrint += "<span class='fa fa-star-half'></span>"	
                        	} 
                    		else
                    		{
                    			articlePrint += "<span>정보없음</span>"
                    		}
                    		articlePrint += "</div>"
	                    }
                    	articlePrint += "</div></div></div></div></div></div></div>"
                    	articlePrint += "<div class='panel panel-default'><div class='panel-body center-move'>"
                    	articlePrint += "<div class='col-md-3'><div class='col-md-8 info-title'><span class=''>공지 사항</span></div></div>"
                        articlePrint += "<div class='col-md-9'><div class='panel panel-default'><div class='panel-body'>" + data.meetingNotice + "</div></div></div></div></div>"
                        
                        
                        
                        
						
                    	$("#ex2").html(articlePrint);
	
                    },
                    error : function(e)
        	        {
        	            alert(e.responseText);
        	        }
                    
            	});
            } 	      
 	            
 	         },
 	         error : function(e)
 	         {
 	        	count=count-1
 	            alert("해당 조건의 모임이 존재하지 않습니다.");
 	        	$.modal.close();
 	         }
 	               
    	});
   });
  
   $(".modalContent > button").click(function (){
     modalLayer.fadeOut("slow");
     modalLink.focus();
    
   });  
   
   $("#prev").click(function(){
       // 팝업 호출 url
       	if(count > 1)
    	{
       		count=count-1
 	       	$.modal.close();
 	       	$("#Speedjoin").trigger("click");
    	}       
       	else
       	{
       		alert("첫페이지입니다");	
       	}
	         
	});
   
   $("#next").click(function(){
       // 팝업 호출 url
       count=count+1
       $.modal.close();
       $("#Speedjoin").trigger("click");  
	});
   
   
   $("#close").click(function modalClose(){
	   
	   $.modal.close();
	   
	});
	$("#joinMeeting").click(function (){
	   
		$.modal.close();
		var ballExistOrNot = confirm("모임에 농구공을 지참하실 예정입니까?");
		var meetingCode = $("#meetCode").val()
		var url = "<%=cp%>/play/meeting/"+$("#meetCode").val()+"/join"
		alert(url);   	
		   	if(ballExistOrNot == true)
		   		location.href  = url + "?ballExistOrNot=ZU01"
		   	else if(ballExistOrNot == false)
		   		location.href  = url + "?ballExistOrNot=ZU02"
	   
	});

});




//모임 검색
$("#playSearch").click(function()
{    
	// 입력 요청 메시지 담을 변수
	

});   

</script>
</head>
<body>
	<!-- 헤더 -->


	<div class="row modal" id="ex1">
		<div class='row'>
			<div class='col-md-10'><h3>모임 상세</h3></div>
			<div class='col-md-2'></div>
		</div>
		<div id="ex2"></div>
	<div class="panel panel-default article">
		<div class="panel-body center-move"> 
			<button class='btn btn-default btn-lg btn-submit' type='button' id='prev'>이 전</button>
			<button class='btn btn-default btn-lg btn-submit' id='joinMeeting'>참 여</button>
			<input type="hidden" id="meetCode">	
			<button class='btn btn-default btn-lg btn-submit' type='button' id='next'>다 음</button>
			<button class='btn btn-default btn-lg btn-right' type='button' id='close' onclick='modalClose()'>닫기</button>			
		</div>
	</div>
	</div>






	<c:import url="../base/Header.jsp"></c:import>
	<c:import url="../base/PlaySubmenu.jsp?active=mode"></c:import>

	<div class="main container-fluid">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div class="section-title">
				<h5></h5>
				<hr />
			</div>
		</div>
		<div class="col-md-2"></div>
		<div class="row big-row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<form action="<%=cp%>/play/meeting/create" class="speedPlay-form"
					method="post" id="frm" name="frm">
					<div class="row">
						<div class="col-md-12">
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8">
									<div class="row">
										<div class="col-md-6">
											<div class="panel panel-default">
												<div class="panel-heading">경기/일반 선택</div>
												<div class="panel-body game_type_align">
													<label for="rank" class="radio-inline"> <input
														type="radio" name="meetingType" id="rank" value="ZL01" />
														시합
													</label> <label for="normal" class="radio-inline"> <input
														type="radio" name="meetingType" id="normal" value="ZL02" />
														일반
													</label>
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="panel panel-default">
												<div class="panel-heading">농구공 지참 여부</div>
												<div class="panel-body ball_align">
													<label for="yes" class="radio-inline"> <input
														type="radio" name="ballExistOrNot" id="yes" value="ZU01" />
														지참
													</label> <label for="no" class="radio-inline"> <input
														type="radio" name="ballExistOrNot" id="no" value="ZU02" />
														미지참
													</label>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="panel panel-default">
												<div class="panel-heading">모임 지역 선택</div>
												<div class="panel-body row">
													<div class="col-md-3 sel-region">
														<h5 class="region">광역시·도</h5>
													</div>
													<div class="col-md-3">
														<select class="form-control" id="region_select"
															name="region_select">
															<option selected="selected">광역시·도 선택</option>
															<c:forEach var="city" items="${regionList }">
																<option value="${city.regionCode}">${city.regionName }</option>
															</c:forEach>
														</select> <input type="hidden" name="regiondata" id="regiondata"
															value="">
													</div>
													<div class="col-md-3 sel-region">
														<h5 class="region">시·군·구</h5>
													</div>
													<div class="col-md-3">
														<select class="form-control" id="city_select"
															name="city_select">
															<option selected="selected">시·군·구 선택</option>
														</select> <input type="hidden" name="citydata" id="citydata"
															value="">
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-1"></div>
										<div class="col-md-10">
											<button type="button"
												class="btn btn-default btn-lg btn-block" name="button"
												id="Speed_create">빠른농구 개설</button>
											<a href="#ex1" rel="modal:open">
												<button type="button"
													class="btn btn-default btn-lg btn-block" name="button"
													id="Speedjoin">빠른농구 참여</button>
											</a>
											<button type="button"
												class="btn btn-default btn-lg btn-block" name="button"
												id="join_Meeting" style="display: none;"></button>
										</div>


										<div class="col-md-1"></div>
									</div>
								</div>
								<div class="col-md-2"></div>
							</div>
						</div>
					</div>
				</form>


			</div>
		</div>
	</div>

	<c:import url="../base/Footer.jsp"></c:import>

	<script type="text/javascript">





</script>


</body>
</html>

