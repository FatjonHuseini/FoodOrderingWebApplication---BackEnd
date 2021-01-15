
<?php

include("db_connect.php");


$name=$_POST['name'];
$nr=$_POST['nr'];
$date=$_POST['date'];
$time=$_POST['time'];

//i need cc info for the bank, but not implemented now


$query="insert into reservations (Rid, name, nr, date, time) values (null, '$name' , '$nr', '$date', '$time' );";

$result=mysqli_query($conn,$query);


header("Location:reservation.php");

?>