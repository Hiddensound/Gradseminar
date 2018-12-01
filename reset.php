<?php
session_start();
include_once 'dbconnect.php';

if(isset($_POST['btn-signup'])) {
$uppass = strip_tags($_POST['password']);
$uppass = $DBcon->real_escape_string($uppass);
$usname = strip_tags($_POST['username']);	
$usname = $DBcon->real_escape_string($usname);
$sql = "UPDATE tbl_users SET password='$uppass' WHERE username='$usname'";

if ($DBcon->query($sql) == TRUE) {
$msg = "<div class='alert alert-success'>
						<span class='glyphicon glyphicon-info-sign'></span> &nbsp; successfully registered !
					</div>";
		}else {
			$msg = "<div class='alert alert-danger'>
						<span class='glyphicon glyphicon-info-sign'></span> &nbsp; error while registering !
					</div>";
		}
	$DBcon->close();
}
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen"> 
<link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" media="screen"> 

<link rel="stylesheet" href="style.css" type="text/css" />
</head>

<div class="container" style="margin-top:150px;text-align:center;font-family:Verdana, Geneva, sans-serif;font-size:35px;">
	<a href="#">You can Reset your password Here</a><br /><br />
</div>
<div class="signin-form">
     
        
       <form class="form-signin" method="post" id="register-form">
      
        <h2 class="form-signin-heading">Reset</h2><hr />
        
        <?php
		if (isset($msg)) {
			echo $msg;
		}
		?>
         
   
<div class="form-group">
        <input type="name" class="form-control" placeholder="Your username" name="username" required/>
        </div>
<div class="form-group">
        <input type="password" class="form-control" placeholder="Your New password" name="password" required/>
        </div>
<div class="form-group">
            <button type="submit" class="btn btn-default" name="btn-signup">
<span class="glyphicon glyphicon-log-in"></span> &nbsp; Reset
			</button> 
            <a href="index.php" class="btn btn-default" style="float:right;">Log In</a>

</div>

      </form>

    </div>


</body>
</html>
