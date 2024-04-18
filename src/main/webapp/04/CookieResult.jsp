<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>Check Cookie Value after making cookie</h2>
	<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null) {
		for(Cookie c : cookies) {
			String cookieName = c.getName();
			String cookieValue = c.getValue();
			out.println(String.format("Cookie Name : %s - Cookie Value : %s <br />", cookieName, cookieValue));

		}
	}
	%>
</body>
</html>