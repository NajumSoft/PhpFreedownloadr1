<?php

header("Content-Type: application/json");
header('Access-Control-Allow-Origin:http://localhost:4200');
header ("Access-Control-Expose-Headers: Content-Length, X-JSON");
header ("Access-Control-Allow-Methods: GET, POST, PATCH, PUT, DELETE, OPTIONS");
header ("Access-Control-Allow-Headers: Content-Type, Authorization, Accept, Accept-Language, X-Authorization");
header('Access-Control-Max-Age: 86400');

$path = 'C:/Users/Saif i7/Desktop/Web/Uploadedapps/';
$_POST['appName'];
$fileName =  $_FILES['file']['name'];
$appFile = $_FILES['file']['tmp_name'];
$result = move_uploaded_file($appFile, $path.$fileName);
$insertQuery = "INSERT INTO `app` (`id`, `appName`, `OwnerLink`, `thumbnailUrl`,`appSize`, `descriptions`, `version`, `categoryId`, `downloadPath`) VALUES (NULL, '$fileName', '', '', '', '', '', '', '$path$fileName')";
$conn = new mysqli("localhost","root","","freedownloads247");
$result = mysqli_query($conn,$insertQuery) or die("Connection Faild");
echo $result;
?>