<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Club DashBoard</title>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">   
    
    <style>
    @import url('https://fonts.googleapis.com/css2?family=PT+Sans&display=swap');
:root {
    font-size: 10px;
    font-family: 'PT Sans';
    font-weight: 900;
    box-sizing: border-box;
}

body {
    background-color: #0E1015;
    margin: 0%;
    padding: 0%;
    overflow-x: hidden;
}



/* BODY */

.body {
    display: flex;
    flex-direction: column;
}

.headingClub {
    background: linear-gradient(to right, #8a36e9, hsl(246, 85%, 61%), #cf23cf, #e716ba);
    -webkit-text-fill-color: transparent;
    -webkit-background-clip: text;
    font-size: 'pt sans';
    font-weight: 900;
    font-size: 3rem;
    text-align: center;
}


/* LEFT DASHBOARD */

.body>.LeftDashBoard {
    color: white;
    width: 30%;
    font-family: 'pt sans';
    font-weight: 900;
    background-image: url(https://digitalsynopsis.com/wp-content/uploads/2017/07/beautiful-color-ui-gradients-backgrounds-can-you-feel-the-love-tonight.png);
    display: flex;
    justify-content: space-evenly;
    /* border: 2px solid red; */
}

.body>.LeftDashBoard>.admin {
    /* border-right: 2px solid white; */
    text-align: center;
    margin: 2rem 0;
    padding: 1em;
    border: 2px oslid red;
}

.body>.LeftDashBoard>.club {
    /* border-right : 2px solid white; */
    text-align: center;
    margin: 2rem 0;
    padding: 1em 1.5em;
}

.body>.LeftDashBoard>.user {
    /* border : 2px solid white; */
    text-align: center;
    margin: 2rem 0;
    padding: 1em;
}
.body>.LeftDashBoard>.club > .subList > a{
color: white;
text-decoration: none;
}
.body>.LeftDashBoard .heading {
    font-size: 2rem;
    font-weight: 900;
    color: rgb(0, 0, 0);
}


/* CARAOUSAL IMAGE */

.coarousalImg {
    width: 100vw;
    height: 50vh;
}

#carouselExampleIndicators>.heading {
    color: white;
    text-align: center;
    font-size: 2.5rem;
    margin: 4rem;
    border: 10px solid;
    border-width: 5px; 
    margin-bottom: 2rem;
    border-image-slice: 1;
    border-image-source: linear-gradient(to left, #743ad5, #d53a9d);
   
    font-family: 'pt sans';
    font-weight: 900;
}


/* ABOUT US */

.About_Us {
    color: white;
    width: 90%;
    margin: auto;
    margin-top: 3rem;
    /* border: 3px solid red; */
}

.About_Us>.parent {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}

.membersData>.Members>table {
    width: 80%;
    text-align: center;
    border: 2px solid white;
}
.membersData>.Members>table  th {
    padding: 0.5rem;
    border: 2px solid white;
    font-size: 'pt sans';
    font-weight: 900;
    font-size: 2rem;
    text-align: center;
}
.membersData>.Members>table  td {

   padding: 0.5rem;
    border-right: 2px solid white;
}

.About_Us>.Heading {
    text-align: center;
    font-size: 2.5rem;
    border: 10px solid;
    border-width: 5px; 
    border-image-slice: 1;
    border-image-source: linear-gradient(to left, #743ad5, #d53a9d);
   
    font-weight: 900;
    font-family: 'pt sans';
}

.About_Us>.parent>.leftInfo {
    padding: 1rem;
    text-align: center;
}

.About_Us>.parent>.rightImage {
    /* border: 2px solid red; */
    display: flex;
    width: 100%;
    justify-content: center;
    align-items: center;
}

.About_Us>.parent>.rightImage>img,
.membersData>.Members>.member>img {
    padding: 1rem;
    max-width: 70%;
    min-height: 20vh;
    border-radius: 50px;
}


/* MEMBERS DATA */

.menbersData>.member {
    display: flex;
    flex-direction: column;
}

.membersData>.Members>.member {
    display: flex;
    flex-direction: column;
    width: 100%;
    justify-content: center;
    align-items: center;
}

.membersData>p {
    text-align: center;
    font-size: 2.5rem;
    border: 5px solid;
    border-width: 5px; 
    border-image-slice: 1;
    border-image-source: linear-gradient(to left, #743ad5, #d53a9d);
   
    font-weight: 900;
    margin: 4rem;
    font-family: 'pt sans';
}


/* FOOTER */

.footer {
    width: 100%;
    color: white;
    background: radial-gradient(81.8% 390.3% at 24% 50%, #7700ff 0%, hsl(246, 92%, 51%) 100%);
}

.row_footer {
    width: 90%;
    display: flex;
    margin: auto;
    justify-content: center;
    align-items: center;
}

.row_footer>* {
    margin: 2rem;
}

.row_footer>:hover {
    opacity: 0.8;
}

@media (min-width: 450px) {
   
     :root {
        font-size: 16px;
        font-family: 'PT Sans';
        font-weight: 900;
    }
    
}

@media (min-width: 850px) {
    /* NAVIGATION CHANGEs */
  
   
    .About_Us>.parent {
        flex-direction: row;
    }
    .About_Us>.parent>.leftInfo {
        padding: 1rem;
        width: 50%;
        text-align: center;
    }
    .About_Us>.parent>.rightImage {
        /* border: 2px solid red; */
        display: flex;
        width: 50%;
        justify-content: center;
        align-items: center;
    }
    .membersData>.Members {
        display: flex;
        flex-direction: row;
    }
}

@media (min-width: 1000px) {
    .body {
        flex-direction: row;
        width: 100%;
    }
    /* LEFT DASHBOARD */
    .body>.RightDashBoard {
        width: 60%;
        height: 100vh;
    }
    .body>.LeftDashBoard {
        margin-top: 2rem;
        background-image: url(https://digitalsynopsis.com/wp-content/uploads/2017/07/beautiful-color-ui-gradients-backgrounds-can-you-feel-the-love-tonight.png);
        background-size: cover;
        background-position: center;
        width:30%;
        min-width:300px;
        height: 70vh;
        padding: 2rem;
        display: flex;
        flex-direction: column;
    }
    /* .body > .LeftDashBoard > .admin{
        border-right: 2px solid white;
        text-align: center;
        margin: 2rem 0;
        padding: 1em;
        border: 2px oslid red;
    } */
    .body>.LeftDashBoard>.club {
        /* border-right : 2px solid white; */
        text-align: center;
        margin: 2rem 0;
        padding: 1em 1.5em;
    }
    /* .body > .LeftDashBoard > .user{
        border : 2px solid white;
        text-align: center;
        margin: 2rem 0;
        padding: 1em;
    } */
    .body>.LeftDashBoard .heading {
        font-size: 2rem;
        font-weight: 900;
        color: rgb(0, 0, 0);
    }
}
    
    </style>
    
    </head>
<body>
  
    <%@ include file="header.jsp" %>
     <div class="headingClub">
     <h3>Welcome ,  ${sessionScope.user.name.toUpperCase()}</h3>
   
       ${club.club_name.toUpperCase()} CLUB DASHBOARD
    </div>
    <div class="body">
            <div class="LeftDashBoard">
	            
	            <div class="club">
	                <p  class="heading">Event</p>
	                <div class="subList">
	                    <a href="ClubAddTheEvent"><p>Add Event</p></a>
	                    <a href="ClubViewAllEvent"><p>View All Event</p></a>
	                    <a href="EventsFinished"><p>Events Finished</p></a>
	                	<a href="ViewAllSuggestions"><p>Users Suggestions for Club</p></a>
	                 
	                    
	                </div>
	            </div>
	            <div class="club">
	                <p  class="heading">Users</p>
	                <div class="subList">
	                    <a href="ClubRegisteredUSeresOfEvent"><p>Registered Users of Event</p></a>
	                    <a href="ClubViewAllEvent"><p>Winners Of the Event</p></a>
	                </div>
	            </div>
	        </div>
        <div class="RightMainPage">
   

            <div class="About_Us">
                <p class="Heading">About Us</p>
                <div class="parent">
                    <div class="leftInfo">
				  ${club.club_detail}
                        <br><hr style="border: 1px solid white;">
                        Date of Establishment : ${club.est_year}
                    </div>
                    <div class="rightImage">
                        <c:if test="${club.icon_image!=null}">
                        <img src="${club.icon_image}" alt="...">
                    	</c:if>
                        <c:if test="${club.icon_image==null}">
                        <img src="https://webgradients.com/public/webgradients_png/039%20Deep%20Blue.png" alt="...">
                    	</c:if>
                        
                    </div>
                </div>
            </div>

           
              <br>

        </div>
   
    </div>
       <div class="container-fluid membersData text-white" >
        <p>MEMBERS OF  CLUB</p>
        <div  class="Members" >
            <table align="center">
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Password</th>
                    </tr>
                    <c:forEach var="m" items="${members}">
	                    <tr>
	                        <td>${m.name}</td>
	                        <td>${m.email}</td>
	                        <td style="font-size: 8px;"><c:forEach begin="0" end="${m.password.length()-1}" step="1"><i class="fa fa-circle"></i> </c:forEach></td>
	                    </tr>
					</c:forEach>
            </table>
        </div>
    </div>
    <div class="container-fluid membersData text-white" >
        <p>CELIBRITIES OF CLUB</p>
        <div  class="Members" >
            <table align="center">
                    <tr>
                        <th>Post</th>
                        <th>Name</th>
                        <th>Email</th>
                    </tr>
                    
                    <c:if test="${club.president!=null }">
	                <tr>
                        <td>President</td>
                        <td>${club.president}</td>
                        <td>${club.president_email}</td>
                    </tr>
                     </c:if>
                    <c:if test="${club.vice_president!=null}">
	                <tr>
                        <td>Vice-President</td>
                        <td>${club.vice_president}</td>
                        <td>${club.vice_president_email}</td>
                    </tr>
                     </c:if>
                    <c:if test="${club.secretary!=null }">
	                <tr>
                        <td>Secretary</td>
                        <td>${club.secretary}</td>
                        <td>${club.secretary_email}</td>
                    </tr>
                     </c:if>
                    <c:if test="${club.treasurer!=null}">
	                    <tr>
	                        <td>Treasurer</td>
	                        <td>${club.treasurer}</td>
	                        <td>${club.treasurer_email}</td>
	                    </tr>
                    </c:if>

            </table>
        </div>
    </div>
    <c:if test="${club.hero_img!=null}">
    
		    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		        <div class="carousel-inner">
		        	      <div class="carousel-item active">
				            <img src="${club.hero_img}" style="width: 100%; height: 500px;"  alt="...">
				          </div>
		        </div>
		      </div>
    </c:if>
     <br><br>
     <%@ include file="footer.jsp" %>
   
</body>
</html>