<?php
require("db_connection.php");
try {
    $queryGetAllAccounts = "select * from user_tbl";
    $results = mysqli_query($connect, $queryGetAllAccounts);
    while($row = mysqli_fetch_array($results))
    {
       print_r($row);
    } 
} catch (\Throwable $th) {
    echo $th;
}