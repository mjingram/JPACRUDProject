<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<c:url value="/css/styles.css" />">
<title>Update</title>
</head>
<body>
<h1>Update Page</h1>


<form action="sendUpdate.do" method=POST>
<input type="hidden" name="songId" value="${songId }">
<label for="tempoInput">Enter New Song Tempo:</label><br>
<input id="tempoInput" type="text" name="tempo" value="${music.tempo }" placeholder="Tempo in BPM"><br>
<br>
<label for="styleInput">Enter New Song Style:</label><br>
<input id="styleInput" type="text" name="style" value="${music.style }" placeholder="Style"><br>

<label for="songKeyInput">Enter New Song Key:</label><br>
<input id="songKeyInput" type="text" name="songKey" value="${music.songKey }" placeholder="SongKey"><br>
<input type="submit" value = "Update"><br>
</form>

</body>
</html>