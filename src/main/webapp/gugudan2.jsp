<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>gugudan Form 2</title>
</head>
<body>
<%
int num;
if(request.getParameter("col") == null) num =0;
else num = Integer.parseInt(request.getParameter("col"));
int startJ = 2;
%>
<div style="display: grid; grid-template-columns: repeat(<%=num %>, 1fr);">
<%
for(int i = 2; i <= 9; i ++) {
	
%>
<div>
<%
for(int j = 1; j <= 9; j++) {
%>
<%= i %> * <%= j %> = <%= i * j %><br/>
<% 
}
%>
</div>
<% 
}
%>
</div>
</body>
</html>