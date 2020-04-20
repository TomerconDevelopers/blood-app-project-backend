<?php

require_once('connection.php');	
$json = file_get_contents('php://input');
 
// Decode the received JSON and Store into $obj variable.
$obj = json_decode($json,true);

//take the username and password from the app
$uid=$obj["userid"];
$password=$obj["pass"];

//sql query to fetch the details of the user
$CheckSQL = "SELECT * FROM coordinators WHERE userid='$uid' and password='$password'";

//fetches the details of the user
$check = mysqli_fetch_array(mysqli_query($con,$CheckSQL));


//if success,the details is returned
if(isset($check)){
    //the details are encoded to json and echoed
     echo json_encode($check);
}
else{
    echo "Try again";
}


?>
