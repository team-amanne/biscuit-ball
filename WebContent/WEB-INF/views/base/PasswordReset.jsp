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
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<style type="text/css">
.input-title {
	font-size: 12pt;
	padding-top: 2%;
	font-weight: bold;
}
.text-orange
{
	text-align: right;
	font-size: 10pt;
}

.sendMessage
{
	display: none;
}

.inputCode
{
	display: none;
}

.errMessage
{
	display: none;
}

</style>
<script type="text/javascript">

	$(document).ready(function()
	{
		$("#btnSendCode").click(function()
		{
			//alert("확인");
			$.ajax(
			{
				url: "<%=cp%>/ajax/check/email",
				type: "get",
				data: {email: $("#userEmail").val()},
				success: function(data)
				{
					// 입력한 이메일이 존재하는 경우
					if (data==1)
					{
						
						$.ajax(
						{
							
							url: "<%=cp%>/ajax/passwardreset/usercode",
							type: "get",
							data: {userEmail: $("#userEmail").val()},
							success: function(data)
							{
								if (data != 0)
								{
									// Test 생성된 유저코드
									//alert(data+" 는 유저코드");
									
									// 비번 변경 코드 생성하는 에이젝스
									$.ajax(
									{
										url: "<%=cp%>/ajax/passwardreset/issuecode",
										type: "post",
										data: {userCode: data},
										success: function(code)
										{
											if (code!=0)
											{
												alert(code+" 는 유저코드");
												
												$(".sendMessage").css("display","inline");
												$(".inputCode").css("display","inline");
											}
											else
											{
												alert("코드가 발급되지 못했습니다.");
											}
										},
										error: function(e)
										{
								          alert(e.responseText);
								        }
										
									});
								}
								
								//consol.log("실패");
							}
							
						});
						
						
					}
					// 입력한 이메일이 존재하지 않는 경우
					else
					{
						$(".sendMessage").text("가입하지 않은 이메일입니다.");
						$(".sendMessage").css("display","inline");
					}
				},
				error: function(e)
				{
		          alert(e.responseText);
		        }
			});
		});
	});
	

</script>

</head>
<body>

	<c:import url="../base/Header.jsp"></c:import>
	<div class="container-fluid">
		<div class="section-title container">
			<p>로그인 > 비밀번호 재설정</p>
			<hr />
		</div>

		<div class="col-md-2 col-xs-2"></div>
		<div class="col-md-8 col-xs-8">
			<div class="col-md-12 col-xs-12">
				<p class="subtitle-text">비밀번호 재설정 인증을 받을 이메일을 입력해주세요</p>
			</div>
			<div class="col-md-12 col-xs-12">

				<ul class="list-group">

					<li class="list-group-item board-body">
						<div class="row">
							<div class="col-sm-2 col-xs-2" align="center">
								<span class="input-title">이메일 입력</span>
							</div>
							<div class="col-sm-8 col-xs-8">
								<input type="text" class="form-control" id="userEmail">
								
							</div>
							<div class="col-sm-2 col-xs-2">
								<button id="btnSendCode" class="btn btn-submit btn-block btn-default">
									인증 코드 발송</button>
							</div>

						</div>
					</li>

				</ul>
				<p class="text-orange sendMessage">인증코드가 회원님의 이메일로 발송되었습니다.</p>
			</div>
			

			<div class="col-md-12 col-xs-12 inputCode">

				<ul class="list-group">

					<li class="list-group-item board-body">
						<div class="row">
							<div class="col-sm-2 col-xs-2" align="center">
							</div>
							<div class="col-sm-8 col-xs-8">
								<input type="text" class="form-control" />
							</div>
							<div class="col-sm-2 col-xs-2">
								<button class="btn btn-submit btn-block btn-default">
									인증 코드 입력</button>
							</div>

						</div>
					</li>
				</ul>
				<p class="text-orange errMessage">잘못된 인증코드입니다.</p>
			</div>
		</div>
		<div class="col-md-2 col-xs-2"></div>
	</div>

	<br style="clear: both;" />
	<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>