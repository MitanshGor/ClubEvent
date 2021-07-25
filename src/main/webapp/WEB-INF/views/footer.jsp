<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
/* FOOTER */
.footer
{
    width: 100%;
    color: white;
    background: radial-gradient(81.8% 390.3% at 24% 50%, #7700ff 0%, hsl(246, 92%, 51%) 100%);
}
.row_footer
{
width: 90%;
    display: flex;
    margin: auto;
    justify-content: center;
    align-items: center;
}
.row_footer >*
{
    margin: 2rem;
}
.row_footer >:hover{
    opacity: 0.8;
}
</style>
</head>
<body>
 <footer class="footer">
        <div class="row_footer">
            <i class="fa fa-mobile-phone fa-2x"></i>
            <i class="fa fa-instagram  fa-2x"></i>
            <i class="fa fa-facebook-f  fa-2x"></i>
            <i class="fa fa-envelope  fa-2x"></i>
        </div>
    </footer>

</body>
</html>