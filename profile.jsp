<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page errorPage="error.jsp" %>
<%@page import="com.blog.entities.user" %>
<%
user u=(user)session.getAttribute("currentUser");
if(u==null){
	response.sendRedirect("login.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile page</title>
<style>
 .banner-background{
   clip-path: polygon(50% 0%, 100% 0, 100% 35%, 100% 92%, 78% 100%, 49% 95%, 19% 100%, 0 93%, 0% 35%, 0 0);
 }
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
  <!-- navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark primary-background">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><span class="fa fa-asterisk"></span>Techblog</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="https://www.w3schools.com/"><span class="fa fa-bell-o"></span>Learn code</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" >
            <span class="fa fa-caret-square-o-down"></span>Categories
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#" >Programming Language</a></li>
            <li><a class="dropdown-item" href="#" >Web Development</a></li>
            <li><a class="dropdown-item" href="#" >DSA</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" ><span class="fa fa-id-badge"></span>Contact</a>
        </li>
      </ul>
      <ul class="navbar-nav mr-right">
        <li class="nav-item">
          <a class="nav-link" href="#!" data-bs-toggle="modal" data-bs-target="#profile-Modal"><span class="fa fa-user-circle"></span><%= u.getName() %></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="LogoutServlet"><span class="fa fa-user"></span>Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<!-- end of navbar -->
<!-- Modal -->

<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="profile-Modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header primary-background text-white text-center">
        <h1 class="modal-title fs-5" id="exampleModalLabel">TechBlog</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="container text-center">
         <img src="img/<%= u.getProfile() %>" class="img-fluid" style="border-radius:50%; max-width:150px;">
         <br>
         <h5 class="modal-title fs-5" id="exampleModalLabel"><%= u.getName() %></h5>
         <!-- Details -->
         <table class="table">
 
  <tbody>
    <tr>
      <th scope="row">Email</th>
      <td><%= u.getEmail() %></td>
    </tr>
    <tr>
      <th scope="row">Gender</th>
      <td><%= u.getGender() %></td>
    </tr>
    <tr>
      <th scope="row">Register Date</th>
      <td><%= u.getDatetime().toLocaleString() %></td>
    </tr>
  </tbody>
</table>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
<center style="padding-top:100px;">
<table class="table table-striped" style="width:30%;">
  <tbody>
    <tr>
      <th scope="row">Name</th>
      <td><%= u.getName() %></td>
    </tr>
    <tr>
      <th scope="row">Gender</th>
      <td><%= u.getGender() %></td>
    </tr>
    <tr>
      <th scope="row">Email</th>
      <td><%= u.getEmail() %></td>
    </tr>
  </tbody>
</table>
</center>

<!-- end of modal -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="js/script.js" type="text/javascript"></script>
</body>

</html>