<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>1. Login Form</h2>
<%
String loginErr = request.getParameter("loginErr");
if(loginErr != null) out.print("Login Failed");
%>
<form action = "./ResponseLogin.jsp" method = post>
ID : <input type="text" name = "user_id" /><br/>
Password : <input type="text" name = "user_pwd" /><br/>
<input type="submit" value = "Login" />
</form>
<h2>2. Set Http Response Header</h2>
<form action = "./ResponseHeader.jsp" method = "post">
Data Type : <input type = "text" name = "add_date" value="2024-04-16 09:00" /><br/>
Number Type : <input type = "text" name = "add_int" value="8282" /><br/>
String Type : <input type = "text" name = "add_str" value="Kim" /><br/>
<input type="submit" value = "Response header set and print" />

</form>
</body>
</html>