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

.form>.form_data>input {
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
	.body>.img {
		display: none;
	}
}

@media ( min-width : 650px) {
	.body {
		display: flex;
		width: 100%;
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
	.form>.form_data>input {
		padding: 1em 0;
		width: 70%;
		border-radius: 1rem;
		margin: 0.7rem 0;
	}
	/* Form */
	.body>.form {
		width: 40%;
		padding: 0px;
	}
	.body>.img {
		display: flex;
		width: 40%;
		flex-direction: row;
	}
	.body>.form {
		width: 50%;
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
		width: 45%;
	}
	.form>.form_data>input {
		width: 90%;
	}
}
</style>
</head>
<body>
<script type="text/javascript">
function validate() {
		 var name = document.forms["myform"]["name"].value;
		 if(name==""){
		 alert("Please enter the name");
		 return false;
		 }
		 var mobile = document.forms["myform"]["phone"].value;
		 if(mobile=="" || isNaN(mobile) ){
		 alert("Please enter the mobile");
		 return false;
		 }else if(mobile.length!=10){
			 alert("Mobile number not valid");
			 return false;
		 } 
		 else{}
		 var email = document.forms["myform"]["email"].value;
		 if(email==""){
		 alert("Please enter the email");
		 return false;
		 }else{
		 var re = /^(?:[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])$/;
		 var x=re.test(email);
		 if(x){
		 }else{
		 alert("Email id not in correct format");
		 return false;
		 } 
		 } 
		 
		 var passw=  /^[A-Za-z0-9]\w{7,14}$/;
		 var inputtxt = document.forms["myform"]["password"].value;
		 if(inputtxt.match(passw)) 
		 { 
			 return true;
		 }
		 else
		 { 
		 alert('Password should have min 8 characters and max 13 characters')
		 return false;
		 }
		}
</script>

    <%@ include file="header.jsp" %>
    <div class="body">
        <div class="img">
            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Humaaans-sitting-1.svg/380px-Humaaans-sitting-1.svg.png" alt="Sitting Lady">
        </div>
        <c:if test="${updateAdmin!=null}">
        	<c:set value="Update Admin" var="heading"></c:set>
        	<c:set value="updateAdminDetails" var="action"></c:set>
        </c:if>
        <c:if test="${updateAdmin==null}">
        	<c:set value="Add Admin" var="heading"></c:set>
        	<c:set value="addAdminDetails" var="action"></c:set>
         </c:if>   	
        <s:form name="myform" class="form" onsubmit="return validate()"  method="post" action="${action}" modelAttribute="user">
            <div class="Heading">
            	${heading}
            </div>
            <div class="form_data">
            	<input type="hidden" value="${admin.adminid}" name="userid">
                <input type="text" placeholder="Enter Name" name="name" value="${admin.name}">
                <input type="text" placeholder="Enter PhoneNumber" name="phone" value="${admin.phone}" >    
                <input type="email" placeholder="Enter Email Address" name="email" value="${admin.email }">
                <input type="password" placeholder="Enter Password" name="password" value="${admin.password}">    
            </div>
            <div class="submitDiv">
                <input type="submit" value="${heading}">
            </div>
        </s:form>
    </div>
    

</body>
</html>