<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Setting HTTP Status code Test</title>
</head>
<body>
<%
response.sendError(407,"Need authentication!!  and This is a test");
%>
</body>
</html>