<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>For 循环实例</h3>
<%for ( int fontSize = 1; fontSize <= 15; fontSize++){ %>
   <font color="green" size="<%= fontSize %>">
   オカヤマ
   </font><br />
<%}%>
</body>
</html>