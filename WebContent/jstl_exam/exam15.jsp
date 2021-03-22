<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="sql"  uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<sql:update dataSource="jdbc/myoracle">
update test set pw=? where id=?
<sql:param value="${555 }"></sql:param>
<sql:param value="${'aa' }"></sql:param>
</sql:update>

<sql:query var="rs" dataSource="jdbc/myoracle">
select * from test
</sql:query>

<table>
<tr>
<c:forEach var="columnName" items="${rs.columnNames }">
<th><c:out value="${columnName }"/></th>
</c:forEach>
</tr>

<c:forEach var="row" items="${rs.rows }">
<tr>
<td><c:out value="${row.id }"/></td>
<td><c:out value="${row.pw }"/></td>
</tr>
</c:forEach>
</table>
</body>
</html>