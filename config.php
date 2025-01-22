<?php 
    $con = new mysqli("localhost", "root", "", "property_sales_db");

    if($con->connect_error)
    {
        die("Connection failed: ".$con->connect_error);
    }
?>