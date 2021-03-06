<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%
	String result;
	//x 收件人的电子邮件
	String to = "abcd@gmail.com";

	//x 发件人的电子邮件
	String from = "mcmohd@gmail.com";

	//x假设你是从本地主机发送电子邮件
	String host = "localhost";

	//x 获取系统属性对象
	Properties properties = System.getProperties();

	//x 设置邮件服务器
	properties.setProperty("mail.smtp.host", host);

	//x 获取默认的Session对象。
	Session mailSession = Session.getDefaultInstance(properties);

	try {
		//x 创建一个默认的MimeMessage对象。
		MimeMessage message = new MimeMessage(mailSession);
		//x 设置 From: 头部的header字段
		message.setFrom(new InternetAddress(from));
		//x 设置 To: 头部的header字段
		message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		//x 设置 Subject: header字段
		message.setSubject("This is the Subject Line!");

		//x 设置 HTML消息
		message.setContent("<h1>This is actual message</h1>", "text/html");
		//x 发送消息
		Transport.send(message);
		result = "Sent message successfully....";
	} catch (MessagingException mex) {
		mex.printStackTrace();
		result = "Error: unable to send message....";
	}
%>
<html>
<head>
<title>Send HTML Email using JSP</title>
</head>
<body>
	<center>
		<h1>Send Email using JSP</h1>
	</center>
	<p align="center">
		<%
			out.println("Result: " + result + "\n");
		%>
	</p>
</body>
</html>