<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register here</title>
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
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-header primary-background text-white text-center">
<br>
<span class="fa fa-3x fa-user-circle"></span>
<p> Register Here</p>
</div>
<div class="card-body">
<form id="reg-form" action="RegisterServlet" method="post">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="user_name">User name</label>
    <input type="text" name="user_name" class="form-control" id="user_name" aria-describedby="userHelp" placeholder="Enter name">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" name="user_email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" name="user_password" class="form-control" id="exampleInputPassword1" placeholder="Enter password">
  </div>
  <div class="mb-3">
    <label for="gender" class="form-label">Select gender</label>
    <input type="radio" id="gender" name="gender" value="Male">Male
    <input type="radio" id="gender" name="gender" value="Female">Female
  </div>
  <div class="mb-3">
    <textarea name="about" class="form-control" cols="30" rows="5" placeholder="Enter something about yourself"></textarea>
  </div>
  <div class="mb-3 form-check">
    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Agree terms and conditions</label>
  </div>
  <br>
  <div class="container text-center" id="loader" style="display:none;">
  <span class="fa fa-refresh fa-spin fa-3x"></span>
  <h4>Please wait...</h4>
  </div>
  <button id="submit-btn" type="submit" class="btn btn-primary text-center">Submit</button>
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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
  $(document).ready(function(){
	  console.log("loaded...")
	  $('#reg-form').on('submit',function(event){
		  event.preventDefault();
		  let form=new FormData(this);
		  $('#submit-btn').hide();
		  $('#loader').show();
		  $.ajax({
			 url:"RegisterServlet",
			 type:'POST',
			 data: form,
			 success:function (data,textStatus,jqXHR){
				 console.log(data)
				 $("#submit-btn").show();
				  $("#loader").hide();
				  if(data.trim() === 'done')
				  {
				    swal("Successfully Registered... We are redirecting you to login page")
				     .then((value) => {
				        window.location = "login.jsp"
				     });
				  }
				  else {
					  swal(data);
				  }
			 },
			 error: function(jqXHR,textStatus,errorThrown){
				 $("#submit-btn").show();
				  $("#loader").hide();
				  swal("Something went wrong... Try Again");
			 },
			 processData:false,
			 contentType:false
		  });
	  });
  });
</script>

</body>
</html>