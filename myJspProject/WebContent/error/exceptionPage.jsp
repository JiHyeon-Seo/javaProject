<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
    <% response.setStatus(200); %>
<!--     *setStatus 메소드의 200값은 현재 페이지는 정상적인 페이지임을 의미하며 
    	  이를 설정해주지 않게 되면 에러페이진 500값으로 설정되는 경우가 있음. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exception Check 예외를 처리할페이지 </title>
</head>
<body>
	<h2>에러가 발생하였습니다!</h2>
	<h3>에러 종류 : <%= exception.getClass().getName() %></h3>
</body>
</html>