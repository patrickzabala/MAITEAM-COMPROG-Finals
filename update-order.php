<?php 
	include "connection.php";
  session_start();
  $category=$_SESSION['category'];

  if(!isset($category)){
    $category=$_GET['category'];
    $_SESSION['category']=$category;
  }


if(isset($_SESSION['cart'])) {
	$total = 0;
	foreach($_SESSION['cart'] as $product_id => $quantity) {
            	 $query = "SELECT * FROM $category WHERE id = ".$product_id;
                $result = mysql_query($query);
                if($result) {
           		  if($row = mysql_fetch_array($result)) {
           		  	$cost = $row['price'] * $quantity;
           		  	$user = $_SESSION["username"];
                 //  $update = "INSERT INTO order (product_name, price, units,total)
                 //      VALUES ('".$product_name."', '".$price."', '".$units."', '".$units."')";
         		      // $result1 = mysql_query($update);
  
         			if($result1) {
                	$newqty = $row['qty'] - $quantity;
                	$updateqty = "UPDATE $category SET qty = '".$newqty."' WHERE id = ".$product_id;
                	$query2 = mysql_query($updateqty);
                	if($query2) {

	            	}
	            }
			}
		}
	}
}
unset($_SESSION['cart']);
header("location:order-page.php");
?>