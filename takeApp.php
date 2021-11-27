<?php

header("Content-Type: application/json");
header('Access-Control-Allow-Origin:http://localhost:4200');
header ("Access-Control-Expose-Headers: Content-Length, X-JSON");
header ("Access-Control-Allow-Methods: GET, POST, PATCH, PUT, DELETE, OPTIONS");
header ("Access-Control-Allow-Headers: Content-Type, Authorization, Accept, Accept-Language, X-Authorization");
header('Access-Control-Max-Age: 86400');

$path = 'C:/xampp/htdocs/myproj/freedownloadr1/uploadedApp/';
$_POST['appName'];
$appName =  $_FILES['file']['name'];
$appFile = $_FILES['file']['tmp_name'];
$thumbnailName =  $_FILES['thumbnail']['name'];
$thumbnailFile = $_FILES['thumbnail']['tmp_name'];

$result = move_uploaded_file($appFile, $path.$appName);
$result = move_uploaded_file($thumbnailFile, $path.$thumbnailName);

$insertQuery = "INSERT INTO `app` (`id`, `appName`, `OwnerLink`, `thumbnailUrl`,`appSize`, `descriptions`, `version`, `categoryId`, `downloadPath`) VALUES (NULL, '$appName', '', '$path$thumbnailName', '', '', '', '', '$path$appName')";
$conn = new mysqli("localhost","root","","freedownloads247");
$result = mysqli_query($conn,$insertQuery) or die("Connection Faild");
echo $result;
//echo $thumbnailName;
?>