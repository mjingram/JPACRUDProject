<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Page</title>
<link rel="stylesheet" href="<c:url value="/css/styles.css" />">
</head>
<body>
<h1>Are you sure you want to Delete?</h1>
<form action="sendDelete.do" method=POST>
<input type="hidden" name="songId" value="${songId }">

<input type="submit" value = "Delete"><br>
</form>

<form action="home.do" method=POST>
<input type="submit" value = "home"><br>
</form>
</body>
</html>