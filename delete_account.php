<?php

require_once('connection.php');	
$json = file_get_contents('php://input');
 
// Decode the received JSON and Store into $obj variable.
$obj = json_decode($json,true);
 
// Getting attributes from $obj object.
$uname = $obj['username'];

$SQL_query="delete from users where username='$uname'";

if(mysqli_query($con,$SQL_query)){
	 
    // If the record inserted successfully then show the message.
   $MSG = "Account deleted..." ;
    
   // Converting the message into JSON format.
   $json = json_encode($MSG);
    
   // Echo the message.
    echo $json ;

}
else{

   echo json_encode('Try Again');
   // echo $Sql_Query.mysqli_error($con);

}

?>