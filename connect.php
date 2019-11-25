<?php 
    /*
    Used to connect to db
    Change values as needed
    */
    DEFINE('DB_USER', 'username');
    DEFINE('DB_PASSWORD', 'password');
    DEFINE('DB_HOST', 'localhost');
    DEFINE('DB_NAME', 'sales');

    $db_connect = @mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME)
    OR die("error" . mysqli_connect_error());
    
?>
