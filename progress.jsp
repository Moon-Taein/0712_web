<%
	// name으로 가져와서 value를 return 해준다
	String select = request.getParameter("select");
	response.sendRedirect(select+".jsp");
%>