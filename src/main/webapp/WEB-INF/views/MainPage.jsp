<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
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
:root{
    font-size: 10px;
    font-family: 'PT Sans';
    font-weight: 900;
    box-sizing: border-box;
}
body
{
    background-color: #0E1015;
    margin: 0%;
    padding: 0%;
    overflow-x: hidden;
    
}

/* MAIN BODY */
                /* CARAOUSAL IMAGE */
                .coarousalImg{
                    width: 100vw;
                    height: 60vh;
                }


                /* ABOUT US */
                .About_Us{
                    color: white;
                    width: 90%;
                    margin: auto;
                    
                    margin-top: 3rem;
                    /* border: 3px solid red; */
                }
                .About_Us > .parent
                {
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                    align-items: center;
                }
                .About_Us > .Heading{
                    text-align: center;
                    font-size: 2.5rem;
                    font-weight: 900;border: 4px solid;
                    border-width: 4px; 
                    border-image-slice: 1;
                    border-image-source: linear-gradient(to left, #743ad5, #d53a9d);
                    
                    font-family: 'pt sans';
                }
                .About_Us > .parent > .leftInfo
                {
                padding: 1rem;
                text-align: center;
                }

                .About_Us > .parent > .rightImage 
                {

                    /* border: 2px solid red; */
                    display: flex;
                    width: 100%;
                justify-content: center;
                align-items: center;
                }



                /* MEMBERS DATA */
                .menbersData > .member{
                    display: flex;
                    flex-direction: column;
                }
                .membersData > .Members > .member
                {
                    display: flex;
                    flex-direction: column;
                    width: 100%;
                justify-content: center;
                align-items: center;
                }
                .About_Us > .parent > .rightImage >img , .membersData > .Members > .member > img
                {
                    padding: 1rem;
                    max-width: 70%;
                    min-height: 20vh;
                    border-radius:50px;

                }
                .membersData > p{
                    text-align: center;
                    font-size: 2.5rem;
                    font-weight: 900;border: 4px solid;
                    border-width: 4px; 
                    border-image-slice: 1;
                    border-image-source: linear-gradient(to left, #743ad5, #d53a9d);
                    margin: 4rem;
                    font-family: 'pt sans';
                }


            

@media (min-width : 360px) 
{
    .Header_Nav > .left_Logo{
        /* border: 2px solid red; */
        width: 40%;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    :root{
        font-size: 16px;
        font-family: 'PT Sans';
        font-weight: 900;
    }    
    .Header_Nav > .left_Logo > img{
        height: 100%;
        /* height: 400px; */
        width: 100%;
    }
}

@media (min-width : 850px) 
{
    /* NAVIGATION CHANGEs */
    .Header_Nav {
        padding-top: 2rem;
        padding-bottom: 2rem;
        flex-direction: row;
    } 
    .nav-toggle{
        visibility: hidden;
    }
    .Header_Nav > .left_Logo{
        width: 20%;
        /* border: 2px solid red; */
    }
    .Header_Nav > .left_Logo > img{
        height: 3rem;
        width: 100%;
    }
    .Header_Nav > .right_nav{
        width: 60%;
        flex-direction: row;
        visibility: visible;
        justify-content: space-evenly;
    }
    .Header_Nav > .right_nav > a > li{
        padding: 0.5em 0;
        font-size: 1rem;
        text-decoration: none;
        color: white;
        letter-spacing: 0.03em;
    } 
    .About_Us > .parent
    {
        flex-direction: row;
    } 
    .About_Us > .parent > .leftInfo
    {
    padding: 1rem;
    width: 50%;
    text-align: center;
    }

.About_Us > .parent > .rightImage 
{

    /* border: 2px solid red; */
    display: flex;
    width: 50%;
   justify-content: center;
   align-items: center;
}
.membersData > .Members 
{
    display: flex;
    flex-direction: row;
    align-items: stretch;
}

}	
	</style>

</head>
<body>
 <%@ include file="header.jsp" %>
    <div class="body">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
            
            <c:forEach items="${images}" var="image" varStatus="i">
            	<c:if test="${i.index==0}">
            		<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            	</c:if>
				<c:if test="${i.index!=0}">
					  <li data-target="#carouselExampleIndicators" data-slide-to="${i.index}"></li>
				</c:if>            
            </c:forEach>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
            <c:forEach  items="${images}" var="image" varStatus="i">
            	<c:if test="${i.index==0}">
		            	<div class="carousel-item active">
		                <img src="${images.get(i.index).img}" class="coarousalImg"  alt="...">
		              </div>
            	</c:if>
				<c:if test="${i.index!=0}">
						<div class="carousel-item">
		                <img src="${images.get(i.index).img}" class="coarousalImg"  alt="...">
		              </div>
				</c:if>            
            </c:forEach>
              
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
    

    <div class="About_Us">
            <p class="Heading">About Us </p>
            <div class="parent">
                <div class="leftInfo">
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui fuga repudiandae delectus nemo blanditiis itaque tenetur dolor cupiditate omnis, sunt vitae mollitia eos perferendis explicabo rerum accusamus ratione. Quibusdam alias aliquid quos quae? Fugit voluptates, veritatis dignissimos reprehenderit accusamus repudiandae enim quidem dolores, expedita mollitia odit nobis suscipit dicta voluptatibus eius alias, et modi minus officiis. Illum doloremque nesciunt, magni sed corporis rem aliquid voluptates porro consequuntur voluptatum doloribus corrupti quidem. Aperiam porro asperiores, molestias dolore quibusdam, pariatur ipsa odio reprehenderit architecto provident quia est quas minus velit praesentium commodi in, mollitia odit sint eaque consequatur! Numquam voluptate consequuntur ea?
                </div>
                <div class="rightImage">
                    <img src="https://graphicdesignjunction.com/wp-content/uploads/2019/04/purple_logo_design_9.jpg" alt="...">
                </div>
            </div>
    </div>

    <div class="container-fluid membersData text-white" >
        <p>CONTRIBUTORS</p>
        <div  class="Members" >
            <div class="member">
                <img class="memberPic" src="resources/images/ProjectImages/Pic1.jpg">
                <p class="memberName">Mitansh Gor</p>
            </div>
            <div class="member">
                <img class="memberPic" src="resources/images/ProjectImages/Pic1.jpg">
                <p class="memberName">Mitansh Gor</p>
            </div>
            <div class="member">
                <img class="memberPic" src="resources/images/ProjectImages/Pic1.jpg">
                <p class="memberName">Mitansh Gor</p>
            </div>
        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>

</body>

</html>