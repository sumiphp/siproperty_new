<?php 
$host="localhost";
$user="root";
$pass="";
$db="siproperty";
$con=mysqli_connect($host,$user,$pass,$db);
mysqli_select_db($con,$db) or die('cannot onnect');
$redirectpath='http://localhost/siproperty11/';
?>