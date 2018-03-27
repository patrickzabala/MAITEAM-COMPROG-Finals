<?php
	include "connection.php";

	session_start();
  if(isset($_SESSION['username'])){
        header("location: homepage.php");
  }

	if(isset($_POST['username'])){
		$username = $_POST['username'];
		$password = $_POST['password'];

		$query = "SELECT * FROM users WHERE username = '".$username."' AND password = '".$password."'";

		$result = mysql_query($query) or die(mysql_error());
		$row = mysql_fetch_array($result);

		if($row ["username"] == $username){
			$_SESSION['username'] = $row["username"];
      header("location: homepage.php");
			// $message = "SIGN IN SUCCESS:Welcome,".$_SESSION['username'];
		} 
  //   else {
		// 	$message = "SIGN IN FAILED:INVALID USERNAME/PASSWORD";
		// }
	}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Sign In</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" type="text/css" href="css/sign-in.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.6/angular.min.js"></script>
</head>
<body ng-app="">
	<div class="welcome">
  		<div class="container">
  			<div class="row">
  				<div class="welcome-text col-md-6">
  					<img src="img/logo.jpg">
  				</div>
  			</div>
  		</div>
  	</div>
  	<div class="navbar" style="position: fixed;">
  		<div class="container">
  			<div class="row">
  				<div class="navigations col-md-12">
  					<li class="dropdown">
  						<p class="dropdown-txt">CATEGORIES <i class="fa fa-angle-down"></i></p> 
  						<div class="dropdown-content">
  							<p class="categories"><a href="homepage.php#beve" class="sub-beverages">BEVERAGES</a></p>
                <p class="categories"><a href="homepage.php#fns">FOODS AND SNACKS</a></p>
                <p class="categories"><a href="homepage.php#hnh">HEALTH, HYGIENE AND BEAUTY CARE</a></p>
  						</div>
  					</li>

  					<li class="nav-item" title="Home"><a href="homepage.php">HOME</a></li>
            <li class="nav-item" title="Blog"><a href="blog.php">BLOG</a></li>
            <li class="nav-item" title="About Us"><a href="about-us.php">ABOUT</a></li>
            <?php
            if(!isset($_SESSION['username'])){
                echo '<li class="nav-item" title="Sign In"><a href="#">SIGN IN</a></li>';
                echo '<li class="nav-item" title="Register"><a href="sign-up.php">REGISTER</a></li>';
              }
            ?>
            <?php
            if(isset($_SESSION['username'])){
            echo '<li class="nav-item" title="Sign Out"><a href="sign-out.php">SIGN OUT</a></li>';
            }
            ?>
            <li class="nav-item icons">
              <a href="cartDraft.php" title="Cart"><i class="fa fa-shopping-cart"></i></a>
            </li>
  				</div>
  			</div>
  		</div>
  	</div>
  	<div class="login">
  		<div class="container">
  			<div class="row">
        		<div class="txt col-md-12">
    				<h2>Sign In</h2>
    					<form action="sign-in.php" method="POST">
            				<label class="user-login" for="username">
					            <b>Username</b>
					            <input type="text" name="username" placeholder="Enter Username...">
					        </label>
					        <br>
					        <label class="pass-login" for="password">
					            <b>Password</b>
					            <input type="password" name="password" placeholder="Enter Password...">
					        </label>
            				<br>
		            		<div class="button-login">
			 		           	<button type="button" class="signup-button"><a href="sign-up.php">SIGN UP</a></button>
			            		<input type="submit" name="login-button" placeholder="LOGIN"></a></input>
            				</div>
            			</form>
            	</div>
  			</div>
  		</div>
  	</div>

  	<div class="footer">
      <div class="container">
        <div class="row">
          	<div class="menu col-md-4">
            <ul class="first">
              <p>MAITEAM</p>
              <li class="nav-item1 "><a href="https://www.facebook.com/xCarry">CABUSO, JEHM M.</a></li>
              <li class="nav-item1"><a href="https://www.facebook.com/anthony.labso">LABSO, JOHN ANTHONY P.</a></li>
              <li class="nav-item1"><a href="https://www.facebook.com/jeaaanml">LUSUNG, JEAN MARIELLE M.</a></li>
              <li class="nav-item1"><a href="https://www.facebook.com/saoyakitatekyojin">SAMSON, JASPER IRA S.</a></li>
              <li class="nav-item1"><a href="https://www.facebook.com/patrick.zabala13">ZABALA, PATRICK G.</a></li>
            </ul>
          	</div>
          	<div class="menu col-md-4">
            <ul class="first">
              <p>ABOUT US</p>
              <li class="nav-item1 "><h4>"We created this site so as to showcase what we learned in Computer Programming 2."</h4></li>
              <li class="nav-item1"><h5>Feel free to explore the site</h5></li>
              <li class="nav-item1"><h5>We hope you enjoy, thank you!</h5></li>
            </ul>
          	</div>
          	<div class="menu col-md-4">
            <ul class="mother">
            	<p>FOLLOW US</p>
              	<li class="nav-item2"><a href="#"><img src="img/facebook-icon.jpg"></i></a></li>
              	<li class="nav-item2"><a href="#"><img src="img/instagram-icon.jpg"></i></a></li>
              	<li class="nav-item2"><a href="#"><img src="img/twitter-icon.jpg"></i></a></li>
            </ul>
            <ul class="mother">
              	<li class="nav-item2"><a href="#"><img src="img/youtube-icon.jpg"></i></a></li>
              	<li class="nav-item2"><a href="#"><img src="img/gmail-icon.jpg" style="background-color: #e84f4b;
    border-radius: 20px;"></i></a></li>
              	<li class="nav-item2"><a href="#"><img src="img/googleplus-icon.jpg"></i></a></li>
            </ul>
        	</div>
        </div>
      </div>
    </div>
</body>
</html>