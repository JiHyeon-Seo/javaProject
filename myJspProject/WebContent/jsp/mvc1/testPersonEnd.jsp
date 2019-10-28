<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //1. 전달파라미터 한글처리
    request.setCharacterEncoding("utf-8");
    
    //2. 전달된 파라미터 변수에 담기
    String name = request.getParameter("name");
    String color = request.getParameter("color");
    String animal = request.getParameter("animal");
    String [] foodArr = request.getParameterValues("food");
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인 선호도 검사(사진)</title>
<script src="<%= request.getContextPath() %>/js/jquery-2.0.0.js"></script>
<script type="text/javascript">
$(document).ready(function() {
		<%
		switch(color){
		case "빨강" : 
		%>
		$("#color").append("<img src=' + <%= request.getcontextPath() %>/images/red.png'/>");
		<% break;
		case "파랑" :
			%>
		$("#color").append("<img src='<%= request.getContextPath() %>/images/blue.png'/>");
		<% break;
		case "노랑" :
		%>
		$("#color").append("<img src='<%= request.getContextPath() %>/images/yellow.png'/>");
		<%break;
		}
		%>
		
		<%
		switch(animal){
		case "강아지" : 
		%>
		$("#animal").append("<img src=' + <%= request.getcontextPath() %>/images/dog.png'/>");
		<% break;
		case "고양이" :
			%>
		$("#animal").append("<img src='<%= request.getContextPath() %>/images/cat.png'/>");
		<% break;
		case "금붕어" :
		%>
		$("#animal").append("<img src='<%= request.getContextPath() %>/images/fish.png'/>");
		<%break;
		}
		%>
		<%
			for(int i=0; i<foodArr.lenght; i++){
				switch(foodArr[i]) {
				case "짜장면" :
		%>
			$("#food").append("<img src='+<%=request.getContextPath()%>/images/jjm.png'/>");
			<% break;
				case "짬뽕" :
			%>
			$("#food").append("<img src='+<%=request.getContextPath()%>/images/jjbong.png'/>");
});

</script>
</head>
<body>

</body>
</html>