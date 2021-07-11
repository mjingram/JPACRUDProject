<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Song</title>
<link rel="stylesheet" href="<c:url value="/css/styles.css" />">
</head>
<body>
<h1>Add A new song</h1>

<form action="sendCreate.do" method=POST>

<label for="titleInput">Enter New Song Title:</label><br>
<input id="titleInput" type="text" name="title" placeholder="Title"><br>
<br>

<label for="tempoInput">Enter New Song Tempo:</label><br>
<input id="tempoInput" type="text" name="tempo" placeholder="Tempo in BPM"><br>
<br>
<label for="songKeyInput">Enter New Song Key:</label><br>
<input id="songKeyInput" type="text" name="songKey"  placeholder="Song Key"><br>
<br>
<label for="transposeKeyInput">Which Saxophone Key:</label><br>
<input id="transposeKeyInput" type="text" name="transposeKey" placeholder="Saxophone Key"><br>
<br>
<label for="imageURLInput">Enter URL for Sheet Music Image:</label><br>
<input id="imageURLInput" type="text" name="imageURL" placeholder="Imgur Direct Image Link"><br>
<br>
<label for="styleInput">Enter New Song Style:</label><br>
<input id="styleInput" type="text" name="style" placeholder="Style"><br>
<br>
<input type="submit" value = "Add"><br>
</form>
</body>
</html>