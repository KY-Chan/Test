<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
int num1 = Integer.parseInt(request.getParameter("num1"));
int num2 = Integer.parseInt(request.getParameter("num2"));
%>
<body>
<%=num1 %> + <%=num2 %> = <%=num1 + num2 %><br>
<%=num1 %> - <%=num2 %> = <%=num1 - num2 %><br>
<%=num1 %> * <%=num2 %> = <%=num1 * num2 %><br>
<%=num1 %> / <%=num2 %> = <%=(double)num1 / num2 %>
</body>
</html>