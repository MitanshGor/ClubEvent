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
function validate() 
		{
			 var name = document.forms["myform"]["event_title"].value;
			 if(name==""){
			 alert("Please enter the name");
			 return false;
			 }
			  name = document.forms["myform"]["event_desc"].value;
			 if(name==""){
			 alert("Please enter the Description");
			 return false;
			 }
			 // REGISTRATION START DATE
			 var reg_date= document.forms["myform"]["reg_start_date"].value;
			if(reg_date=="")
			{
					 alert("Please enter the Regstration Start Date");
					 return false;
			}
			else
			{
				var reg = /^\d{4}-\d{2}-\d{2}$/;
		        console.log(reg_date);
				if (!reg.test(reg_date) || Date.now() > Date.parse(reg_date) ) {
		        	
		        	
		        	alert("Please enter the Valid Regstration Start Date");
		        	return false;
		        } 
			}
			// REGISTRATION END DATE
			var reg_end_date= document.forms["myform"]["reg_end_date"].value;
			if(reg_end_date=="")
			{
					 alert("Please enter the Regstration End Date");
					 return false;
			}
			else
			{
				var reg = /^\d{4}-\d{2}-\d{2}$/;
				if (!reg.test(reg_end_date) || Date.parse(reg_date) > Date.parse(reg_end_date)) {
		        	
		        	alert("Please enter the Valid Regstration End Date");
		        	return false;
		        } 
			}
			// EVENT START DATE
			console.log("A");
			var event_start_date= document.forms["myform"]["event_start_date"].value;
			if(event_start_date=="")
			{
					 alert("Please enter the Event Start Date");
					 return false;
			}
			else
			{
				
				var reg = /^\d{4}-\d{2}-\d{2}$/;

				
				if (!reg.test(event_start_date) || Date.parse(reg_end_date) > Date.parse(event_start_date)) {
		        	
		        	alert("Please enter the Valid Event Start Date");
		        	return false;
		        } 
			}
		 
			// EVENT End DATE
			console.log("B");
			
			var event_end_date= document.forms["myform"]["event_end_date"].value;
			if(event_end_date=="")
			{
					 alert("Please enter the Event End Date");
					 return false;
			}
			else
			{
				var reg = /^\d{4}-\d{2}-\d{2}$/;
				if (!reg.test(event_end_date) || Date.parse(event_start_date) > Date.parse(event_end_date)) {

					alert("Please enter the Valid Event End Date");
		        	return false;
		        } 
			}
			console.log("C");
			
			return true;
		}
</script>

    <%@ include file="header.jsp" %>
    <div class="body">
        <s:form name="myform" class="form" onsubmit="return validate()" enctype="multipart/form-data" method="post" action="../UpdateTheEventDetails" modelAttribute="event">
            <div class="Heading">
                    Create Event 
            </div> <br><br><br>
            <div class="form_data">
               	<input type="hidden" value="${event.eventid}" name="eventid">
                Events Club Name <input type="text" value="${sessionScope.user.club_name}" readonly="readonly">
                Event Name <input type="text" placeholder="Event Name" value="${event.event_title}" name="event_title">
                Event Detail<input type="text" placeholder="Event Detail" name="event_desc" value="${event.event_desc}">  <br> 
              <!--    <div style="display: flex;">
	                <Label for="Poster Image" >Poster Image</Label>
	                <input type="file" style="visibility:hidden;" id="Poster Image" name="mpHeroImage"><br>
                </div>-->
                <div style="display: flex;">
	                <Label for="Icon Image"  >Click Here To Add Hero Image</Label>
	                <input type="file" style="visibility:hidden;" id="Icon Image" name="mpHeroImg">
                </div>
            </div>
            <div class="form_data">
                Registration Start Date<input type="date" value="${event.reg_start_date}" name="reg_start_date" >
                Registration End Date<input type="date" value="${event.reg_end_date}"  name="reg_end_date">
           	    Event Start Date <input type="date" value="${event.event_start_date}" name="event_start_date">
                Event End Date <input type="date" value="${event.event_end_date }" name="event_end_date" >    
            	<br> <br>
           		Event Only for Club Members ?<select name="only_member">
            		<option value="${true}">Yes</option>
            		<option value="${false}">No</option>
            	</select>
            </div>
            <div class="submitDiv">
                <input type="submit" value="Add Club">
            </div>
        </s:form>
    </div>
</body>
</html>