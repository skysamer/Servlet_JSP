<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="com.edu.beans.BookBean" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="num" value="${95}"/>
점수 <c:out value="${num }"/>은

<c:if test="${num>60}">
합격입니다.
</c:if>

<br>
점수 <c:out value="${num }"/>은
<c:choose>
<c:when test="${num>=90 }">A학점</c:when>
<c:when test="${num>=80 }">B학점</c:when>
<c:when test="${num>=70 }">C학점</c:when>
<c:when test="${num>=60 }">D학점</c:when>
<c:otherwise>F학점</c:otherwise>
</c:choose>