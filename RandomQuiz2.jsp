<%@page import="java.util.Random"%>
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
	// scriptlet 자바 표현을 적을 수 있다.
	// tomcat이 해석하여 java 문장을 실행한다.
	// 문제 3개. 문자열 컬렉션
	List<String> quiz = new ArrayList<>();
	quiz.add("유명해지기만 하면 돈이 되는 세계에 뛰어든 '아리'가 마주한 셀럽들의 화려하고도 치열한 민낯을 그린 넷플릭스 오리지널 시리즈");
	quiz.add("사람 목숨보다 돈이 먼저인 사채업의 세계에 휘말린 두 청년이 거대한 악의 세력에 맞서 목숨 걸고 싸우는 이야기를 그린 넷플릭스 시리즈");
	quiz.add("군무 이탈 체포조(D.P.) 준호와 호열이 여전히 변한 게 없는 현실과 부조리에 끊임없이 부딪치며 벌어지는 이야기.");
	
	Random r = new Random();
	int num = r.nextInt(3);
	String selected = quiz.get(num);
%>

<!-- post / get -->
<form action="quizcheck.jsp" method="post">
	<div>
		<%= selected %>
	</div>
	<input type="text" name="userAnswer" required/>
	<input type="hidden" name="num" value="<%= num%>" readonly/>
	<input type="submit" name="정답확인"/>
</form>
</body>
</html>