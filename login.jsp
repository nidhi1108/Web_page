<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.blog.entities.Message" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
<style>
 .banner-background{
   clip-path: polygon(50% 0%, 100% 0, 100% 35%, 100% 92%, 78% 100%, 49% 95%, 19% 100%, 0 93%, 0% 35%, 0 0);
 }
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%@include file="navbar.jsp" %>
<main class="d-flex align-items-center primary-background banner-background" style="padding-bottom:50px;">
<div class="container">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-header primary-background text-white text-center">
<br>
<span class="fa fa-user-plus fa-3x"></span>
<p> Login Here</p>
</div>
<%
Message m=(Message)session.getAttribute("msg");
if(m!=null){
%>
<div class="alert <%= m.getCssClass() %>" role="alert">
  <%= m.getContent() %>
</div>	
<%
session.removeAttribute("msg");
}
%>
<div class="card-body">
<form action="LogininServlet" method="post">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input name="email" required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input name="password" required type="password" class="form-control" id="exampleInputPassword1">
  </div>
  <div class="container text-center">
  <button type="submit" class="btn btn-primary ">Submit</button>
  </div>
</form>
</div>
</div>
</div>
</div>
</div>
</main>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="js/script.js" type="text/javascript"></script>
</body>
</html>