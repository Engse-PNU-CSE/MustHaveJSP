<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String popupMode = "on";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	div#popup {
		position: absolute; top:100px; left:50px; color:yellow;
		width: 270px; height:100px; background-color: gray;
	}
	div#popup>div {
		position: relative; background-color: #ffffff; top:0px;
		border:1px solid gray; padding:10px; color:black;
	}
</style>
<script src="https://ajax.googleapos.com/ajax/libs/jquery/3.7.0/jquery.min.js">
</script>
<script>
$(function() {
	$('#closeBtn').click(function() {
		$('#popup').hide();
	});
});
</script>
</head>
<body>
	<h2>Popup Main Page(V 0.1)</h2>
	<%
	for(int i = 1; i <= 10; i++) out.print("This Popup's mode is" + popupMode + "<br />");
	if(popupMode.equals("on")) {
	%>
	<div id = "popup">
		<h2 align = "center">Notice Popup</h2>
		<div align = "right">
			<form name="popFrm">
				<input type = "checkbox" id = "interactiveToday" value = "1" />
				Don't open again
				<input type = "button" value = "close" id = "closeBtn" />
			</form>
		</div>
	</div>
	<%
	}
	%>
</body>
</html>