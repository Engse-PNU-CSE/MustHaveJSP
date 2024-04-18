<%@page import="org.eclipse.jdt.internal.compiler.util.HashtableOfIntValues"%>
<%@ page import = "java.util.Collection" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd HH:mm");
long add_date = s.parse(request.getParameter("add_date")).getTime();
int add_int = Integer.parseInt(request.getParameter("add_int"));
String add_str = request.getParameter("add_str");

response.addDateHeader("myBirthday", add_date);
response.addIntHeader("Mynumber", add_int);
response.addIntHeader("Mynumber", 1004);
response.addHeader("myName", add_str);
response.addHeader("myName", "KIM");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Print Response Header Information</h2>
<%
Collection<String> headerNames = response.getHeaderNames();
for(String hName : headerNames) {
	String hValue = response.getHeader(hName);
	%>
	<li><%= hName %> : <%= hValue %></li>
	<%
	}
	%>
<h2>Print Mynumber</h2>
<%
Collection<String> myNumber = response.getHeaders("myNumber");
for(String myNum : myNumber) {
	%>
	<li>my number : <%= myNum %></li>
	<%
	}
	%>
}


</body>
</html>