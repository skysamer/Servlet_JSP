<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fmt:setLocale value="en" />

<fmt:bundle basename="com.edu.bundle.msg">
<fmt:message key="id"></fmt:message>
<fmt:message key="greeting"></fmt:message>
</fmt:bundle>
</body>
</html>