<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">

<title>Insert title here</title>
</head>
<body>
	<h1>jstl out tag</h1>
	
	<c:out value="hello"></c:out>	
	<hr>
	<%
	pageContext.setAttribute("attr1", "javascript");
	%>
	
	<c:out value="${attr1 }"></c:out>	<br>
	<c:out value="${attr2 }" default="비었음"></c:out>
	<c:out value="${attr2 }">비었음</c:out>
	
	<hr>
	<%
	pageContext.setAttribute("attr3","<script>alert('hack!!!')</script>");
	%>
	<c:out value="${attr3 }"></c:out> <br>
	
	
	
	
</body>
</html>