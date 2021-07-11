<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<c:url value="/css/styles.css" />">
<title>Sheet Music App</title>

</head>
<body>
<h1>Saxy Set List</h1>
<h3>${music.title }</h3>
<h5>Song #: ${music.id }</h5>

<div class="tableDiv">
	<table>
	
	  <tr>
	    <th>Song Key</th><th>Tempo</th><th>For Saxophone:</th><th>Style</th>
	    </tr>
	    <tr>
	    <td>${music.songKey }</td>
	     <td>${music.tempo }</td>
	     <td>${music.transposeKey }</td>
	     <td>${music.style}</td>
	      </tr>
	   
	</table>
</div>


<form action="sendSongId.do" method=POST>
<label for="idInput">Enter Song Id:</label><br>
<input id="idInput" type="text" name="songId" placeholder="Song ID"><br>
<input type="submit" value = "Submit"><br>
</form>

<form action="updatePage.do" method=POST>
<input type="submit" value = "Update"><br>
</form>

<form action="deletePage.do" method=POST>
<input type="submit" value = "Remove"><br>
</form>

<form action="createPage.do" method=POST>
<input type="submit" value = "Create"><br>
</form>

<form action="nextPage.do" method=GET>
<input type="submit" value = "Next"><br>
</form>

<form action="previousPage.do" method=GET>
<input type="submit" value = "Previous"><br>
</form>

<img alt="" src="<c:url value="${music.imageURL }" />">
</body>
</html>