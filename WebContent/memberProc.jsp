<%@page import="com.edu.biz.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="member" class="com.edu.beans.Member"></jsp:useBean>
<jsp:setProperty property="*" name="member"/>

<%
MemberService service=new MemberService();
service.memberInsert(member);

RequestDispatcher rd=request.getRequestDispatcher("memberOutput.jsp");
rd.forward(request, response);
%>
</body>
</html>