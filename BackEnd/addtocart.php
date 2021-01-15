<?php


include("db_connect.php");


$Pid = $_POST['Pid'];
$quantity = $_POST['quantity'];
try {

    $query = "insert into orders (Oid, Pid, quantity) values(NULL,'$Pid','$quantity');";
    mysqli_query($conn, $query);
    header("Location:" . $_SERVER['HTTP_REFERER']);
} catch (Exception $e) {
    echo $e;
}
