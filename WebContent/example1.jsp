<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String user=request.getParameter("name");
if(user==null)
	user="guest";
%>
<h1>
Hello
<%=user %>!
</h1>
</body>
</html>