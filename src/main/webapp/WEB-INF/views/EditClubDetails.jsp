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
    <title>Document</title>
    <style type="text/css">
        @import
            url('https://fonts.googleapis.com/css2?family=PT+Sans&display=swap');
        
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
            margin: 0px;
            width: 100%;
            padding: 0;
            background-color: #0E1015;
            /* border: 2px solid red; */
            margin-top: 6rem;
        }
        
        /* Image */
        .body>.img {
            display: none;
        }
        /* Form */
        .body>.form {
            /* margin: 6rem 1rem; */
            border: 10px solid;
            padding: 1em;
            border-width: 5px;
            border-image-slice: 1;
            border-image-source: linear-gradient(to left, #743ad5, #d53a9d);
            display: flex;
            background-color: #1e212b;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        
        .form>* {
            width: 100%;
            color: white;
            text-align: center;
            /* border:2px solid  tomato; */
        }
        
        .form>.Heading {
            padding: 1em 0;
            font-size: 3rem;
            width: 100%;
            text-shadow: 5px 5px 8px rgba(212, 206, 206, 0.55);
        }
        
        .form>.form_data>* {
            padding: 1em 0;
            width: 100%;
            border-image-slice: 1;
            border-image-source: linear-gradient(to left, #9973da, #c4609f);
            border-width: 5px;
            align-self: center;
            border-radius: 1rem;
            margin: 0.7rem 0;
        }
        
        .form>.form_data>input::placeholder {
            padding: 1em;
            font-family: 'pt sans';
            font-weight: 900;
        }
        
        .form>.submitDiv {
            /* border: 2px solid red; */
            padding: 0.4rem;
        }
        
        .form>.submitDiv>input {
            padding: 0.6em 3.5em;
            color: white;
            background-color: #1B30BB;
            border: 2px solid #0E1015;
        }
        
        .form>.submitDiv>input:focus, .form>.submitDiv>input:hover {
            border: 0px;
            border: transparent;
        }
        
        .form>.submitDiv>a {
            width: 100%;
            color: white;
            font-size: 0.6rem;
            /* border: violet 2px solid; */
            margin-left: 2rem;
        }
        
        /* MEDIA  QUERRIES */
        @media ( min-width : 360px) {
            
            :root {
                font-size: 16px;
                font-family: 'PT Sans';
                font-weight: 900;
            }
            
            .body {
                display: flex;
                width: 80%;
                margin: auto;
                margin-top: 5rem;
                justify-content: space-around;
            }
            .form>.form_data{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center; 
            }
            .body>.img {
                display: none;
            }
        }
        
        @media ( min-width : 650px) {
            .body {
                display: flex;
                width: 80%;
                padding: 0 20px;
                margin-top: 5rem;
                /* border: 2px solid red; */
                justify-content: space-between;
                flex-direction: row-reverse;
            }
            .body>.img {
                display: block;
                padding: 0;
                /* border: 3px solid red; */
                /* border: 2px solid red; */
                display: flex;
                width: 40%;
                flex-direction: row;
                justify-content: center;
            }
            .form>.form_data>* {
                padding: 1em 0;
                width: 70%;
                border-radius: 1rem;
                margin: 0.7rem 0;
            }
            /* Form */
            .body>.form {
                width: 100%;
                padding: 0px;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            .form>.form_data{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center; 
            }
            .body>.img {
                display: flex;
                width: 40%;
                flex-direction: row;
            }
            
        }
        
        @media ( min-width : 850px) {
            .body {
                overflow-x: hidden;
            }
            :root {
                font-size: 20px;
                font-family: 'PT Sans';
                font-weight: 900;
            }
        
            /* BODY CHANGES */
            .body {
                display: flex;
                width: 75%;
                margin-top: 3.2rem;
                justify-content: space-between;
                align-items:center;
                flex-direction: row-reverse;
            }
            .form>.Heading {
                padding: 0em 0;
            }
            .body>.img {
                display: flex;
                width: 50%;
                flex-direction: row;
            }
            .body>.img>img {
                width: 100%;
            }
            /* Form */
            .body>.form {
                width: 100%;
            }
            .form>.form_data{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center; 
            }
            .form>.form_data>* {
                width: 80%;
            }
        }
        </style>

</head>
<body>
<script type="text/javascript">
function validate() {
		 var name = document.forms["myform"]["club_detail"].value;
		 if(name==""){
		 alert("Please enter the club Detail");
		 return false;
		 }
		 else
		 {
			if(name.length()>=500)
			{
				 alert("Detail length cannot exceed 500");
				 return false;
			}
		 }
	
		 // PRESIDENET
		  name = document.forms["myform"]["president"].value;
		 if(name==""){
		 alert("Please enter the President Name");
		 return false;
		 }
		 
		 var email = document.forms["myform"]["president_email"].value;
		 if(email==""){
		 alert("Please enter the President Email");
		 return false;
		 }else{
			 var re = /^(?:[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])$/;
			 var x=re.test(email);
			 if(x){
			 }
			 else
			 {
				 alert("President Email id not in correct format");
				 return false;
			 } 
		 }  
		 // VICE_ PRESIDENET
		  name = document.forms["myform"]["vice_president"].value;
		 if(name==""){
		 alert("Please enter the Vice President Name");
		 return false;
		 }
		 
		 var email = document.forms["myform"]["vice_president_email"].value;
		 if(email==""){
		 alert("Please enter the Vice President Email");
		 return false;
		 }else{
			 var re = /^(?:[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])$/;
			 var x=re.test(email);
			 if(x){
			 }
			 else
			 {
				 alert("Vice President Email id not in correct format");
				 return false;
			 } 
		 }  
		 // Secretary
		  name = document.forms["myform"]["secretary"].value;
		 if(name==""){
		 alert("Please enter the Secretary Name");
		 return false;
		 }
		 
		 email = document.forms["myform"]["secretary_email"].value;
		 if(email==""){
		 alert("Please enter the Secretary Email");
		 return false;
		 }else{
			 var re = /^(?:[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])$/;
			 var x=re.test(email);
			 if(x){
			 }
			 else
			 {
				 alert("Secretary Email id not in correct format");
				 return false;
			 } 
		 }  
		 // TREASURER
		  name = document.forms["myform"]["treasurer"].value;
		 if(name==""){
		 alert("Please enter the Treasurer Name");
		 return false;
		 }
		 
		  email = document.forms["myform"]["treasurer_email"].value;
		 if(email==""){
		 alert("Please enter the Treasurer Email");
		 return false;
		 }else{
			 var re = /^(?:[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])$/;
			 var x=re.test(email);
			 if(x){
			 }
			 else
			 {
				 alert("Treasurer Email id not in correct format");
				 return false;
			 } 
		 }  
		}
</script>


    <div class="body">
        <s:form name="myform" class="form" onsubmit="return validate()" enctype="multipart/form-data" method="post" action="../EditClbDataAdmin" modelAttribute="club">
            <div class="Heading">
                    Update Club
            </div> <br><br><br>
            <div class="form_data">
              				<input type="hidden" value="${club.clubid}" name="clubid">
               Club Name : <input type="text" placeholder="Club Name" value="${club.club_name}" name="club_name" readonly="readonly">
                Club Detail : <input type="text" placeholder="Club Detail" value="${club.club_detail}" name="club_detail" > <br> 
                <div style="display: flex; ">
	                <Label for="Poster Image" >Update Poster Image</Label>
	                <input type="file" style="visibility:hidden;" id="Poster Image" name="mpHeroImage"><br>
                </div>
                <div style="display: flex;">
	                <Label for="Icon Image"  >Update Icon Image</Label>
	                <input type="file" style="visibility:hidden;" id="Icon Image" name="mpIconImage">
                </div>
            </div>
            <div class="form_data">
                President Name <input type="text" placeholder="President" value="${club.president}" name="president">
                President Email <input type="email" placeholder="President Email" value="${club.president_email}" name="president_email" >    
                Vice-President Name <input type="text" placeholder="Vice-President" value="${club.vice_president}" name="vice_president" >
                Vice-President Email <input type="email" placeholder="Vice-President Email" value="${club.vice_president_email}" name="vice_president_email">
                Secretary Name <input type="text" placeholder="Secretary" value="${club.secretary}" name="secretary">
                Secretary Email  <input type="email" placeholder="Secretary Email" value="${club.secretary_email}" name="secretary_email" >    
                Treasurer Name <input type="text" placeholder="Treasurer" value="${club.treasurer}" name="treasurer" >
                Treasurer Email <input type="email" placeholder="Treasurer Email" value="${club.treasurer_email}" name="treasurer_email">    
            </div>
           
            <div class="submitDiv">
                <input type="submit" value="Update Club">
            </div>
        </s:form>
    </div>
</body>
</html>l>