<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
String str2 = "Hello";
String getMessage(String str) {
	if(str == null) return str + str + "합니다";
	else if (str.equals("jsp")) return str + " 공부합시다";
	else return "노인코래방은 코인노래방";
}
%>
<%
String str1 = request.getParameter("lang");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>My first <%= str1 %></h2>
	<p><% 
	out.println(getMessage(str1));
	%></p>
</body>
</html>