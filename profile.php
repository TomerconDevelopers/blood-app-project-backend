<?php

require_once('connection.php');	
$json = file_get_contents('php://input');
 
// Decode the received JSON and Store into $obj variable.
$obj = json_decode($json,true);
//take the username and password from the app
$uname=$obj["uname"];
$password=$obj["pass"];
//sql query to fetch the details of the user
$CheckSQL4 = "SELECT * FROM users WHERE username='$uname'";
//fetches the details of the user
$check4 = mysqli_fetch_array(mysqli_query($con,$CheckSQL4));
//if success,the details is returned
if(isset($check4)){
    //the details are encoded to json and echoed
     echo json_encode($check4);
}
else{
    echo "Try again";
}


?>