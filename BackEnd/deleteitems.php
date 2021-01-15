<?php

include("db_connect.php");

$Oid=$_GET['Oid'];

$query="delete from orders where Oid=$Oid";
mysqli_query($conn,$query);

header("Location:cart.php");

?>