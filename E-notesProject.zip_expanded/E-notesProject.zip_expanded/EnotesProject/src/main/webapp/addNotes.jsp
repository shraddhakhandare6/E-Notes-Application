<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <% 
    UserDetails user1=(UserDetails) session.getAttribute("userD");
    if(user1==null){
    	response.sendRedirect("LoginPage.jsp");
    	session.setAttribute("Login-error","Please Login...");
    }
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="AllComponent/AllCss.jsp" %>

</head>
<body>
<%@ include file="AllComponent/Navbar.jsp" %>

<div class="container-fluid">
<h1 class="text-center mt-4" >Add Notes Here</h1>

<div class="row">
<div class="col-md-12">
<div class="container">
<form action="AddNotesServlet" method="post">
<div class="form-group">
    <label for="exampleInputName1" class="form-label">Enter Title</label>
    <input type="text" name="title" class="form-control" required id="Name" aria-describedby="emailHelp">
    </div>
    
    <div class="form-group">
    <% 
    UserDetails us=(UserDetails)session.getAttribute("userD");
    		if(us!= null){
    %>
     <input type="hidden" value="<%=us.getId() %>" name="uid">
    <%
    }
    %>
   
    <label for="exampleInputName1" class="form-label">Enter Content</label>
    <textarea rows="10" cols="" name="content" required class="form-control" ></textarea>
    </div>
   <div class="container text-center mt-3">
   <button type="submit" class="btn btn-primary ">Add Notes</button>
</div>
</form>
</div>
</div>
</div>
</div>
</body>
</html>