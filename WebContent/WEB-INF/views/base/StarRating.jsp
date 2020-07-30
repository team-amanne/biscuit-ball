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


<!-- 아래 링크 꼭 첨부! -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/default.css">

</head>

<!--Star rating  -->
<!-- JSP 파일 복사해서 별점평가 하는 데에 붙이세요 -->
<!-- CSS 코드는 default.css에 있습니다. -->

<!-- Star rating 시작 -->
<div id="half-stars-example">

    <div class="rating-group">
    	<!-- 한 페이지에 여러번 사용할 경우 name, id(label for="") 바꿔주세요 -->
        <input class="rating__input rating__input--none" checked name="rating2" id="rating2-0" value="0" type="radio">
        <label aria-label="0 stars" class="rating__label" for="rating2-0">&nbsp;</label>
        
        <label aria-label="0.5 stars" class="rating__label rating__label--half" for="rating2-05">
        	<i class="rating__icon rating__icon--star fa fa-star-half"></i>
        </label>
        <input class="rating__input" name="rating2" id="rating2-05" value="0.5" type="radio">
        
        <label aria-label="1 star" class="rating__label" for="rating2-10">
        	<i class="rating__icon rating__icon--star fa fa-star"></i>
        </label>
        <input class="rating__input" name="rating2" id="rating2-10" value="1" type="radio">
        
        <label aria-label="1.5 stars" class="rating__label rating__label--half" for="rating2-15">
        	<i class="rating__icon rating__icon--star fa fa-star-half"></i>
        </label>
        <input class="rating__input" name="rating2" id="rating2-15" value="1.5" type="radio">
        
        <label aria-label="2 stars" class="rating__label" for="rating2-20">
        	<i class="rating__icon rating__icon--star fa fa-star"></i>
        </label>
        <input class="rating__input" name="rating2" id="rating2-20" value="2" type="radio">
        
        <label aria-label="2.5 stars" class="rating__label rating__label--half" for="rating2-25">
        	<i class="rating__icon rating__icon--star fa fa-star-half"></i>
        </label>
        <input class="rating__input" name="rating2" id="rating2-25" value="2.5" type="radio" checked>
        
        <label aria-label="3 stars" class="rating__label" for="rating2-30">
        	<i class="rating__icon rating__icon--star fa fa-star"></i>
        </label>
        <input class="rating__input" name="rating2" id="rating2-30" value="3" type="radio">
        
        <label aria-label="3.5 stars" class="rating__label rating__label--half" for="rating2-35">
        	<i class="rating__icon rating__icon--star fa fa-star-half"></i>
        </label>
        <input class="rating__input" name="rating2" id="rating2-35" value="3.5" type="radio">
        
        <label aria-label="4 stars" class="rating__label" for="rating2-40">
        	<i class="rating__icon rating__icon--star fa fa-star"></i>
        </label>
        <input class="rating__input" name="rating2" id="rating2-40" value="4" type="radio">
        
        <label aria-label="4.5 stars" class="rating__label rating__label--half" for="rating2-45">
        	<i class="rating__icon rating__icon--star fa fa-star-half"></i>
        </label>
        <input class="rating__input" name="rating2" id="rating2-45" value="4.5" type="radio">
        
        <label aria-label="5 stars" class="rating__label" for="rating2-50">
        	<i class="rating__icon rating__icon--star fa fa-star"></i>
        </label>
        <input class="rating__input" name="rating2" id="rating2-50" value="5" type="radio">
        
    </div>
</div>
<!-- Strar rating 끝 -->


</html>