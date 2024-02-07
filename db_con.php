<?php
$db_server = "localhost";
$db_uname = "root";
$db_pass = "";
$db_name = "db_user_table";
$con = "";

$con = mysqli_connect( $db_server , $db_uname , $db_pass, $db_name);

if($con){
    
}

else{
    echo "Not connected";
}


?>