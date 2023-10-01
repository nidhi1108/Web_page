<%@page import="com.blog.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Page</title>
<style>
 .banner-background{
   clip-path: polygon(50% 0%, 100% 0, 100% 35%, 100% 70%, 80% 90%, 50% 76%, 20% 90%, 0 79%, 0% 35%, 0 0);
 }
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container-fluid p-0 m-0">
  <div class="jumbotron primary-background text-white">
     <div class=" container">
        <h3 class="display-3">Welcome to Technical blog</h3>
        <p>
        A programming language is a system of notation for writing computer programs. Most programming languages are text-based formal languages, but they may also be graphical. They are a kind of computer language.
        </p>
        <button class="btn btn-outline-light btn-large"><span class="fa fa-external-link"></span>Start! It's free</button> 
        <a href="login.jsp" class="btn btn-outline-light btn-large"><span class="fa fa-user fa-spin"></span>Login</a> 
     </div>
  </div>
</div>
<br>
<div class="container">
  <div class="row">
    <div class="col-md-4">
       <div class="card">
         <div class="card-body">
            <h5 class="card-title">Java programming</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn primary-background text-white">Read more</a>
         </div>
      </div>
    </div>
    <div class="col-md-4">
       <div class="card">
         <div class="card-body">
            <h5 class="card-title">Python programming</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn primary-background text-white">Read more</a>
         </div>
      </div>
    </div>
    <div class="col-md-4">
       <div class="card">
         <div class="card-body">
            <h5 class="card-title">C++ programming</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn primary-background text-white">Read more</a>
         </div>
      </div>
    </div>
   </div>
   <div class="row">
    <div class="col-md-4">
       <div class="card">
         <div class="card-body">
            <h5 class="card-title">Java programming</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn primary-background text-white">Read more</a>
         </div>
      </div>
    </div>
    <div class="col-md-4">
       <div class="card">
         <div class="card-body">
            <h5 class="card-title">Python programming</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn primary-background text-white">Read more</a>
         </div>
      </div>
    </div>
    <div class="col-md-4">
       <div class="card">
         <div class="card-body">
            <h5 class="card-title">C++ programming</h5>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="#" class="btn primary-background text-white">Read more</a>
         </div>
      </div>
    </div>
   </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="js/script.js" type="text/javascript"></script>
</body>
</html>