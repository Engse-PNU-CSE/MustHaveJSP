<%@ page import = "java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>Read Session Attribute after moving page</h2>
<%
ArrayList<String> lists = (ArrayList<String>)session.getAttribute("lists");
for(String str : lists) out.print(str + "<br/>");
%>
</body>
</html>