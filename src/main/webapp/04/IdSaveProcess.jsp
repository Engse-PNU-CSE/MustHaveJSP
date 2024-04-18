<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "utils.CookieManager" %>
<%@ page import = "utils.JSFunction" %>
<%
String user_id = request.getParameter("user_id");
String user_pw = request.getParameter("user_pw");
String save_check = request.getParameter("save_check");

if("must".equals(user_id) && "1234".equals(user_pw)) {
	if(save_check != null && save_check.equals("Y")) CookieManager.makeCookie(response, "loginId", user_id, 86400);
	else CookieManager.deleteCookie(response, "loginId");
	
	JSFunction.alertLocation("Login Sucess", "IdSaveMain.jsp", out);	
}
else JSFunction.alertBack("Login Failed", out);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>