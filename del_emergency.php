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
    $SQL_query="delete from coord_requests where bystander_contacts='$contacts'";

if(mysqli_query($con,$SQL_query)){
	 
    // If the record inserted successfully then show the message.
   $MSG = "Record deleted..." ;
    
   // Converting the message into JSON format.
   $json = json_encode($MSG);
    
   // Echo the message.
    echo $json ;

}
else{

   echo json_encode('Try Again');
   // echo $Sql_Query.mysqli_error($con);

}
}else{
    $MSG = "No such record..." ;
    
   // Converting the message into JSON format.
   $json = json_encode($MSG);
    
   // Echo the message.
    echo $json ;

}


?>