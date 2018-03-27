<?php 
session_start();
include 'connection.php';

$product_id = $_GET['id'];
$action = $_GET['action'];
$category = $_SESSION['category'];

if($action === 'empty')
	unset($_SESSION['cart']);
$query = "SELECT qty FROM $category WHERE id = ".$product_id;
$result = mysql_query($query);
if($result) {
	if($row = mysql_fetch_array($result)) {
		switch($action) {
			case "add";
			if($_SESSION['cart'][$product_id]+1 <= $row['qty'])
				$_SESSION['cart'][$product_id]++;
			break;
			case "remove";
				$_SESSION['cart'][$product_id]--;
				if($_SESSION['cart'][$product_id] == 0)
				unset($_SESSION['cart'][$product_id]);
			break;
		}
	}
}
// $location = 'cartDraft.php?category='.$category.'&id='.$product_id.'';
header("location: cartDraft.php");
?>