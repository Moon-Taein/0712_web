<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// name으로 가져와서 value를 return 해준다
	List<String> answer = new ArrayList<>();
	answer.add("셀러브리티");
	answer.add("사냥개들");
	answer.add("D.P.");
	
	String select = request.getParameter("userAnswer");
	String pageNumber = request.getParameter("pageNumber");
	int pageNum = Integer.parseInt(pageNumber);
	String correctAnswer = answer.get(pageNum-1);
	
	if(pageNum==3 && select.equals(correctAnswer)){
		response.sendRedirect("success.jsp");
	} else if(pageNum==1 && !select.equals(correctAnswer)){
		response.sendRedirect("quiz1.jsp");
	} else if(select.equals(correctAnswer)){
		response.sendRedirect("quiz"+(pageNum+1)+".jsp");
	} else {
		response.sendRedirect("quiz"+(pageNum-1)+".jsp");
	}
	// response.sendRedirect(quiz + + ".jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TempAnswer</title>
</head>
<body>
	<%= select %>
	<%= pageNum %>
	<%= correctAnswer %>
</body>
</html>