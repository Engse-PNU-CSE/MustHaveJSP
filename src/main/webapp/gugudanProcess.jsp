<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="utils.JSFunction"%>
<!DOCTYPE html>
<%
String selector = request.getParameter("typeSelector");
String num = request.getParameter("dancol");
out.println(selector);
out.println(num);
if(selector != null && num != null) {
	if(selector.equals("1")) {
		response.sendRedirect("gugudan1.jsp?dan=" + num);
	}
	else {
		response.sendRedirect("gugudan2.jsp?col=" + num);
	}
}
else {
	String msg = "Gugudan Failed  ";
	msg += "Selector : " + selector;
	msg += "  Dan/Col : " + num;
	JSFunction.alertBack(msg, out);
}
%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>