<?php

header("Content-Type: application/json");
header('Access-Control-Allow-Origin: *');
header ("Access-Control-Expose-Headers: Content-Length, X-JSON");
header ("Access-Control-Allow-Methods: GET, POST, PATCH, PUT, DELETE, OPTIONS");
header ("Access-Control-Allow-Headers: Content-Type, Authorization, Accept, Accept-Language, X-Authorization");
header('Access-Control-Max-Age: 86400');


$conn = new mysqli("localhost","root","","freedownloads247");

$id = $_GET['id'];

$sql="SELECT * FROM app WHERE id = $id ";

$result = mysqli_query($conn,$sql) or die("Connection Faild");

$output = mysqli_fetch_all($result,MYSQLI_ASSOC);

echo json_encode($output);

?>