<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>1. 클라이언트의 환경 정보 읽기</h1>
	<ul>
	<li>데이터 전송 방식 : <%= request.getMethod() %></li>
	<li>URL : <%= request.getRequestURL() %></li>
	<li>URI : <%= request.getRequestURI() %></li>
	<li>Protocol : <%= request.getProtocol()%></li>
	<li>Server : <%= request.getServerName()%></li>
	<li>Server Port : <%= request.getServerPort()%></li>
	<li>Client IP Address : <%= request.getRemoteAddr()%></li>
	<li>Query String : <%= request.getQueryString()%></li>
	<li>result 1 : <%= request.getParameter("eng")%></li>
	<li>result 2 : <%= request.getParameter("han")%></li>
	</ul>
</body>
</html>