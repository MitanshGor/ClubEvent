<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Admins</title>

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
                .Header_Nav > .left_Logo > img{
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

                .headingClub {
                    background: linear-gradient(to right, #8a36e9, hsl(246, 85%, 61%), #cf23cf, #e716ba);
                    -webkit-text-fill-color: transparent;
                    -webkit-background-clip: text;
                    font-size: 'pt sans';
                    font-weight: 900;
                    font-size: 3rem;
                    text-align: center;
                    
                }


                table , table tr , table th , table td{
                    text-align: center;
                    border: 2px solid white;;
                }
                table{

                    font-size: 1.2rem;
                    width: 80%;
                    margin-bottom: 2rem;
                }
                table td , table,th{
                    padding: 0.5rem;
                }
                table th{
                    
                    font-size: 1.6rem;
                }
                table td{
                    color: white;
                }
                table  th{
                    background: linear-gradient(to right, #8a36e9, hsl(246, 85%, 61%), #cf23cf, #e716ba);
                    -webkit-text-fill-color: transparent;
                    -webkit-background-clip: text;
                    font-size: 'pt sans';
                    text-transform: uppercase;
                    font-weight: 900;
                    text-align: center;   
                }
                table td{

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
 
}


</style>
</head>
<body>
  	<@<%@ include file="header.jsp" %>
    <div class="headingClub">
        Suggestions By Users
     
        <br>
    </div><br>
    
    
    
    			<c:if test="${suggestions.size()==0 || suggestions==null}">
    				<img src="https://i.pinimg.com/originals/48/fb/90/48fb90bcf2a1f779ee66deee8a12c898.png" style="width: 70%;height:70%;display: flex;margin: auto; " >
			</c:if>
    			<c:if test="${suggestions.size()!=0 && suggestions!=null}">
    			
                        <table align="center">
    						<caption>    <h6 style="color: white;font-size: 1.2rem;">Remove the suggestion if not required any more !!</h6></caption>
                            <tr>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Phone</th>
                                <th>suggestions</th>
                            	<th>Remove</th>
                            </tr>
                              <c:forEach var="sug" items="${suggestions}">
                              	<tr>
                              		
                              			<td>${sug.name}</td>
                              			<td>${sug.email}</td>
                              			<td>${sug.phone}</td>
                              			<td>${sug.suggestion}</td>
                              			<td><a style="color: white;" href="removeSuggestion/${sug.pk}"> Remove </a></ td>
                              	</tr>
                              </c:forEach>
                        </table>
				</c:if>

</body>
</html>