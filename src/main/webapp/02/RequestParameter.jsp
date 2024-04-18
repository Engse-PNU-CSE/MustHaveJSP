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
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String sex = request.getParameter("sex");
String favo[] = request.getParameterValues("favo");
String favoStr = "";
if(favo != null) for(int i = 0; i < favo.length; i++) favoStr+=favo[i] + "";
String intro = request.getParameter("intro").replace("\r\n", "<br />");
%>
<ul>
<li>id : <%= id %></li>
<li>sex : <%= sex %></li>
<li>favo : <%= favo %></li>
<li>intro : <%= intro %></li>

</ul>
</body>
</html>