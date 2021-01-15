<?php
include("db_connect.php");

$fname=$_POST['fname'];
$address=$_POST['address'];
$email=$_POST['email'];



	$query="insert into checkout (ID, name, address, email) values(NULL, '$fname', '$address', '$email' );";
    $result=mysqli_query($conn,$query);

    header("Location:".$_SERVER['HTTP_REFERER']);



?>
