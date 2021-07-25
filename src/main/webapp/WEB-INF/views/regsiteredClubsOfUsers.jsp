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
    </head>
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
        font-family: 'pt sans';
        font-weight: 900;
        background-image: url(https://digitalsynopsis.com/wp-content/uploads/2017/07/beautiful-color-ui-gradients-backgrounds-can-you-feel-the-love-tonight.png);
        display: flex;
        justify-content: space-evenly;
        align-items:center;
       
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
    .body > .LeftDashBoard  > * >.subList > p > a{
    	 color:#f2f7f4;
    	 font-size:1.3rem;
        font-family: 'pt sans';
        font-weight: 900;
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
    
  
    /* ABOUT US */
     /* DATAS */
            
            .datas {
                width: 100%;
                margin: 1rem 0;
                padding: 1rem;
               display: grid;
  				grid-template-columns: 25% 25% 25% 25%;
  				grid-template-rows: auto;
  				 grid-auto-flow: dense;
                grid-row-gap: 20px;
                grid-column-gap: 20px;
            }
            
            .data {
                width: 100%;
                /* border: 2px solid red; */
                display: flex;
                border: 4px solid;
                border-width: 4px; 
                border-image-slice: 1;
                border-image-source: linear-gradient(to left, #743ad5, #d53a9d);
                padding: 0.5rem;
                flex-direction: column;
                align-items: center;
            }
            
            .datas>.data>img {
                width: 100%;
                height: 100%;
                border-radius: 20px;
            }
            
            .datas>.data>p {
                color: white;
                width: 100%;
                text-align: center;
                font-family: 'pt sans';
                font-size: 2.5rem;
                font-weight: 900;
            }
            
            .datas>.data>.buttons {
                width: 100%;
                
                display: flex;
                align-items: stretch;
                justify-content: space-evenly;
            }
            
            .datas>.data>.buttons>a {
                width: 34%;
                text-align: center;
                border-radius: 10px;
                text-align: center;
                font-family: 'pt sans';
                font-weight: 900;
                font-size:1rem;
                color: white;
                padding: 0.7em 0px;
                background: radial-gradient(81.8% 390.3% at 24% 50%, #7700ff 0%, hsl(246, 92%, 51%) 100%);
                /* border: 2px solid red; */
            }
            
            .datas>.data>.buttons>a:hover {
                text-decoration: none;
                background: radial-gradient(81.8% 390.3% at 24% 50%, #8a24ff 0%, hsl(246, 91%, 57%) 100%);
            }	
            
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
        font-weight: 900;
        border: 10px solid;
        border-width: 5px; 
        border-image-slice: 1;
        border-image-source: linear-gradient(to left, #743ad5, #d53a9d);
       
        margin-top: 5rem;
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
       
        .body>.LeftDashBoard {
            background-size: cover;	
        }
        .Header_Nav>.left_Logo {
            width: 20%;
            /* border: 2px solid red; */
        }
       
        .membersData>.Members {
            display: flex;
            flex-direction: row;
        }
    }
    
    @media (min-width: 1000px) {
        .body {
            flex-direction: column;
            width: 100%;
        }
        /* LEFT DASHBOARD */
        .body>.RightDashBoard {
            width: 100%;
        }
        .body>.LeftDashBoard {
            margin-top: 1rem;
            background-image: url(https://digitalsynopsis.com/wp-content/uploads/2017/07/beautiful-color-ui-gradients-backgrounds-can-you-feel-the-love-tonight.png);
            background-size: cover;
            background-position: bottom;
            width: 100%;
            /* border: 2px solid red; */
            padding: 0rem;
            display: flex;
            flex-direction: row;
            justify-content: space-evenly;
            align-items: center;
        }
        .body>.LeftDashBoard>.admin {
            /* border-right: 2px solid white; */
            text-align: center;
            margin: 2rem 0;
            padding: 0.5em;
            /* border: 2px oslid red; */
        }
        .body>.LeftDashBoard>.club {
            /* border-right : 2px solid white; */
            text-align: center;
            margin: 2rem 0;
            padding: 1em ;
        }
        .body>.LeftDashBoard>.user {
            /* border : 2px solid white; */
            text-align: center;
            margin: 2rem 0;
            padding: 1em;
        }
        .body>.LeftDashBoard .heading {
            font-size: 2rem;
            font-weight: 900;
            color: rgb(0, 0, 0);
        }
    }
    </style>
    
    
<body>
   
	 <%@ include file="header.jsp" %>
    <div class="headingClub">
    	${sessionScope.user.name}'s Registered Clubs
    </div>
    <div class="body">
        <div class="RightMainPage">
					 <div class="datas">
					    		<c:forEach var="club" items="${clubs}">
						    		<div class="data">
						    			<c:if test="${club.icon_image==null }">
						    			<img src="https://webgradients.com/public/webgradients_png/039%20Deep%20Blue.png" alt="">
						    			</c:if>
						    			<c:if test="${club.icon_image!=null }">
						    			<img src="${club.icon_image}" alt="">
						    			</c:if>
							            <p>${club.club_name}</p>
							            <div class="buttons">
							            	 <a href="clbInfoFromListOfClbAdmin/${club.clubid}">Club Info</a>
							            	 <a href="UnRegisterTheClubofUser/${club.clubid}">UnRegister</a>
							            </div>
							        </div>
						        </c:forEach>
					    </div>
        </div>
    </div>
	 <%@ include file="footer.jsp" %>
</body>
</html>