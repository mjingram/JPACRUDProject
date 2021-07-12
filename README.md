# JPA CRUD Project - Saxy Set List App

This application allows the user to create a set list of sheet music speicifically designed for saxophone players on a gig. This app is similar to a "kindle" or reader type of app but designed with musicians in mind. The app is connected to a MySQL database that stores information about each of the songs as well as the sheet music. This CRUD application allows users to Create (Add a new song and sheet music to the set), Read (View the sheet music and song info), Update (Make changes to the songs info) and Delete (Remove the song and sheet music from the database). Each songs displays the title, song key, tempo, style and which saxophone key the music is transposed for (such as Bb, Eb, etc).

### How to Use:

The app starts with 16 base songs with sheet music in the database. If the user wishhes to Add, Remove or Delete songs from the set list buttons at the top will redirect you to their corresponding pages where information can be submitted to Add, Remove or Delete the songs. The current songs title and song number will be displayed on the home page. If the user wishes to go to the next song or previous song, click the arrows or simply enter the specific song you wish to view. Below the song serach, information for each song is shown such as tempo, key, which saxophone, and style the song is played in. Finally, sheet music for the song is shown below. If you wish to add new sheet music to the set list, the sheet music must be hosted on the web and the direct link URL must be provided. It is suggested to host the sheet music on imgur and then use the images direct link in the input form.


### Technologies Used
* Java
* Spring Boot
* JPA
* JSP
* Dynamic web pages with JSTL
* Gradle
* Hibernate
* HTML, CSS, BootStrap 5
* Google Fonts and Font Awesome Icons
* Database Access Objects (DAO) with implementations
* MySQL Database and MySQL workbench

### Front End Design:

The design is based off of the classic book of jazz standards the real book. It follows a color theme similar to the Real Book Vol I. The 16 sheet music files that come preloaded are fake book style charts for some of my favorite jazz standards. Bootstrap was used for the navbar and buttons. Pacifico cursive font was used for headers and montserat sans serif font was used for the rest of the text. Icons are used for the next and previous buttons.  The saxophone image in the header is also an icon.  
