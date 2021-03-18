<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 1. JDNI 서버 객체 생성
InitialContext ic=new InitialContext();

// 2. lookup()
DataSource ds=(DataSource)ic.lookup("java:comp/env/jdbc/myoracle");

// 3. getConnection()
Connection conn=ds.getConnection();

Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery("select * from test");

while(rs.next()){
	out.print("<br>"+rs.getString("id")+":"+rs.getString(2));
}

rs.close();
stmt.close();
conn.close();
%>