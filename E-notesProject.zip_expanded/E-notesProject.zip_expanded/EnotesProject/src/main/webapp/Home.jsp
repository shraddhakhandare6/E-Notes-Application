<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.back-img{
background-image:url("Image/Image.jpeg");
width:100%;
height:100vh;
background-repeat:no-repeat;
background-size:cover;
}
#d1{
padding-top:10%;
}
h1{
font-size:50px;}

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="AllComponent/AllCss.jsp" %>
</head>
<body>
<%@ include file="AllComponent/Navbar.jsp" %>
<div class="container-fluid back-img">
<div class="text-center"  id="d1">
<h1><i class="fa fa-book" aria-hidden="true"></i>E Notes - Save Your Notes </h1>
<a href="LoginPage.jsp" class="btn btn-light"><i class="fa fa-user-circle-o" aria-hidden="true"></i>Login</a>
<a href="Register.jsp" class="btn btn-light"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a>
</div>
</div>
</body>
</html>