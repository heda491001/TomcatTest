<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Select all from table examRecords</h1>
	<jsp:useBean id="beanTest" class="db.dbBean"></jsp:useBean>
	<table border="1" width="80%">
		<tr>
			<th>学籍番号</th>
			<th>氏名</th>
			<th>数学</th>
			<th>英語</th>
			<th>国語</th>
			<th>理科</th>
		</tr>
		<%
			for (db.OneRecord or : beanTest.getAllRecord()) {
		%>
		<tr>
			<td><%=or.getStudentNo()%></td>
			<td><%=or.getStudentName()%></td>
			<td><%=or.getMath()%></td>
			<td><%=or.getEnglish()%></td>
			<td><%=or.getJapanese()%></td>
			<td><%=or.getScience()%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>