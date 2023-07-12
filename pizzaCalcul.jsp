<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피자 계산 결과</title>
</head>
<body>
<%
	// 선택한 피자 가격;
	String selectedPizza = request.getParameter("selectpizza");
	int pizzaPrice = Integer.parseInt(selectedPizza);
	// 선택한 옵션들 가격
	if(request.getParameterValues("check")!=null){
	String[] selectedOption = request.getParameterValues("check");
	for(String str : selectedOption){
		pizzaPrice += Integer.parseInt(str);
	}
	}
	String pizzaCount = request.getParameter("pizzacount");
	int pizzaCo = Integer.parseInt(pizzaCount);
	pizzaPrice *= pizzaCo;
%>
<h2><%= pizzaPrice %></h2>
</body>
</html>