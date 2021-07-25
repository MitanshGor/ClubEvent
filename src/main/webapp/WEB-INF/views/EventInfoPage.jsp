<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>

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
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
s
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


/* HEADER */

.Header_Nav {
    width: 100%;
    /* border: 2px solid red; */
    display: flex;    flex-direction: column;
    justify-content: center;
    align-items: center;

}


/* Header Logo */

.Header_Nav>.left_Logo {
    /* border: 2px solid red; */
    width: 40%;
    display: flex;
    justify-content: center;
    align-items: center;
}

.Header_Nav>.left_Logo>img {
    width: 100%;
}


.nav-toggle {
    cursor: pointer;
    border: 0;
    width: 3em;
    height: 3em;
    padding: 0em;
    float: right;
    border-radius: 50%;
    background: #072A2D;
    color: white;
    transition: opacity 250ms ease;
    
    position: absolute;
    left: 90%;
}
.nav-toggle:focus,
.nav-toggle:hover {
opacity: .5;
}

.hamburger {
width: 50%;
position: relative;
}

.hamburger,
.hamburger::before,
.hamburger::after {
display: block;
margin: 0 auto;
height: 3px;
background: white;
}

.hamburger::before,
.hamburger::after {
content: '';
width: 100%;
}

.hamburger::before {
transform: translateY(-6px);
}

.hamburger::after {
transform: translateY(3px);
}

/* Header Navigation */

.Header_Nav>.right_nav {
    width: 40%;
    display: flex;
    visibility: hidden;
    height: 0;
        flex-direction: column;
    justify-content: center;
    align-items: center;
    list-style: none;
    color: rgb(255, 255, 255);
    font-family: 'PT sans';
}
.Header_Nav>.right_nav--visible {
    width: 40%;
    visibility: hidden;
    visibility: visible;
    height: auto;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    list-style: none;
    color: rgb(255, 255, 255);
    font-family: 'PT sans';
}

.Header_Nav>.right_nav>li {
    padding: 0.5em 0;
    font-size: 1rem;
    letter-spacing: 0.03em;
}

.Header_Nav>.right_nav>li:hover {
    opacity: 0.8;
}


/* BODY */

.body {
    display: flex;
    width:100%;
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
    width:100vw;
    padding: 90px;
    margin-top: 3rem;
    /* border: 3px solid red; */
}

.About_Us>.parent {
    display: flex;
    width:100%;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}

.About_Us>.Heading {
    text-align: center;
    font-size: 2.5rem;
    border: 10px solid;
    width : 100%;
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
    .Header_Nav>.left_Logo {
        /* border: 2px solid red; */
        width: 40%;
        display: flex;
        justify-content: center;
        align-items: center;
    }
     :root {
        font-size: 16px;
        font-family: 'PT Sans';
        font-weight: 900;
    }
    .Header_Nav>.left_Logo>img {
        height: 100%;
        /* height: 400px; */
        width: 100%;
    }
}

@media (min-width: 850px) {
    /* NAVIGATION CHANGEs */
    .Header_Nav {
        padding-top: 2rem;
        flex-direction: row;
    }
    .nav-toggle{
        visibility: hidden;
    }
    .Header_Nav>.left_Logo {
        width: 20%;
        /* border: 2px solid red; */
    }
    .Header_Nav>.left_Logo>img {
        height: 3rem;
        width: 100%;
    }
    .Header_Nav>.right_nav {
        width: 60%;
        visibility: visible;
        flex-direction: row;
        justify-content: space-evenly;
    }
    .Header_Nav>.right_nav>li {
        padding: 0.5em 0;
        font-size: 1rem;
        letter-spacing: 0.03em;
    }
    .About_Us>.parent {
        flex-direction: row;
        width: 100%;
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
        width: 100%;
        height: 100vh;
    }
    
   
}
	</style>

    </head>

