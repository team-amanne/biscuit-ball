<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>문의/신고 - 문의(접수완료 선택).jsp</title>

<style type="text/css">

.a-link
{
	border: 0px;
	background-color: white;
}

/* 접수완료, 처리중, 처리완료 버튼 */
.button_image
{
	text-align: center;
	margin-bottom: 10px;
}

/* 검색 소속 flex */
.search
{
	display: flex;
}

/* 검색 카테고리 */
#search_category
{
	width: 120px;
}

/* 검색입력 */
#search_content
{
	width: 400px;
}

/* 삭제버튼 */
.delete
{
	margin-left: auto;
}

/* 숫자 도형 색깔 */
.badge
{
	background-color: orange !important;
}

/* 현황판 크기조절 */
.bar
{
	display: flex;
	margin-left: auto;
	width: 66%;
}

/* 현황판 간격 */
.bar1, .bar2, .bar3
{
	margin-right: 10px;
}

</style>

<!-- 부트스트랩/제이쿼리 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/default.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/board.css">
</head>
<body>

	<c:import url="../base/Header.jsp"></c:import>
<c:import url="../base/Submenu.jsp"></c:import>
	
	<!-- 메인 -->
	<div class="main container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="row top">
							<div class="col-md-12">
								<p>고객센터 > 문의/신고 > 문의(카테고리 접수완료 선택)</p>
								<hr>
								<div class="bar">
									<ul class="list-group bar1">
									  <li class="list-group-item">
									    <span class="badge">11</span>
									    접수완료
									  </li>
									</ul>
									<ul class="list-group bar2">
									  <li class="list-group-item">
									    <span class="badge">6</span>
									    처리중
									  </li>
									</ul>
									<ul class="list-group bar3">
									  <li class="list-group-item">
									    <span class="badge">9</span>
									  	처리완료
									  </li>
									</ul>
								</div>
								<div class="category_button">
									<button type="button" class="btn btn-warning">
										전체
									</button> 
									<button type="button" class="btn btn-outline-secondary">
										농구하기
									</button> 
									<button type="button" class="btn btn-outline-secondary">
										크루
									</button> 
									<button type="button" class="btn btn-outline-secondary">
										대전
									</button> 
									<button type="button" class="btn btn-outline-secondary">
										마이페이지
									</button>
									<button type="button" class="btn btn-outline-secondary">
										코트페이지
									</button>
									<button type="button" class="btn btn-outline-secondary">
										친구·차단
									</button>
									<button type="button" class="btn btn-outline-secondary">
										기타
									</button>
								</div>
							</div>
						</div>
						<ul class="list-group">
							<li class="list-group-item board-body board-header">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>번호</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>카테고리</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span>제목</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>담당자</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>문의일</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>진행상태</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>10</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[대전]</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span><a href="">대전할때 1:1도 가능한것인지요?</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span><a href="">GM한별</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.07.10</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[ <span style="color: green; font-weight: bold;">접수완료</span> ]</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>9</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[크루]</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span><a href="">크루탈퇴하려는데 게속 에러가납니다</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span><a href="">GM한별</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.07.10</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[ <span style="color: green; font-weight: bold;">접수완료</span> ]</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>8</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[마이페이지]</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span><a href="">마이페이지가 엑박으로 뜹니다</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span><a href="">GM한별</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.07.10</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[ <span style="color: green; font-weight: bold;">접수완료</span> ]</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>7</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[코트페이지]</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span><a href="">코트 설정 바뀐게 반영이 안됩니다</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span><a href="">GM한별</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.07.10</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[ <span style="color: green; font-weight: bold;">접수완료</span> ]</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>6</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[대전]</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span><a href="">상대크루가 이상합니다</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span><a href="">GM한별</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.07.10</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[ <span style="color: green; font-weight: bold;">접수완료</span> ]</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>5</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[친구·차단]</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span><a href="">친구 등록 제한 있나요?</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span><a href="">GM한별</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.07.10</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[ <span style="color: green; font-weight: bold;">접수완료</span> ]</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>4</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[기타]</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span><a href="">비스킷볼 관리자 채용에 대해서 질문이요</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span><a href="">GM한별</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.07.10</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[ <span style="color: green; font-weight: bold;">접수완료</span> ]</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>3</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[기타]</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span><a href="">이럴경우에는 어떻게 해야하죠?</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span><a href="">GM한별</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.07.10</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[ <span style="color: green; font-weight: bold;">접수완료</span> ]</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>2</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[기타]</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span><a href="">크루업적 버그있네여ㅋㅋ</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span><a href="">GM한별</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.07.10</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[ <span style="color: green; font-weight: bold;">접수완료</span> ]</span>
									</div>
								</div>
							</li>
							<li class="list-group-item board-body">
								<div class="row">															
									<div class="col-sm-1 col-xs-1">
										<span>1</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[기타]</span>
									</div>
									<div class="col-md-3 col-xs-3">
										<span><a href="">크루업적 버그있네여ㅋㅋ</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span><a href="">GM한별</a></span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>2020.07.10</span>
									</div>
									<div class="col-md-2 col-xs-2">
										<span>[ <span style="color: green; font-weight: bold;">접수완료</span> ]</span>
									</div>
								</div>
							</li>	
						</ul>
						<div class="row"> 
							<div class="col-md-12 right-btn">
								<div class="search">
									<select class="form-control" id="search_category">
								 		<option>제목</option>
								  		<option>내용</option>
								  		<option>작성자</option>
								  		<option>카테고리</option>
									</select>
									
									<input type='text' class="form-control" id="search_content">
									
									<button type="button" class="btn btn-warning">검색</button>
									<div class="delete">
										<button class="btn btn-default" type="submit">삭제하기</button>
									</div>
								</div>			
							</div>	
						</div>
					</div>
						<div class="row">
							<div class="col-md-4"></div>
							<div class="col-md-4 paging">
								<ul class="pagination">
									<li class="disabled"><a href="#"> <span>«</span>
									</a></li>
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#"> <span>»</span>
									</a></li>
								</ul>
							</div>
							<div class="col-md-4"></div>
						</div>
						<div class="row">
							<div class="col-md-12"></div>
						</div>
					</div>
					<div class="col-md-2"></div>
				</div>
			</div>
		</div>

	<c:import url="../base/Footer.jsp"></c:import>

</body>
</html>