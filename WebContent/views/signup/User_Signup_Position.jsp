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
<title>메인 > 회원가입 > 포지션테스트</title>
<style type="text/css">

/* 전체 틀 */
.position
{
   font-size: 14px;
    margin-left: auto;
    width: 900px !important;
}

/* 내용 */
.position_board
{
	width: 700px !important;
	height: 40px;
	border: 0px !important;
}

/* 보통 라디오버튼 간격정렬 */
.normal
{
	margin-left: 40px !important;
	margin-right: 40px !important;
}

/* 그렇다, 보통, 아니다 정렬 */
.check_names
{
	display: flex;
	font-weight: bold;
	margin-left: auto;
	width: 390px !important;
}

/* 상단의 보통 이름을 간격정렬 */
.normal_name
{
	margin-left: 25px !important;
	margin-right: 25px !important;
}

/* 결과확인 버튼 */
.result
{
	width: 200px !important;
	margin-left: 480px !important;
    margin-top: 20px !important;
    background-color: orange !important;
}

</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=cp %>/css/default.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>

<!-- 헤더 -->
<c:import url="../base/Header.jsp"></c:import>
<!-- 서브 -->
<c:import url="../base/Submenu.jsp"></c:import>

<div class="container-fluid">
      <div class="section-title container">
         <h5>포지션 추천</h5>
         <hr />
      </div>
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<div class="check_names">
				<span id="yes_name" class="yes_name">그렇다</span>
				<span id="normal_name" class="normal_name">보통</span>
				<span id="no_name" class="no_name">아니다</span>
			</div>

			<ul class="list-group position">
				<li class="list-group-item position_board">
					<div class="col-md-9">
						<label>1. 나는 스포츠를 할때 몸싸움을 선호한다.</label>
					</div>
					<div class="col-md-3">
						<div class="flex">
								<div class="radio_check">
									<label class="radio_button1"><input type='radio' id="yes"   name='click1' value='1'></label>
										<label class="radio_button2"><input type='radio' id="normal" class="normal" name='click1' value='2'></label>
									<label class="radio_button3"><input type='radio' id="no"    name='click1' value='3'></label>
								</div>
						</div>
					</div>
				</li>
				<li class="list-group-item position_board">
					<div class="col-md-9">
						<label>2. 나는 드리블에 자신이 있다.</label>
					</div>
					<div class="col-md-3">
						<div class="flex">
								<div class="radio_check">
									<label class="radio_button1"><input type='radio' id="yes"   name='click2' value='1'></label>
									<label class="radio_button2"><input type='radio' id="normal" class="normal" name='click2' value='2'></label>
									<label class="radio_button3"><input type='radio' id="no"    name='click2' value='3'></label>
								</div>
						</div>
					</div>
				</li>
				<li class="list-group-item position_board">
					<div class="col-md-9">
						<label>3. 나는 순발력이 좋은편이고 발이 빠르다.</label>
					</div>
					<div class="col-md-3">
						<div class="flex">
								<div class="radio_check">
									<label class="radio_button1"><input type='radio' id="yes"   name='click3' value='1'></label>
									<label class="radio_button2"><input type='radio' id="normal" class="normal" name='click3' value='2'></label>
									<label class="radio_button3"><input type='radio' id="no"    name='click3' value='3'></label>
								</div>
						</div>
					</div>
				</li>
				<li class="list-group-item position_board">
					<div class="col-md-9">
						<label>4. 골밑을 파고들기 보다는 외곽에서 슛 기회를 노리는것을 선호한다.</label>
					</div>
					<div class="col-md-3">
						<div class="flex">
								<div class="radio_check">
									<label class="radio_button1"><input type='radio' id="yes"   name='click4' value='1'></label>
									<label class="radio_button2"><input type='radio' id="normal" class="normal" name='click4' value='2'></label>
									<label class="radio_button3"><input type='radio' id="no"    name='click4' value='3'></label>
								</div>
						</div>
					</div>
				</li>
				<li class="list-group-item position_board">
					<div class="col-md-9">
						<label>5. 나는 피지컬이 좋다고 생각한다.</label>
					</div>
					<div class="col-md-3">
						<div class="flex">
								<div class="radio_check">
									<label class="radio_button1"><input type='radio' id="yes"   name='click5' value='1'></label>
									<label class="radio_button2"><input type='radio' id="normal" class="normal" name='click5' value='2'></label>
									<label class="radio_button3"><input type='radio' id="no"    name='click5' value='3'></label>
								</div>
						</div>
					</div>
				</li>
				<li class="list-group-item position_board">
					<div class="col-md-9">
						<label>6. 농구에서 가장중 요한것은 협동이라고 생각한다.</label>
					</div>
					<div class="col-md-3">
						<div class="flex">
								<div class="radio_check">
									<label class="radio_button1"><input type='radio' id="yes"   name='click6' value='1'></label>
									<label class="radio_button2"><input type='radio' id="normal" class="normal" name='click6' value='2'></label>
									<label class="radio_button3"><input type='radio' id="no"    name='click6' value='3'></label>
								</div>
						</div>
					</div>
				</li>
				<li class="list-group-item position_board">
					<div class="col-md-9">
						<label>7. 농구에서 가장 중요한것은 슛이라 생각한다.</label>
					</div>
					<div class="col-md-3">
						<div class="flex">
								<div class="radio_check">
									<label class="radio_button1"><input type='radio' id="yes"   name='click7' value='1'></label>
									<label class="radio_button2"><input type='radio' id="normal" class="normal" name='click7' value='2'></label>
									<label class="radio_button3"><input type='radio' id="no"    name='click7' value='3'></label>
								</div>
						</div>
					</div>
				</li>
				<li class="list-group-item position_board">
					<div class="col-md-9">
						<label>8. 나는 스스로를 올라운드 플레이어인것 같다.</label>
					</div>
					<div class="col-md-3">
						<div class="flex">
								<div class="radio_check">
									<label class="radio_button1"><input type='radio' id="yes"   name='click8' value='1'></label>
									<label class="radio_button2"><input type='radio' id="normal" class="normal" name='click8' value='2'></label>
									<label class="radio_button3"><input type='radio' id="no"    name='click8' value='3'></label>
								</div>
						</div>
					</div>
				</li>
				<li class="list-group-item position_board">
					<div class="col-md-9">
						<label>9. 나는 단체생활에서 멤버들과 조율하는 역할을 한다.</label>
					</div>
					<div class="col-md-3">
						<div class="flex">
								<div class="radio_check">
									<label class="radio_button1"><input type='radio' id="yes"   name='click9' value='1'></label>
									<label class="radio_button2"><input type='radio' id="normal" class="normal" name='click9' value='2'></label>
									<label class="radio_button3"><input type='radio' id="no"    name='click9' value='3'></label>
								</div>
						</div>
					</div>
				</li>
				<li class="list-group-item position_board">
					<div class="col-md-9">
						<label>10. 나는 타고난 슈터인것 같다.</label>
					</div>
					<div class="col-md-3">
						<div class="flex">
								<div class="radio_check">
									<label class="radio_button1"><input type='radio' id="yes"   name='click10' value='1'></label>
									<label class="radio_button2"><input type='radio' id="normal" class="normal" name='click10' value='2'></label>
									<label class="radio_button3"><input type='radio' id="no"    name='click10' value='3'></label>
								</div>
						</div>
					</div>
				</li>
			</ul>	
			
				<div>
					<button class="btn btn-warning button_middle result" id="result">결과 확인하기</button>
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