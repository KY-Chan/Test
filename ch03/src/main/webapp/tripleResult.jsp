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
<%! int triple(int num1, int num2) {
	int result = 1;
	for(int i =0;i<num2;i++){
		result *= num1;
	}
	return result;
}%>
<body>
<%=num1 %> ^ <%=num2 %> = <%=triple(num1,num2) %>
</body>
</html>