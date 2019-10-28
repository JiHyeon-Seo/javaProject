<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
	//1. 한글 인코딩 처리
	request.setCharacterEncoding("utf-8");

	//2. 전송값 꺼내서 변수에 기록하기
	String userId = request.getParameter("userId");
	String userPwd = request.getParameter("userPwd");
	String userName = request.getParameter("userName");
	int userAge = Integer.parseInt(request.getParameter("userAge"));
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");

	String[] hobbies = request.getParameterValues("hobby");

	String hobby = String.join(",", hobbies);
	
	//3. 비즈니스 로직 구성
	Connection conn = null;
	PreparedStatement pstmt=null;
	String query = "INSERT INTO MEMBER VALUES(?,?,?,?,?,?,?,?,?,SYSDATE)";
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","student","student");
	pstmt = conn.prepareStatement(query);
	pstmt.setString(1,userId);
	pstmt.setString(2,userPwd);
	pstmt.setString(3,userName);
	pstmt.setString(4,gender);
	pstmt.setInt(5, userAge);
	pstmt.setString(6, email);
	pstmt.setString(7, phone);
	pstmt.setString(8, address);
	pstmt.setString(9, hobby);
	
	int result = pstmt.executeUpdate();
	
	//4. 처리결과
	String msg = result > 0 ? "성공적으로 회원가입 되었습니다." : "회원가입에 실패했습니다."; //삼항연산자
	//조건식 쓰고 만족/불만족 -> msg라는 참조변수에 넣어줌.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Member</title>
</head>
<style type="text/css">
.male {
	color: blue;
}

.female {
	color: Red;
}
</style>
<body>
	<ul style="list-style: none;">
		<li>아이디 	: <%=userId%></li>
		<li>패스워드 	: <%=userPwd%></li>
		<li>이름 		: <%=userName%></li>
		<li>나이		: <%=userAge%>세</li>
		<li>이메일	: <%=email%></li>
		<li>성별		: 
		
		<span id="gender" style="font-weight:bold; color:<%String genderColor = "";
			if ("M".equals(gender)) {
				genderColor = "blue";
			} else {
				genderColor = "red";
			}%>
			<%=genderColor%>"><%=gender%></span>
		</li>
		<li>휴대폰 : <%=phone%></li>
		<li>주소: <%=address%></li>
		<li>취미 : <%=hobby%></li>

	</ul>
	
	<hr>
	
	<p><%=msg %></p>
</body>
</html>