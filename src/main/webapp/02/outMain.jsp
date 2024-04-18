<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{background: black;
color:white;
}
</style>
</head>
<body>
<%
out.print("Non-printed text");
out.clearBuffer();

out.print("<h2>out inner object</h2>");
out.print("Buffer size : " + out.getBufferSize() + "<br>");
out.print("Remaining size : " + out.getRemaining() + "<br>");

out.flush();
out.print("Remaining size after flush: " + out.getBufferSize() + "<br>");

out.print(1);
out.print(false);
out.print('A');


%>
</body>
</html>