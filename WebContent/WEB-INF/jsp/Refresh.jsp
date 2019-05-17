<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>This a tomcat test</title>
</head>
<body>
	<h2>自動更新実験</h2>
	<%
		response.setIntHeader("Refresh", 5);
		Calendar calendar = new GregorianCalendar();
		int h = calendar.get(Calendar.HOUR);
		int m = calendar.get(Calendar.MINUTE);
		int s = calendar.get(Calendar.SECOND);

		String am_pm = calendar.get(Calendar.AM_PM) == 0 ? "AM" : "PM";
		String ct=h+":"+m+":"+s+"  "+am_pm;
		out.println("今の時間："+ct);
	%>
</body>
</html>