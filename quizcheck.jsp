<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 한글 인코딩 해주는 request method
		request.setCharacterEncoding("utf-8");
	
		List<String> answer = new ArrayList<>();
		answer.add("셀러브리티");
		answer.add("사냥개들");
		answer.add("D.P.");
		
		String userAnswer = request.getParameter("userAnswer");	
		String num = request.getParameter("num");
		int i = Integer.parseInt(num);
		String selected = answer.get(i);		
	%>
	<p>사용자 입력값 확인: <%= userAnswer %></p>
	<p>문제 번호 확인: <%= num %></p>
	<%
		if(userAnswer.equals(selected)){
			out.println("<p>정답</p>");
		} else {
			out.println("<p>오답</p>");			
		}
	%>
</body>
</html>