<%@page import="java.io.FileWriter"%>
<%@page import="java.util.Date"%>
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
	request.setCharacterEncoding("utf-8");
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	Date date = new Date();
	long time = date.getTime(); // v파일명 중복 방지
	String fileName = time + ".txt";
	String real = application.getRealPath("/WEB-INF/" + fileName);
	FileWriter fw = new FileWriter(real);
	String str = "제목 :" + title + "\r\n";
	str += "작성자 : " + writer + "\r\n";
	str += content;
	fw.write(str);
	out.println("저장 완료");
	fw.close();
	%>
</body>
</html>