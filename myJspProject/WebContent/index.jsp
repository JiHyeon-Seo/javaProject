<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1부터 10까지의 합 구하기</title>
</head>
<body>
	<%-- JSP 주석 --%>
	<!-- HTML 주석 -->
	<%-- 
	<%
		// <% 로시작해서 % >로 끝나는 것을 스클립틀릿이라고 부른다.
		//스크립틀릿에 자바코드가 작성된다.
		
		int total = 0;
		for(int i=0; i<=10; i++){
			total +=i;
		}
		String s = "test";
		
		System.out.println(s.charAt(0));
	
	%> --%>
	
	<%--자바코드에서 작성한 결과값 출력 --%>
	<%--세미콜론을 찍으면 에러 --%>
	
	<%-- expression 출력 : 1부터 10까지의 합은
	<span style="color:red; font-size: 16pt;">
	<%= total %>
	</span>입니다.
	scriptlet출력 (out.println메소드): 1부터 10까지의 합은 <span style="color:red; font-size: 16pt;">
	<%out.println(total); %>
	</span>입니다. --%>
	
	<h1>Index Page 입니다.</h1>
	<hr>
	<%@ include file="/views/footer.html" %>
	
	
</body>
</html>