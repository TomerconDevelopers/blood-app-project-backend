<?php

require_once('connection.php');	
$json = file_get_contents('php://input');
 
// Decode the received JSON and Store into $obj variable.
$obj = json_decode($json,true);
 
// Getting attributes from $obj object.
$contacts = $obj['contacts'];
$CheckSQL1 = "SELECT * FROM coord_requests WHERE bystander_contacts='$contacts' ";
$check1 = mysqli_fetch_array(mysqli_query($con,$CheckSQL1));
if(isset($check1)){
    $MSG = "Your request is live in the newsfeed..." ;
    
   // Converting the message into JSON format.
   $json = json_encode($MSG);
    
   // Echo the message.
    echo $json ;
}else{
    $MSG = "Your request was rejected by our coordinator.Please contact our nearby coordinators for more details" ;
    
   // Converting the message into JSON format.
   $json = json_encode($MSG);
    
   // Echo the message.
    echo $json ;

}


?>