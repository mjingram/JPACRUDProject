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

<title>Sheet Music App</title>

</head>
<body>
<!-- Nav Bar -->
  <nav class="navbar navbar-expand-lg" style="background-color: #000;">
<div class="container">

    <button class="navbar-toggler" type="button" data-toggle="collapse"  data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarNav">

        <ul class="navbar-nav nav-fill w-100">

            <li class="nav-item">
                <form action="updatePage.do" method=POST>
				<input type="submit" class="btn btn-outline-light btn-lg" value = "Update">
				</form>
            </li>


            <li class="nav-item">
                <form action="deletePage.do" method=POST>
				<input type="submit" class="btn btn-outline-light btn-lg" value = "Remove">
				</form>
            </li>

            <li class="nav-item">
               <form action="createPage.do" method=POST>
				<input type="submit" class ="btn btn-outline-light btn-lg" value = "Create">
				</form>
            </li>

        </ul>

    </div>
</div>
</nav>

<!-- Content -->
<h1><img class = "saxPic" src="<c:url value="/images/Saxophone.svg" />">Saxy Set List</h1>
<h3>${music.title }</h3>

<div class="pageFlipper">
<form action="previousPage.do" method=GET>
<button type="submit"><i class="fas fa-arrow-circle-left"></i></button>
</form>

<form action="sendSongId.do" method=POST>
<h5>Song #: <input id="songIdInput" type="number" name="songId" value="${music.id }">
<input type="submit" class="btn btn-outline-light btn-lg btnSEARCH" value = "Go"></h5>
</form>

<form action="nextPage.do" method=GET>
<button type="submit"><i class="fas fa-arrow-circle-right"></i></button>
</form>
</div>

<div class="tableDiv">
	<table>
	
	  <tr>
	    <th>Song Key</th><th>Tempo</th><th>For Saxophone</th><th>Style</th>
	    </tr>
	    <tr>
	    <td>${music.songKey }</td>
	     <td>${music.tempo }</td>
	     <td>${music.transposeKey }</td>
	     <td>${music.style}</td>
	      </tr>
	   
	</table>
</div>















<img alt="" src="<c:url value="${music.imageURL }" />">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>