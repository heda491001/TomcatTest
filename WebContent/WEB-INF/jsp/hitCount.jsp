<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<html>
<html>
<head>
<title>访问量统计</title>
</head>
<body>

	<%
		response.setIntHeader("Refresh", 1);

		Integer hitsCount = (Integer) application.getAttribute("hitCounter");
		if (hitsCount == null || hitsCount == 0) {
			/* a第一次访问 */
			out.println("欢迎访问菜鸟教程!");
			hitsCount = 1;
		} else {
			/* a返回访问值 */
			out.println("欢迎再次访问菜鸟教程!");
			hitsCount += 1;
		}
		application.setAttribute("hitCounter", hitsCount);
	%>

	<p>
		页面访问量为:
		<%=hitsCount%></p>


</body>
</html>