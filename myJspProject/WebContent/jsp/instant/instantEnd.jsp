<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
    <%
    request.setCharacterEncoding("utf-8");
    
    String mainmenu = request.getParameter("mainmenu");
    String sidemenu = request.getParameter("sidemenu");
    String drink = request.getParameter("drink");
    

    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<span style="color:navy; font-size:3em"><%=mainmenu%></span>
	<span style="color:purple; font-size:2em"><%=sidemenu%></span>
	<span style="color:cyan; fount-size:1em"><%=drink %></span>
	
	
</body>
</html>