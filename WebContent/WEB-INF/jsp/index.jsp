<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome</title>
</head>
<body>
<h1>This is a Tomcat test project</h1>
<a href="getParams.html">getParams</a><br/>
<a href="cookie.html">cookie.html</a><br/>
<a href="/TomcatTest/upload">upload</a><br/>
<a href="/TomcatTest/ReDirect">ReDirect.jsp</a><br/>
<a href="/TomcatTest/hitCount">hitCount</a><br/>
<a href="/TomcatTest/date">date.jsp</a><br/>
<a href="/TomcatTest/dateTime">dateTime.jsp</a><br/>
<a href="/TomcatTest/DynamicElement">DynamicElement.jsp</a><br/>
<a href="/TomcatTest/forLoop">forLoop.jsp</a><br/>
<a href="/TomcatTest/ForwardTest">ForwardTest.jsp</a><br/>
<a href="/TomcatTest/getListByPOST">getListByPOST.jsp</a><br/>
<a href="/getListByPOST">getListByPOST.jsp</a><br/>
<a href="/TomcatTest/DatabaseAccess">DatabaseAccess</a><br/>
<a href="/TomcatTest/showDBTest">showDBTest</a><br/>

<a href="AjaxTest.html">AjaxTest</a><br/>
<jsp:include page="/WEB-INF/jsp/test.jsp" flush="true" />


<a href="/docoTsubu/">docoTsubu</a><br/>
<a href="/exam/ExamReports">ExamReports</a><br/>

</body>
</html>