<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- BootStrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!--Google Fonts  -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Pacifico&display=swap" rel="stylesheet">
<!-- Font Awesome Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- CSS -->
<link rel="stylesheet" href="<c:url value="/css/styles.css" />">
<title>Add Song</title>
</head>
<body>
<h1>Add A New Song</h1>

<div class="createSongDiv">
<form action="sendCreate.do" method=POST>

<label for="titleInput">Enter New Song Title:</label>
<input id="titleInput" class="form-control" type="text" name="title" placeholder="Title">


<label for="tempoInput">Enter New Song Tempo:</label>
<input id="tempoInput" class="form-control" type="number" name="tempo" placeholder="Tempo in BPM">

<label for="songKeyInput">Enter New Song Key:</label>
<input id="songKeyInput"  class="form-control" type="text" name="songKey"  placeholder="Song Key">

<label for="transposeKeyInput">Which Saxophone Key:</label>
<input id="transposeKeyInput" class="form-control" type="text" name="transposeKey" placeholder="Saxophone Key">

<label for="imageURLInput">Enter URL for Sheet Music Image:</label>
<input id="imageURLInput" class="form-control" type="text" name="imageURL" placeholder="Imgur Direct Image Link">

<label for="styleInput">Enter New Song Style:</label>
<input id="styleInput"  class="form-control" type="text" name="style" placeholder="Style">

<input type="submit" class="btn btn-outline-light btn-lg updateBTN" value = "Add">
</form>
</div>
</body>
</html>