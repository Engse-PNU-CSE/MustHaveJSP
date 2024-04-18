<%@page import="javax.swing.RepaintManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>1. Cookies Setting</h2>
	<%
	Cookie cookie = new Cookie("myCookie", "YEEEEEEEEEEEEEEEEEEAh");
	cookie.setPath(request.getContextPath());
	cookie.setMaxAge(3600);
	response.addCookie(cookie);
	%>
	
	<h2>2. Check Cookie Value after Setting</h2>
	<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null) {
		for(Cookie c : cookies) {
			String cookieName = c.getName();
			String cookieValue = c.getValue();
			out.println(String.format("%s : %s <br />", cookieName, cookieValue));

		}
	}
	%>
	<h3>3. Check Cookies Value after Moving Page</h3>
	<a href = "CookieResult.jsp">Check Cookie Value in Next Page</a>
</body>
</html>