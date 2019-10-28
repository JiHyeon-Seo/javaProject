<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="exceptionPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 발생할 수 있는 페이지!</title>
</head>
<body>
	<h2>JSP 에러 테스트 페이지</h2>
	<% String str = null; %>
	str 문자열 길이 : <%= str.length() %> 개
</body>
</html>