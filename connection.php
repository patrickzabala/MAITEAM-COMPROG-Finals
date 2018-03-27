<?php
$currency ="₱";
	//SUPPRESS WARNINGS
	error_reporting(E_ERROR | E_PARSE);

	//1ST STEP - CONNECT TO MYSQL
	mysql_connect("localhost", "root", "root") or  die(mysql_error());

	//2ND STEP - CONNECT TO DATABASE
	mysql_select_db("comprogFinals") or die(mysql_error());

?>