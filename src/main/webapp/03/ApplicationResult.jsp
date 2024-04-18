<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "common.Person" %>
<%@ page import = "java.util.Map" %>
<%@ page import = "java.util.Set" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>Read Attribute of application Area</h2>
	<%
	Map<String, Person> maps = (Map<String, Person>)application.getAttribute("maps");
	Set<String> keys = maps.keySet();
	for(String key : keys) {
		Person person = maps.get(key);
		out.print(String.format("name : %s, age : %d<br/>", person.getName(), person.getAge()));
	}
	%>
</body>
</html>