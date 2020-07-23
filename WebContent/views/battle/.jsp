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
<script type="text/javascript">
.subtitle-text
{

}
</script>
</head>

<div class="col-md-4" align="center">
<p class="subtitle-text">재고 사유를 입력해주세요</p>
<textarea rows="" cols="55" class="form-controls">
</textarea>
<div class="col-md-12">
	<div class="col-md-6">
		<button class="btn btn-default btn-submit btn-block"> 완 료 </button>
	</div>
	<div class="col-md-6">
		<button class="btn btn-default btn-block"> 취 소 </button>
	</div>
</div>
</div>

</html>