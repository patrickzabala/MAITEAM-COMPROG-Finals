<?php
	include "connection.php";
  session_start();

  $category = $_SESSION['category'];
?>

<!DOCTYPE html>
<html>
<head>
	<title>CART</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" type="text/css" href="css/cartDraft.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.6/angular.min.js"></script>
  <script type="text/javascript" src="assets/angular.min.js"></script>
  <script type="text/javascript" src="js/homepage.js"></script>
  <script type="text/javascript" src="assets/app.js"></script>
	<!-- <script type="text/javascript" src="assets/productCtrl.js"></script> -->
</head>
<body>
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
            <!-- <li class="nav-item"><a href="sign-in.php">SIGN IN</a></li> -->
            <?php
            if(isset($_SESSION['username'])){
            echo '<li class="nav-item" title="Sign Out"><a href="sign-out.php">SIGN OUT</a></li>';
            }
            ?>
            <li class="nav-item icons">
              <a href="#" title="Cart"><i class="fa fa-shopping-cart"></i></a>
            </li>
          </div>
        </div>
      </div>
    </div>



  <div class="holder">
    <div class="container">
      <div class="row">
        <div class="holder2">
      		<?php
      		if(isset($_SESSION['cart'])) {
      			echo '<h1 class="cart">CART</h1>';
      		} else {
      			echo '<h1 class="cart">EMPTY CART</h1>';
      			
      		}
      		echo '<hr />';
      		if(isset($_SESSION['cart'])) {
      			$total = 0;
      			echo '<table>';
                  echo '<tr>';
                  echo '<th>Product</th>';
                  echo '<th>Name & Product Details</th>';
                  echo '<th>Quantity</th>';
                  echo '<th>Price</th>';
                  echo '</tr>';
                  foreach($_SESSION['cart'] as $product_id => $quantity) {
                  	 $query = "SELECT product_name, product_detail, product_image, qty, price FROM $category WHERE id = ".$product_id;
                      $result = mysql_query($query);
                      if($result) {
                 		  while($row = mysql_fetch_array($result)) {
                 		  	$cost = $row['price'] * $quantity;
                 		  	$total = $total + $cost;

                 		  	echo '<tr>';
                 		  	echo '<td><img src="'.$row['product_image'].'"></td>';
                        echo '<td class="info"><b class="name">'.$row['product_name'].'</b><br>'
                                   .$row['product_detail'].'</td>';
                        echo '<td>'.$quantity.'&nbsp;<a class="button "href="update-cart.php?action=add&id='.$product_id.'">+</a>&nbsp;<a class="button alert" href="update-cart.php?action=remove&id='.$product_id.'">-</a></td>';

                 		  	// echo '<td>'.$row['product_name'].'</td>';
                 		  	// echo '<td>'.$row['product_detail'].'</td>';
                 		  	//                 echo '<td>'.$quantity.'&nbsp;<a class="button " style="padding:5px;" href="update-cart.php?action=add&id='.$product_id.'">+</a>&nbsp;<a class="button alert" style="padding:5px;" href="update-cart.php?action=remove&id='.$product_id.'">-</a></td>';

          				echo '<td>'.$cost.'</td>';
          				echo '</tr>';
                      }
                  }

      		}

      		 echo '<tr>';
      		 echo '<td><h3>Total Price: P'.$total.'<h3></td>';
      		 echo '</tr>';
      		 echo '</td>';
               echo '</tr>';
               echo '<tr>';
               echo '<td><a href="update-cart.php?action=empty" class="button">Empty Cart</a></td>';
               if(isset($_SESSION['username'])) {
               	echo '<a href="update-order.php"><button>Order</button></a>';
               }
               else {
               echo '<a href="sign-in.php"><button>Login</button></a>';
               }
               echo '</td>';
              echo '</tr>';
               echo '</table>';
      		}
      		else {
      		echo '<a href="sub-categories.php?category='.$_SESSION['category'].'"><button>Go back</button></a>';

      		}

      		?>
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