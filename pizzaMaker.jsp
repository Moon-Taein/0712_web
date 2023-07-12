<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pizza Maker</title>
</head>
<body>
	<fieldset>
		<legend><h1>피자 만들기!</h1></legend>
		<main>
		<form action="pizzaCalcul.jsp" method="post">		
		<div>
			<label><input type="radio" name="selectpizza" value="11000" checked/>페퍼로니피자</label> 
			<label><input type="radio" name="selectpizza" value="10000" />치즈피자</label>
			<label><input type="radio" name="selectpizza" value="13000" />불고기피자</label>
		</div>
		<div>
			<label><input type="checkbox" name="check" value="1000" />페퍼로니추가</label>
			<label><input type="checkbox" name="check" value="800" />치즈추가</label>
			<label><input type="checkbox" name="check" value="900" />불고기추가</label>
		</div>
		<div>
			<input type="number" name="pizzacount" value="1" />
		</div>
		<input type="submit" value="계산하기">
		</form>	
		</main>
	</fieldset>
</body>
</html>