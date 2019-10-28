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
		$("#color").append("<img src=' <%= request.getContextPath() %>/images/red.png'/>");
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
		$("#animal").append("<img src=' <%= request.getContextPath() %>/images/dog.png'/>");
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
			for(int i=0; i<foodArr.length; i++){
				switch(foodArr[i]) {
				case "짜장면" :
			%>
			$("#food").append("<img src='<%=request.getContextPath()%>/images/jjm.png'/>");
			<% break;
				case "짬뽕" :
			%>
			$("#food").append("<img src='<%=request.getContextPath()%>/images/jjbong.png'/>");
			<% break;
				case "탕수육" :
			%>
			$("#food").append("<img src='<%=request.getContextPath()%>/images/tangsy.png'/>");
			<% break;
				case "양장피" :
			%>
			$("#food").append("<img src='<%=request.getContextPath()%>/images/yang.png'/>");
			<% break;
				case "팔보채" :
			%>
			$("#food").append("<img src='<%=request.getContextPath()%>/images/palbc.png'/>");
<%break;
				}
			}%>
	});
</script>
<style type="text/css">
#container {
	width: 600px;
	min-height: 500px;
	margin: 0px auto;
	padding: 10px;
}

#header {
	float: left;
	width: 600px;
	height: 100px;
	text-align: center;
	padding-bottom: 50px;
}

#color {
	position: relative;
	float: left;
	width: 388px;
	height: 150px;
	padding-right: 10px;
}

#animal {
	position: realtive;
	float: left;
	width: 388px;
	height: 150px;
	padding-right: 10px;
}

#food {
	position: relative;
	clear: both;
	padding-left: 10px;
}

#food img {
	width: 153px;
	height: 114px;
	padding-right: 10px;
}
</style>
</head>
<body>


	<div id="container">
		<div id="header" style="position: relative; margin: auto; top: 50px;">
			<h2>
				<span style="color: blue"> <%=name%>
				</span>님의 개인취향 테스트 결과
			</h2>
		</div>
		<div id="color">
			<span class="title">색깔</span><br>
		</div>
		<div id="animal">
			<span class="title">동물</span><br>
		</div>
		<div id="food">
			<span class="title">기호음식</span><br>
		</div>

	</div>



</body>
</html>