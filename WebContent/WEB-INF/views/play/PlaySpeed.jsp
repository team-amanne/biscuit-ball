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
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/default.css">
<script type="text/javascript" src="https://code.jquery.com/jquery.min.js"></script>

<!-- 모달 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />


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
   .modal
   {
   		max-width: 100%; width: auto;
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
       $("#citydata").val($("#city_select option:selected").text());
   });

   
   $("#Speed_create").on("click", function() {
      
      if($(':radio[name="game_type"]:checked').length < 1 || $(':radio[name="ballExistOrNot"]:checked').length < 1){
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
   
   var modalLayer = $("#modalLayer");
   var modalLink = $(".modalLink");
   var modalCont = $(".modalContent");
   var marginLeft = modalCont.outerWidth()/2;
   var marginTop = modalCont.outerHeight()/2; 
  
   	$("#Speedjoin").click(function(){
    modalLayer.fadeIn("slow");
    modalCont.css({"margin-top" : -marginTop, "margin-left" : -marginLeft});
    $(this).blur();
    $(".modalContent > a").focus(); 
     
     
    alert("확인");
     var inputRequest = "";
 	   alert($("#citydata").val());
 	   alert($('input[name="ballExistOrNot"]:checked').val());
 	   alert()
    	// 사용자 입력 값 있을 시에만 에이젝스 실행
    if ((($("#regionSelect").text()!="광역시·도" && $("#citySelect").val() != null) || $("#myCourt").is(":checked")==true) 
  		  		&& $("#courtCode").val() != null)
 	  {
  	  
  	var count = 1;
  	
 	  	$.ajax
 	  	({
 	  		type: "get",
 	        dataType: "json",
 			url: "<%=cp%>/ajax/meeting/modal",
 	        data :
 	        {
 	        	cityCode : $("#citydata").val(),
 	        	speedSeqNumber : count,
 	        	ballExistOrNot : $('input[name="ballExistOrNot"]:checked').val(),
 	            meetingTypeCode : $('input[name="meetingType"]:checked').val(),

 	        },
 	        success : function(data)
 	        { 	                  
            if (data.length==0)
 			{
 				listPrint += "<div align='center' style='font-size: 14pt; margin-top: 2%;'>해당 조건의 모임이 존재하지 않습니다.</div>"
 			}
            else
            {
            	
              } 	      
 	          $("#meetingList").html(listPrint);  
 	          //alert(listPrint); 	           
 	          // 모임 제목 클릭하면 모임으로
 	    		$(".meetingPage").click(function()
 	          	{
 	          		// var id = ($(this).attr('id'));
 	          		var meetingCode = $(this).attr('id');
 	          		$(location).attr("href","<%=cp%>/play/meeting/"+ meetingCode);
 	            	//childWindow.resizeTo(800, 800);
 	        	});
 	            
 	            // 코트 이름 클릭하면 코트 페이지로
 	            $(".courtName").click(function()
 	            {
 	               var courtCode = ($(this).attr('id')); 	           
 	               $(location).attr("href","<%=cp%>/court/"+ courtCode);
 	               
 	            });
 	            
 	         },
 	         error : function(e)
 	         {
 	            alert(e.responseText);
 	         }
 	               
    	});

 } // 모든 값이 채워졌을 때  모임 검색이 실행 됨
 else		// 값이 하나라도 없을 때
 {
 	   
 	   if ( !$("#regionSelect").val() || !$("#citySelect").val() )
 	{
 		inputRequest += "모임 지역을 선택해주세요 <br>";
 	}
 	   // 입력 요청 메시지 출력
 	   $("#requestmessage").html(inputRequest);
 	   return;
 	   
 }
     
     return false;
   });
  
   $(".modalContent > button").click(function(){
     modalLayer.fadeOut("slow");
     modalLink.focus();
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

				<div class="row">
					<div class="col-md-10"><h3>모임 상세</h3></div>
					<div class="col-md-2">
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default article">
						<div class="panel-body">
							<div class="panel panel-default">
								<div class="panel-body center-move">
								<div class="col-md-6">
									<div class="col-md-4 info-title">
									<span class="board-header">제목</span>
									</div>
									<div class="col-md-8">
									제목입니다아
									</div>
								</div>
								<div class="col-md-4">
									<div class="col-md-4 info-title">
									<span class="board-header">주장</span>
									</div>
									<div class="col-md-8">
									아맞네
									</div>
								</div>
								<div class="col-md-2 info-title">
									<button class="btn btn-default btn-xs">
									모임 신고 하기
									</button>
								</div>
								
								</div>
							</div>
							
							<div class="panel panel-default">
								<div class="panel-body center-move">
								<div class="col-md-6">
									<div class="col-md-4 info-title">
									<span class="board-header">모임장소</span>
									</div>
									<div class="col-md-8">
									서울 마포구 쌍용체육관
									</div>
								</div>
								<div class="col-md-4">
									<div class="col-md-5 info-title">
									<span class="board-header">시합/일반</span>
									</div>
									<div class="col-md-7">
									시합
									</div>
								</div>		
								<div class="col-md-2 info-title" >
									
									<span>n/n</span>명
								</div>							
								
							</div>
							
							</div>
						<div class="panel panel-default">
								<div class="panel-body center-move">
								<div class="col-md-3">
									<div class="col-md-8 info-title">
									참여자 목록
									</div>
								</div>		
								<div class="col-md-9">
									<div class="panel panel-default">
										<div class="panel-body">
										<div class="panel panel-default">
										<div class="panel-body user-info">
										<div class="col-md-4">
										<span class="board-header">닉네임</span>
										</div>
										<div class="col-md-4">
										<span class="board-header">티어</span>
										</div>
										<div class="col-md-4">
										<span class="board-header">페어플레이 점수</span>
										</div>
										</div>
										</div>
										<div class="panel panel-default">
										<div class="panel-body user-info">
										
										<div class="col-md-4">아맞네</div>
										<div class="col-md-4">4 teir</div>
										<div class="col-md-4">★★★☆</div>
										
										<div class="col-md-4">규쿤</div>
										<div class="col-md-4">3 teir</div>
										<div class="col-md-4">★★★☆</div>
										
										<div class="col-md-4">갓진녕</div>
										<div class="col-md-4">5 teir</div>
										<div class="col-md-4">★★★☆</div>
										
										</div>
										</div>
										
										</div>
									</div>
								</div>								
							</div>
							
							</div>
							<div class="panel panel-default">
								<div class="panel-body center-move">
								<div class="col-md-3">
									<div class="col-md-8 info-title">
									<span class="board-header">공지 사항</span>
									</div>
								</div>		
								<div class="col-md-9">
									<div class="panel panel-default">
										<div class="panel-body">
										
											오늘 모임 후 뒷풀이 있습니다. 
											참여는 자유롭게 해주세요
										</div>
									</div>
								</div>								
							</div>
							
							</div>
							<div class="yesorno">
							<a href="#" rel="modal:close">닫기</a>
							<button class="btn btn-default btn-lg">
								목록으로
							</button>
						</div>						
					</div>
				</div>
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
                                    <input type="radio" name="game_type" id="rank" value="rank" value="ZL01"/> 시합
                                 </label>
                                 <label for="normal" class="radio-inline">
                                    <input type="radio" name="game_type" id="normal" value="normal" value="ZL02" /> 일반
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
                                    <input type="radio" name="ballExistOrNot" id="yes" value="ZU01" /> 지참
                                 </label>
                                 <label for="no" class="radio-inline">
                                    <input type="radio" name="ballExistOrNot" id="no" value="ZU02"/> 미지참
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
                         	<a href="#ex1" rel="modal:open">
                           	<button type="button" class="btn btn-default btn-lg btn-block" name="button" id="Speedjoin">모달</button>
                           	</a>
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
</div>

<c:import url="../base/Footer.jsp"></c:import>

<script type="text/javascript">

//모임 제목 클릭하면 모임으로
$(".meetingPage").click(function()
{
   //var id = ($(this).attr('id'));
   var meetingCode = $(this).attr('id');
   
   $(location).attr("href","<%=cp%>/play/meeting/"+ meetingCode);
   //childWindow.resizeTo(800, 800);
});




</script>


</body>
</html>

