<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>gugudan Form 1</title>
</head>
<body>
<%
int num = Integer.parseInt(request.getParameter("dan"));
for(int i = 1; i <= 9; i ++) out.print(String.format("%d * %d = %d <br />", num, i, num*i));
%>
</body>
</html>