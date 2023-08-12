<%@page import="ConnUser.UserDetails"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><i class="fa fa-book" aria-hidden="true"></i>
    E-NOTES</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Home.jsp"><i class="fa fa-home" aria-hidden="true"></i>
          Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="addNotes.jsp"><i class="fa fa-plus-circle" aria-hidden="true"></i>
          Add Notes</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="showNotes.jsp"><i class="fa fa-address-book-o" aria-hidden="true"></i>
          Show Notes</a>
        </li>
      </ul>
      <form class="d-flex">
      
      <% 
      UserDetails user=(UserDetails) session.getAttribute("userD");
      if(user !=null){ 
      %>
      <a class="btn btn-outline-light mr-4" href="LoginPage.jsp" type="submit" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa fa-user-circle-o" aria-hidden="true"></i>
        <%=user.getName() %></a>
        <a class="btn btn-outline-light " href="LogoutServlet" type="submit"><i class="fa fa-user-plus" aria-hidden="true"></i>
        Logout</a>
        
        <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header text-center">
        <h5 class="modal-title" id="exampleModalLabel">Profile</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       <div class="container text-center">
       			<i class="fa fa-user fa-3x"></i>
       <h5></h5>
       <table class="table">
       <tbody>
      <tr>
      	<th>User Id</th>
      	<td><%= user.getId()%></td>
      </tr>
        <tr>
      	<th>User Name</th>
      	<td><%= user.getName() %></td>
      </tr>
       <tr>
      	<th>Email</th>
      	<td><%= user.getEmail() %></td>
      </tr>
       </tbody>
       
       
       </table>
       
       </div>
       
       
       
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary mr-4 " data-bs-dismiss="modal">Close</button>
       
      </div>
    </div>
  </div>
</div>
      <%
      }else{
    	  %>
    	  <a class="btn btn-outline-light mr-4" href="LoginPage.jsp" type="submit"><i class="fa fa-user-circle-o" aria-hidden="true"></i>
        Login</a>
        <a class="btn btn-outline-light " href="Register.jsp" type="submit"><i class="fa fa-user-plus" aria-hidden="true"></i>
        Register</a>
        
      <%
      }
      %>
            
      </form>
    </div>
  </div>
 

</nav>