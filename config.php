<?php 
    $con = new mysqli("db", "php_docker", "password", "php_docker");

    if($con->connect_error)
    {
        die("Connection failed: ".$con->connect_error);
    }
?>