<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
/* HEADER */
.Header_Nav{
    width: 100%;
    /* border: 2px solid red; */
    display: flex;    flex-direction: column;
    justify-content: center;
    align-items: center;

}

                /* Header Logo */
                .Header_Nav > .left_Logo{
                    /* border: 2px solid red; */
                    width: 40%;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                }
                .Header_Nav > .left_Logo > a> img{
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
                .Header_Nav > .right_nav{
                    width: 40%;
                    display: flex;
                    height: 0px;
                    visibility: hidden;
        flex-direction: column;
                    justify-content: center;
                    align-items: center;
                    list-style: none;
                    color: rgb(255, 255, 255);
                    font-family: 'PT sans';
                } .Header_Nav>.right_nav--visible {
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
                
                .Header_Nav > .right_nav > a > li{
                    padding: 0.5em 0;
                    font-size: 1rem;
                    letter-spacing: 0.03em;
                    color: white;
                    text-decoration: none;
                }
                .Header_Nav > .right_nav > a> li:hover{
                    opacity: 0.8;
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
    .Header_Nav > .left_Logo >a> img{
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
	        width: 40%;
	        padding:1px;
	    }
	    .Header_Nav > .left_Logo > a> img{
	        height: 100px;
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
	}
}
</style>
</head>
<body>
  <script type="text/javascript">
  function showAlert(myText) {
    alert (myText);
  }
  </script>
   <div class="Header_Nav">
        <div class="left_Logo" >
        	<c:if test="${sessionScope.userType.equals('admin')}">
        	<a href="/CE/adminDashboardMain"><img src="http://localhost:8080/CE/resources/images/ProjectImages/inspecto.png" alt="Sitting Lady"></a>
        	</c:if>
        	<c:if test="${sessionScope.userType.equals('user')}">
        	<a href="/CE/MainPage"><img  src="http://localhost:8080/CE/resources/images/ProjectImages/inspecto.png" alt="Sitting Lady"></a>
        	</c:if>
			<c:if test="${ sessionScope.userType == null}">
				<a href="/CE/MainPage"><img  src="http://localhost:8080/CE/resources/images/ProjectImages/inspecto.png" alt="Sitting Lady"></a>
			</c:if>
        	<c:if test="${sessionScope.userType.equals('club')}">
        	<a href="/CE/clubDashboardMain"><img src="http://localhost:8080/CE/resources/images/ProjectImages/inspecto.png" alt="Sitting Lady"></a>
        	</c:if>
        
            <button class="nav-toggle" aria-label="open navigation">
                <span class="hamburger"></span>
            </button>
        </div>
        <ul class="right_nav">
            	<c:if test="${ !sessionScope.userType.equals('user') || sessionScope.user==null }">
	            	<a  style="cursor: default; opacity: 0.6;"  onclick="showAlert('Login First')" href=""><li>Club</li></a> 
	                <a  style="cursor: default; opacity: 0.6;"  onclick="showAlert('Login first')" href=""> <li>Event</li></a> 
	             </c:if>
               <c:if test="${sessionScope.userType.equals('user') && sessionScope.user!=null}">
	            	<a href="ViewClubs"><li>Club</li></a> 
	               <a href="ViewEvents"><li>Event</li></a> 
	           </c:if>
	           
	           <c:if test="${sessionScope.userType==null}">
	                <a href="/CE/loginPage"><li>Login</li></a> 
	                <a href="/CE/SignupPage"><li>Signup</li></a>     
	           </c:if>
	           <c:if test="${sessionScope.userType!=null}">
	                <a href="/CE/loginPage"><li>Logout</li></a>      
	           </c:if>
	           
	        <!-- </ul> -->
        </ul>
    </div>
	<script>
	const navToggle = document.querySelector('.nav-toggle');
	const nav = document.querySelector('.right_nav');

		navToggle.addEventListener('click', () => {
	    nav.classList.toggle('right_nav--visible');
	})
	</script>
</body>
</html>