<body>
   <%@ include file="header.jsp" %>


   <div class="headingClub" style="border: 4px solid white; margin: 1rem;">
        ${events.event_title} Event
    </div>
  <c:if test="${ events.bannerImg!=null || events.bannerImg.size()>0}">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		        <div class="heading">
		            MAJOUR HIT EVENTS
		        </div>
		        <ol class="carousel-indicators">
		        <c:set value="1" var="i"></c:set>
		          <c:forEach var = "i" begin = "1" end = "${events.bannerImg.size()}">
			           <c:if test="${i==1}">
				          <li data-target="#carouselExampleIndicators" data-slide-to="${i}" class="active"></li>
		          	   </c:if>
					   <c:if test="${i>1}">
						   <li data-target="#carouselExampleIndicators" data-slide-to="${i}"></li>
						</c:if>
					     
		          </c:forEach>
		        </ol>
		        <div class="carousel-inner">
		        <c:set value="1" var="i"></c:set>
		          <c:forEach items="${events.bannerImg}" var="image">
					      <c:if test="${i==1}">
						      <div class="carousel-item active" >
					            <img src="../${image.img}" width="100%" height="400px" alt="...">
					          </div>
					      </c:if>
					      <c:if test="${i>1}">
						      <div class="carousel-item" >
					            <img src="../${image.img}" width="100%" height="400px" alt="...">
					          </div>
					      </c:if>
					      		<c:if test="${sessionScope.userType.equals('club')}">
								      <div class="carousel-caption d-none d-md-block">
									    <a class="btn btn-danger" style="opacity: 0.35" href="../deleteTheEventBannerImageClub/${image.eventid}_${image.bannerid}">Delete The Image</a>
									  </div>
					      		</c:if>
						  <br>
						      <c:set var="i" value="2"></c:set>
		          </c:forEach>
		          <a class="carousel-control-prev" href="#demo" data-slide="prev">
					    <span class="carousel-control-prev-icon"></span>
					  </a>
					  <a class="carousel-control-next" href="#demo" data-slide="next">
					    <span class="carousel-control-next-icon"></span>
					  </a>
		        </div>
		       
		      </div>
	</c:if>
	<br><br>
	<c:if test="${sessionScope.userType.equals('club')}">
			  		<div class="text-light"  style="display: flex; width: 40vw;margin:auto; justify-content: center;">
			  			<form action="../AddTheEventBannerImageClub/${events.eventid}" method="post" enctype="multipart/form-data">
				  			<input type="file" name="bannerimg"> 
				  			<input type="submit" class="btn btn-secondary" value="Add Banner Image">	
				  		</form >
			  			</div>
  			</c:if>
  
    <div class="body">
        <div class="RightMainPage">
            <div class="About_Us">
                <p class="Heading">About Us</p>
                <div class="parent">
                    <div class="leftInfo">
                        ${events.event_desc} 
                    </div>
                </div>
            </div>
              <br>

        </div>
   
    </div>
    <div class="container-fluid membersData text-white" >
        <p>Event Dates</p>
        <div  class="Members" >
            <table align="center">
                    <tr>
                        <th>Start Date</th>
                        <th>End Date</th>
                    </tr>
                        <tr>
	                        <td>${events.event_start_date}</td>
	                        <td>${events.event_end_date }</td>
	                    </tr>
            </table>
        </div>
    </div>
    <div class="container-fluid membersData text-white" >
        <p>Registration Date</p>
        <div  class="Members" >
            <table align="center">
                    <tr>
                        <th>Start Date</th>
                        <th>End Date</th>
                    </tr>
                    
                    <tr>
                        <td>${events.reg_start_date}</td>
                        <td>${events.reg_end_date}</td>
                    </tr>
            </table>
        </div>
    </div>
    <br><br></br>
	<%@ include file="footer.jsp" %>
	 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  
</body>
</html>

<!-- 


  			<a class="btn btn-light"  href="addExtraBannerImageforEvent/${events.eventid}">Add Another Banner Image</a>
 -->