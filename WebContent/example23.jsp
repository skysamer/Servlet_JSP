<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="my" uri="/WEB-INF/myTag.tld" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Custom Tag</title>
</head>
<body>
<my:first color="blue"><%=1+2 %></my:first>
<br>Custom Tag Test!
</body>
</html>