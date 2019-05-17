<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginHello</title>
</head>
<body>
	<p>
		こんにちは<%=request.getParameter("user")%></p>
	<form name="back" action="login.html" method="post">
		<input type="submit" value="戻る">
</body>
</html>