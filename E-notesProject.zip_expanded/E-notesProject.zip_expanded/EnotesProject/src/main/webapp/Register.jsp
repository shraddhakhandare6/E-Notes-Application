<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<style>
.back-img{
background: linear-gradient(to top, #99ccff 0%, #ccffff 100%);
width:100%;
height:100vh;
background-repeat:no-repeat;
background-size:cover;
}
</style>
<meta charset="ISO-8859-1">
<title>Register</title>
<%@ include file="AllComponent/AllCss.jsp" %>
</head>
<body>
<%@ include file="AllComponent/Navbar.jsp" %>

<div class="container-fluid back-img">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card-header text-center bg-custom text-white mt-4">
<h1><i class="fa fa-user-plus" aria-hidden="true"></i></h1>
<h3>Registration</h3>

</div>

<% 
 String regMsg=(String) session.getAttribute("reg-success");
if(regMsg!=null){
 %>
<div class="alert alert-success" role="alert">
 <%=regMsg %>
</div>
<% 
session.removeAttribute("reg-success");
} %>

<% 
 String FailedMsg=(String) session.getAttribute("failed-msg");
if(FailedMsg!=null){
 %>
<div class="alert alert-danger" role="alert">
 <%=FailedMsg %>
</div>
<% 
session.removeAttribute("failed-msg");
} %>

<div class="card-body">
<form action="UserServlet" method="post">
<div class="mb-3">
    <label for="exampleInputName1" class="form-label">User Name</label>
    <input type="text" name="fname" class="form-control" id="Name" aria-describedby="emailHelp">
    </div>
   
    
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" name="email" class="form-control" id="Email" aria-describedby="emailHelp">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" name="pass" class="form-control" id="Password">
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>

</div>
</div>
</div>
</body>
</html>