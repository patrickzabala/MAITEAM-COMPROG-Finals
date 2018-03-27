<?php
	include "connection.php";

  session_start();

  // if(!isset($_SESSION['username'])){
  //   header("location: sign-in.php");
  // }
?>

<html>
<head>
	<title>Homepage</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" type="text/css" href="Css/homepage.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.6/angular.min.js"></script>
  <script src="js/homepage.js"></script>

  <script type="text/javascript" src="assets/app.js"></script>
  <script type="text/javascript" src="assets/products.js"></script>
</head>
<body ng-app="homepage">
  	<div class="welcome">
  		<div class="container">
  			<div class="row">
  				<div class="welcome-text col-md-6">
  					<img src="img/logo.jpg">
  				</div>
  			</div>
  		</div>
  	</div>
  <div ng-controller="appController">
  	<div class="navbar" style="position: fixed;">
  		<div class="container">
  			<div class="row">
  				<div class="navigations col-md-12">
  					<li class="dropdown">
  						<p class="dropdown-txt">CATEGORIES<i class="fa fa-angle-down"></i></p> 
  						<div class="dropdown-content">
  							<p class="categories"><a href="#beve" class="sub-beverages">BEVERAGES</a></p>
  							<p class="categories"><a href="#fns">FOODS AND SNACKS</a></p>
  							<p class="categories"><a href="#hnh">HEALTH, HYGIENE AND BEAUTY CARE</a></p>
  						</div>
  					</li>

  					<li class="nav-item" title="Home"><a href="#">HOME</a></li>
  					<li class="nav-item" title="Blog"><a href="blog.php">BLOG</a></li>
  					<li class="nav-item" title="About us"><a href="about-us.php">ABOUT</a></li>
            <?php
              if(!isset($_SESSION['username'])){
                echo '<li class="nav-item" title="Sign In"><a href="sign-in.php">SIGN IN</a></li>';
                echo '<li class="nav-item" title="Register"><a href="sign-up.php">REGISTER</a></li>';
              }
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
  	<div class="carousel"> 
    		<div id="myCarousel" class="carousel slide" data-ride="carousel">
    			<!-- Indicators -->
  			<ol class="carousel-indicators">
  			   <li data-target="#myCarousel" data-slide-to="0" class=""></li>
  			   <li data-target="#myCarousel" data-slide-to="1"></li>
  			   <li data-target="#myCarousel" data-slide-to="2"></li>
  			</ol>
  			<!-- Wrapper for slides -->
  			<div class="carousel-inner">
  				<div class="item active">
  					<img src="img/san-miguel-3.jpg" title="Tara na sa walang kapantay na San Maguel Pale Pilsen!" alt="" style="width:100%; height: 600px;">
  					<div class="carousel-caption">
  						<h2>ANG WALANG KAPANTAY NA BEER</h2>
              <?php $_SESSION['category'] = 'beer'; ?>
  						<a class="first" href="sub-categories.php?category=beer"><input class="add" type="submit" value="Check Now"/></a>
  				    </div>
  				</div>

  				<div class="item">
  					<img src="img/cola-slogan.jpg" title="Taste the Feeling with Coca-Cola Everyday!" alt="" style="width:100%; height: 600px;">
  					<div class="carousel-caption">
  				        <h2 class="caption-2">Taste the Feeling</h2>
  				       <?php $_SESSION['category'] = 'carbonatedDrinks'; ?>
              <a class="second" href="sub-categories.php?category=carbonatedDrinks"><input class="add" type="submit" value="Check Now"/></a>
  				    </div>
  				</div>
  						    
  				<div class="item">
  					<img src="img/toblerone-slogan.jpg" title="Ang paliparan na tsokolate!" alt="" style="width:100%; height: 600px;">
  					<div class="carousel-caption">
  				        <h2 class="caption-3">Taste the Sweetness while it lasts</h2>
                  <?php $_SESSION['category'] = 'sweetSnacks'; ?>
              <a class="third" href="sub-categories.php?category=sweetSnacks"><input class="add" type="submit" value="Check Now"/></a>
  				    </div>
  				</div>
    			</div>

  			    <!-- Left and right controls -->
  			    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
  			      <span class="glyphicon glyphicon-chevron-left"></span>
  			      <span class="sr-only">Previous</span>
  			    </a>
  			    <a class="right carousel-control" href="#myCarousel" data-slide="next">
  			      <span class="glyphicon glyphicon-chevron-right"></span>
  			      <span class="sr-only">Next</span>
  			 	</a>
    		</div>	
    	</div>
    	<div class="quote">
    		<div class="container">
    			<div class="row">
    				<div class="grid col-md-12">
    					<h4>QUOTE</h4>
    					<div class="grid-inside">
    						<p>"Just remember that everything is about Control."</p>
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
    	<div class="image">
    		<a href="https://www.gatorade.com/"><img src="img/gator-slogan.jpg" title="Gatorade! The number 1 sports energy drink! Taste GOOD and Feel GOOD!" style="width: 100%; height: 60%;"></a>
    	</div>
    	<div class="featured">
    		<div class="container">
    			<div class="row">
    				<div class="grid col-md-12">
    					<h4>FEATURED ITEMS</h4>
    				</div>
            <div class="featuredProducts">
              <?php
                $_SESSION['category']='featured';
               $i=0;
               $product_id = array();
               $product_quantity = array();

                $query = "SELECT * FROM featured";
                // $_SESSION['category'] = 'featured';
                $result = mysql_query($query);
                if($result == FALSE) {
                  die(mysql_error());
                }

              if ($result) {
                while($row = mysql_fetch_array($result)) {
                  echo '<div class="img col-md-3">';
                    echo '<img src="'.$row['product_image'].'" title="'.$row['product_name'].'">';
                      echo '<div class="txt">';
                        echo '<h3>'.$row['product_name'].'</h3>'; 
                        echo '<p>'.$currency.$row['price'].'</p>';
                          if($row['qty'] > 0) {
                          echo '<p><a href="update-cart.php?category=featured&action=add&id='.$row['id'].'"><input class="add" title="Add to Cart" type="submit" value="Add To Cart"/></a></p>';
                  } else {
                    echo 'Out of stock';
                  }
                    echo '</div>';
                  echo '</div>';
                  $i++;
                  }
                }
                $_SESSION['product_id'] = $product_id;
              ?>
            </div>
    			</div>
    		</div>
    	</div>
    	<div class="image">
    		<a href="https://cashkaro.com/stores/natures-basket"><img src="img/adds1.jpg" title="Go to our partner, CashKaro, for exclusive coupons and offers!" style="width: 100%; height: 60%;"></a>
    	</div>
    	<div class="categories-1" id="beve">
    		<div class="container">
    			<div class="row">
    				<div class="beverages col-md-12" >
              <h3>CATEGORIES</h3>
              <div class="title">
                <h4 id="fns">BEVERAGES</h4>
                <div class="sub-beverages col-md-2" ng-repeat="x in beverages1">
                  <a href="sub-categories.php?category=beer">
                  <img src="{{x.img}}" title="Beer">
                  <p>{{x.title}}</p>
                  </a>
                </div>
                <div class="sub-beverages col-md-2" ng-repeat="x in beverages2">
                  <a href="sub-categories.php?category=bottledWater">
                  <img src="{{x.img}}" title="Bottled Water">
                  <p>{{x.title}}</p>
                  </a>
                </div>
                <div class="sub-beverages col-md-2" ng-repeat="x in beverages3">
                  <a href="sub-categories.php?category=carbonatedDrinks">
                  <img src="{{x.img}}" title="Carbonated Drinks">
                  <p>{{x.title}}</p>
                  </a>
                </div>
                <div class="sub-beverages col-md-2" ng-repeat="x in beverages4">
                  <a href="sub-categories.php?category=energyDrinks">
                  <img src="{{x.img}}" title="Energy Drinks">
                  <p>{{x.title}}</p>
                  </a>
                </div>
                <div class="sub-beverages col-md-2" ng-repeat="x in beverages5">
                  <a href="sub-categories.php?category=drinks">
                  <img src="{{x.img}}" title="Drinks">
                  <p>{{x.title}}</p>
                  </a>
                </div>
              </div>

            </div>

            <div class="beverages col-md-12">
              <div class="title">
                <h4 id="hnh">FOODS AND SNACKS</h4>
                  <div class="sub-beverages col-md-2" ng-repeat="x in foods1">
                    <a href="sub-categories.php?category=readyToEat">
                    <img src="{{x.img}}" title="Ready-To-Eat">
                    <p>{{x.title}}</p>
                    </a>
                  </div>
                  <div class="sub-beverages col-md-2" ng-repeat="x in foods2">
                    <a href="sub-categories.php?category=frozenFood">
                    <img src="{{x.img}}" title="Frozen Food">
                    <p>{{x.title}}</p>
                    </a>
                  </div>
                  <div class="sub-beverages col-md-2" ng-repeat="x in foods3">
                    <a href="sub-categories.php?category=candies">
                    <img src="{{x.img}}" title="Candies">
                    <p>{{x.title}}</p>
                    </a>
                  </div>
                  <div class="sub-beverages col-md-2" ng-repeat="x in foods4">
                    <a href="sub-categories.php?category=saltySnacks">
                    <img src="{{x.img}}" title="Salty Snacks">
                    <p>{{x.title}}</p>
                    </a>
                  </div>
                  <div class="sub-beverages col-md-2" ng-repeat="x in foods5">
                    <a href="sub-categories.php?category=sweetSnacks">
                    <img src="{{x.img}}" title="Sweet Snacks">
                    <p>{{x.title}}</p>
                    </a>
                  </div>
              </div>
    			 </div>

           <div class="beverages col-md-12">
              <div class="title">
                <h4>HEALTH AND HYGIENE</h4>
                <div class="sub-beverages col-md-2" ng-repeat="x in health1">
                  <a href="sub-categories.php?category=soapShampoo">
                  <img src="{{x.img}}" title="Soap and Shampoo">
                  <p>{{x.title}}</p>
                  </a>
                </div>
                <div class="sub-beverages col-md-2" ng-repeat="x in health2">
                  <a href="sub-categories.php?category=toothProduct">
                  <img src="{{x.img}}" title="Tooth Products">
                  <p>{{x.title}}</p>
                  </a>
                </div>
                <div class="sub-beverages col-md-2" ng-repeat="x in health3">
                  <a href="sub-categories.php?category=alcohol">
                  <img src="{{x.img}}" title="Alcohol">
                  <p>{{x.title}}</p>
                  </a>
                </div>
                <div class="sub-beverages col-md-2" ng-repeat="x in health4">
                  <a href="sub-categories.php?category=lotion">
                  <img src="{{x.img}}" title="Lotion">
                  <p>{{x.title}}</p>
                  </a>
                </div>
                <div class="sub-beverages col-md-2" ng-repeat="x in health5">
                  <a href="sub-categories.php?category=deodorant">
                  <img src="{{x.img}}" title="Deodorant">
                  <p>{{x.title}}</p>
                  
                  </a>
                </div>
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