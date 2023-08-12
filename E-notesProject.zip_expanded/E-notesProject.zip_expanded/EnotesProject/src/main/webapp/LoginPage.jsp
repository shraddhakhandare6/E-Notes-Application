<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<%@ include file="AllComponent/AllCss.jsp" %>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="AllComponent/Navbar.jsp" %>
<div class="container-fluid back-img">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card-header text-center bg-custom text-white mt-4">
<h1><i class="fa fa-user-circle-o" aria-hidden="true"></i></h1>
<h3>Login</h3>
</div>
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

<%
String withoutLogin =(String)session.getAttribute("Login-error");
if(withoutLogin !=null){
%>
<div class="alert alert-danger" role="alert">
 <%=withoutLogin %>
</div>
<% 
session.removeAttribute("Login-error");
}%>


<% 
String lgMsg=(String)session.getAttribute("logoutMsg");
if(lgMsg!=null)
{%>
<div class="alert alert-success" role="alert">
 <%=lgMsg %>
</div>
<% 
session.removeAttribute("logoutMsg");
}
%>


<div class="card-body">
<b><form action="LoginServlet" method="post">

  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" name="email" id="Email" aria-describedby="emailHelp">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1"  class="form-label">Password</label>
    <input type="password" name="pass" class="form-control" id="Password">
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</b>
</div>
</div>
</div>

</body>
</html>