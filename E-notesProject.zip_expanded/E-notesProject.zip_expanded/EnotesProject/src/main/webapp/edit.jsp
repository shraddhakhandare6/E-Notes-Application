<%@page import="ConnUser.Post"%>
<%@page import="ConDb.DBConnect"%>
<%@page import="ConnDAO.PostDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="AllComponent/AllCss.jsp" %>

</head>
<body>
<%
Integer noteid=Integer.parseInt(request.getParameter("note_id"));
PostDAO post=new PostDAO(DBConnect.getConn());
Post p=post.getDataById(noteid);

%>

<%@ include file="AllComponent/Navbar.jsp" %>

<div class="container-fluid">
<h1 class="text-center mt-4" >Edit Notes Here</h1>

<div class="row">
<div class="col-md-12">
<div class="container">
<form action="NoteEditServlet" method="post">
<input type="hidden" name="noteid" value="<%=noteid %>">
<div class="form-group">
    <label for="exampleInputName1" class="form-label">Enter Title</label>
    <input type="text" name="title" class="form-control" required id="Name" value="<%=p.getTitle() %>">
    </div>
    
    <div class="form-group">
   
   
    <label for="exampleInputName1" class="form-label">Enter Content</label>
    <textarea rows="10" cols="" name="content" required class="form-control" >
    <%=p.getContent() %></textarea>
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