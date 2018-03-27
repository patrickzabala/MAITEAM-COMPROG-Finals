<?php
  include "connection.php";
  session_start();

  $category = $_GET['category'];
  // $_SESSION['category'] = $category;

  if(!isset($category)){
    header("location: homepage.php");
  }
?>

<!DOCTYPE html>
<html>
<head>
	<title>Sub Categories</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" type="text/css" href="Css/sub-categories.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.6/angular.min.js"></script>
  <script src="js/sub-categories.js"></script>
</head>
<body ng-app="subcategories">
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
                echo '<li class="nav-item" title="Sign In"><a href="sign-in.php">SIGN IN</a></li>';
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

    <div class="products" ng-controller="appController">
      <div class="container">
        <div class="row no-gutters">
          <div class ="sub-products col-md-12">
            <div class="holder col-md-12">
               <?php 
                //fetch product list
               $i=0;
               $product_id = array();
               $product_quantity = array();

                $query = "SELECT * FROM $category";
                $result = mysql_query($query);
                if($result == FALSE) {
                  die(mysql_error());
                }

              if ($result) {
                while($row = mysql_fetch_array($result)) {
                
                  echo '<div class="img col-md-12">';
                    echo '<img col-md-4 src="'.$row['product_image'].'">';
                      echo '<div class="txt col-md-8">';
                        echo '<p>'.$row['id'].'</p>'; 
                        echo '<h3 class="name">'.$row['product_name'].'</h3>'; 
                        echo '<p class="detail">'.$row['product_detail'].'</p>';
                        echo '<p class="quantity">Quantity: '.$row['qty'].'</p>';
                        echo '<p class="price">'.$currency.$row['price'].'</p>';
                          if($row['qty'] > 0) {
                            echo '<p><a href="update-cart.php?category='.$category.'&action=add&id='.$row['id'].'"><input class="add" type="submit" value="Add To Cart"/></a></p>';
                  } else {
                    echo 'Out of stock';
                  }
                    echo '</div>';
                  echo '</div>';
                  $i++;
                  }
                }
                $_SESSION['product_id'] = $product_id;
                $_SESSION['category'] = $category;
              ?>
              </div>              
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