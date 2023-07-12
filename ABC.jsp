<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ABC 선택</title>
</head>
<body>
	<form action="progress.jsp">
		<!-- 동일한 name으로 연관관계를 만든다  -->
		<label><input type="radio" name="select" value="A" checked/>A</label>
		<input id="b" type="radio" name="select" value="B" /><label for="b">B</label>
		<label><input type="radio" name="select" value="C" />C</label>
		<input type="submit" />
	</form>
</body>
</html>