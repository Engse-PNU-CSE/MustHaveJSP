<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
public int add(String num1, String num2) {
	int v1=0, v2=0;
	try {
		v1 = Integer.parseInt(num1);
	}
	catch(Exception e) {};
	try {
		v2 = Integer.parseInt(num2);
	}
	catch(Exception e) {};
    return v1 + v2;
}
public int add(int num1, int num2) {
    return num1 + num2;
}
%>
<%
int result = add(10, 20);
String v1 = request.getParameter("n1"), v2 = request.getParameter("n2");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Script Elements</title>
</head>
<body >
<div style = "margin:10px; padding:10px; color:white; font-size:30px; background: black; align-content: center;">

<div style = "margin:10px; padding:10px; background: gray;">result 1 = <%= result %></div>
<div style = "margin:10px; padding:10px; background: gray;">result 2 = <%= add(30, 40) %></div>
<div style = "margin:10px; padding:10px; background: gray;">result 3 = <%= add(v1, v2) %></div>
</div>
</body>
</html>