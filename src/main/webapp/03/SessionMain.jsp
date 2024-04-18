<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.ArrayList" %>
<%
ArrayList<String> lists = new ArrayList<String>();
lists.add("list");
lists.add("collection");
session.setAttribute("lists", lists);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>Bring Session Attribute after moving page</h2>
<a href = "SessionLocation.jsp">SessionLocation.jsp</a>
</body>
</html>