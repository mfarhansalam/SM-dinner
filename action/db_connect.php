<?php 

// $localhost = "127.0.0.1";
// $username = "root";
// $password = "";
// $dbname = "silentmode";

$localhost = "us-cdbr-east-06.cleardb.net";
$username = "bcde350a6ef856";
$password = "4a76eeb6";
$dbname = "heroku_f53b105b2b41460";



// create connection
$connect = new mysqli($localhost, $username, $password, $dbname);

// check connection
if($connect->connect_error)
	{
	die("connection failed : " . $connect->connect_error);
	} 
	else 
	{
	//  echo "Successfully Connected";
	}

?>
