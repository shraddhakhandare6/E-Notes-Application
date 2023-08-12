<%@page import="ConnUser.Post"%>
<%@page import="java.util.List"%>
<%@page import="ConDb.DBConnect"%>
<%@page import="ConnDAO.PostDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <% 
    UserDetails user3=(UserDetails) session.getAttribute("userD");
    if(user3==null){
    	response.sendRedirect("LoginPage.jsp");
    	session.setAttribute("Login-error","Please Login...");
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Notes</title>
<%@ include file="AllComponent/AllCss.jsp" %>

</head>
<body>
<%@ include file="AllComponent/Navbar.jsp" %>

<% 
String updateMsg=(String)session.getAttribute("updateMsg");
if(updateMsg!=null){
	%>
	
	<div class="alert alert-success" role="alert">
 <%=updateMsg %>
</div>
	<%
	session.removeAttribute("updateMsg");
}
%>

<% 
String deleteMsg=(String)session.getAttribute("DeleteMsg");
if(deleteMsg!=null){
	%>
	
	<div class="alert alert-danger" role="alert">
 <%=deleteMsg %>
</div>
	<%
	session.removeAttribute("deleteMsg");
}
%>
<div class="container">
	<h2 class="text-center">All Notes:</h2>
	<div class="row">
		<div class="col-md-12">
		<%
		if(user3!=null){
			PostDAO ob=new PostDAO(DBConnect.getConn());
			
			List<Post> post=ob.getData(user3.getId());
			for(Post po : post){
				%>
				<div class="card mt-3">
				<img alt="" src="Image/notesimg.jpeg" class="card-img-top mt-2 mx-auto"
				 style="max-width:100px;">
				 
				 <div class="card-body p-4">
				 	<h5 class="card-title"><%=po.getTitle() %></h5>
				 	<p><%=po.getContent() %></p>
				 	<p>
				 		<b class="text-success">Published By:<%=user3.getName() %></b><br>
				 		<b class="text-primary"></b>
				 	</p>
				 	<p>
				 		<b class="text-success">Published Date:<%=po.getPdate() %></b><br>
				 		<b class="text-primary"></b>
				 	</p>
				 	<div class="container text-center mt-2">
				 	<a href="deleteServlet?note_id=<%=po.getId() %>" class="btn btn-danger">Delete</a>
				 	<a href="edit.jsp?note_id=<%=po.getId() %>" class="btn btn-primary">Edit</a>
				 	</div>
				 </div>
				
			</div>
				<%
			}
		}
		%>
		
		
			
		</div>
	</div>
</div>

</body>
</html>