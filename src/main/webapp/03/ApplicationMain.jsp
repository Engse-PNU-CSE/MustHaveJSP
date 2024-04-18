<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "common.Person" %>
<%@ page import = "java.util.Map" %>
<%@ page import = "java.util.HashMap" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>application Area Share</h2>
	<%
	Map<String, Person> maps = new HashMap<>();
	maps.put("actor1", new Person("leesuil", 30));
	maps.put("actor2", new Person("shimsunaee", 28));
	application.setAttribute("maps", maps);
	%>
	Store Attribute in application area
</body>
</html>