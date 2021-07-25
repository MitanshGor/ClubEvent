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
    <title>MAIN PAGE</title>
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

.headingClub {
    background: linear-gradient(to right, #8a36e9, hsl(246, 85%, 61%), #cf23cf, #e716ba);
    -webkit-text-fill-color: transparent;
    -webkit-background-clip: text;
    font-size: 'pt sans';
    font-weight: 900;
    font-size: 3rem;
    text-align: center;
}
            /* DATAS */
            
            .datas {
                width: 100%;
                margin: 1rem 0;
                padding: 1rem;
               display: grid;
  				 grid-template-columns: auto;
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
                width: 23%;
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
            
            @media (min-width: 360px) {
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
            
            @media (min-width: 500px) {
                .datas {
                    grid-template-columns: auto auto;
                }
            }
            
            @media (min-width: 850px) {
                /* NAVIGATION CHANGEs */
                .Header_Nav {
                    padding-top: 2rem;
                    padding-bottom: 2rem;
                    flex-direction: row;
                }
                .nav-toggle{
                    visibility: hidden;
                }
               
                .datas {
                    grid-template-columns: 32%  32%  32% ;
                }
            }
            
            @media (min-width: 1150px) {
                .datas {
                    grid-template-columns: 24% 24% 24% 24%;
                }
            }
	
	
	</style>


</head>

<body>
    <%@ include file="header.jsp" %>
    <div class="headingClub">
        LIST OF CLUBS
        <br>
    </div>
    <c:if test="${clubs==null || clubs.size()==0}">
		    
		    	<img src="https://i.pinimg.com/originals/48/fb/90/48fb90bcf2a1f779ee66deee8a12c898.png" style="width: 50%;height:50%;display: flex;margin: auto; " >
	</c:if>
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
		            	<c:if test="${sessionScope.userType.equals('user')}">
		            			<a href="clubRegisterForUser/${club.clubid}">Register</a>
		                </c:if>
		            	 <a href="clbInfoFromListOfClbAdmin/${club.clubid}">Club Info</a>
		                 <a href="DeleteFromListOfClbAdmin/${club.clubid}">Delete</a>
		                 <a href="UpdateFromListOfClbAdmin/${club.clubid}">Update</a>
		            </div>
		        </div>
	        </c:forEach>
	        
    </div>
   <%@ include file="footer.jsp" %>
</body>

</html>