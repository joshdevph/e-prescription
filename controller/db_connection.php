<?php
$dbUser = 'root'; // User of Database
$dbHost = 'localhost'; // Route or Server
$dbPassword = ''; // Pass
$dbName = 'sourcedbdev'; // Database Name

try {
    $connect = mysqli_connect($dbhost, $dbUser, $dbPassword, $dbName);
} catch (\Throwable $th) {
    echo $th;
}

?>