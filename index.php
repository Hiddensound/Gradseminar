<?php
session_start();
require_once 'dbconnect.php';

if (isset($_SESSION['userSession'])!="") {
	header("Location: home.php");
	exit;
}

if (isset($_POST['btn-login'])) {
	
	$email = strip_tags($_POST['email']);
	$location = strip_tags($_POST['location']);
	
	$email = $DBcon->real_escape_string($email);
	$location = $DBcon->real_escape_string($location);
	
	$query = $DBcon->query("SELECT user_id, email, location FROM tbl_users WHERE email='$email'");
	$row=$query->fetch_array();
	
	$count = $query->num_rows; // if email/location are correct returns must be 1 row
	
	if (($location == $row['location']) && $count==1) 
    {
		$_SESSION['userSession'] = $row['user_id'];
		header("Location: home.php");
	} else {
	$msg = "<div class='alert alert-danger'>
					<span class='glyphicon glyphicon-info-sign'></span> &nbsp; Invalid Username or Password !
				</div>";
	}
	$DBcon->close();
}
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login & Registration System</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" media="screen"> 
<link rel="stylesheet" href="style.css" type="text/css" />
</head>
<style>
body {
        background-image: url("demo.jpg");
        background-repeat: repeat;
} 
 
</style>


<div class="signin-form">

	<div class="container">
     
        
       <form class="form-signin" method="post" id="login-form">
      
        <h2 class="form-signin-heading">Authentication</h2><hr />
        
        <?php
		if(isset($msg)){
			echo $msg;
		}
		?>
        
        <div class="form-group">
        <input type="email" class="form-control" placeholder="Email address" name="email" required />
        <span id="check-e"></span>
        </div>
<button onclick="getLocation()">Get your current location</button>

<p id="demo"></p>

<p> Paste the coordinates in location field </p>

<script>
var x = document.getElementById("demo");

function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else { 
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}

function showPosition(position) {
    x.innerHTML = "Latitude: " + position.coords.latitude + 
    "<br>Longitude: " + position.coords.longitude;
}

</script>


               <div class="form-group">
        <input type="location" class="form-control" placeholder="location" name="location" required />
        </div>
       
     	<hr />
        
        <div class="form-group">
            <button type="submit" class="btn btn-default" name="btn-login" id="btn-login">
    		<span class="glyphicon glyphicon-log-in"></span> &nbsp; Sign In
			</button> 
            
            <a href="register.php" class="btn btn-default" style="float:right;">Register Here</a>
<br>
<br>
<br>
<br>            
<a href="reset.php" class="btn btn-default" style="float:left;">Reset Password</a>
           
        </div>  
      </form>

    </div>
    
</div>

</body>
</html>