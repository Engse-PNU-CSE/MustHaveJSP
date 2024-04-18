<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>gugudan Main</h2>
	<form action = "gugudanProcess.jsp" method = "post">
		<input type = "radio" id = "type1" name = "typeSelector" value = "1" checked />
  		<label for = "type1">Type1</label><br />
		<input type = "radio" id = "type2" name = "typeSelector" value = "2" />
		<label for = "type2">Type2</label><br />
		
		<input type = "text" name = "dancol" />
		<label for = "dancol">Dans/Cols</label><br />
		
  		<input type="submit" value="Submit">
	</form>
</body>
</html>