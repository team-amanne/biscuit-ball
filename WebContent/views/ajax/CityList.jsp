<%@ page contentType="text/html; charset=UTF-8"%><%@ 
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%
	request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>
[
<c:set var="num" value="1"></c:set>
<c:forEach var="city" items="${cityList }">
	<c:if test="num != 1">,</c:if>
	{
		"cityCode": "${city.cityCode }"
		, "cityName": "${city.cityName }"
		, "regionCode": "${city.regionCode }"
	}
	<c:set var="num" value="${num+1 }"></c:set>
</c:forEach>
]