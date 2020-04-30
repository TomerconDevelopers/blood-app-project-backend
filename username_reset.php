<?php

require_once('connection.php');	
$json = file_get_contents('php://input');
 
// Decode the received JSON and Store into $obj variable.
$obj = json_decode($json,true);
//take the username and password from the app
$uname=$obj["username"];
$contacts=$obj["contacts"];

$CheckSQL= "SELECT * FROM users WHERE contacts='$contacts'";

 
// Executing Contact and username Check MySQL Query.
$check = mysqli_fetch_array(mysqli_query($con,$CheckSQL));
 

if(isset($check)){
    $CheckSQL1 = "SELECT * FROM users WHERE username='$uname'";

 
// Executing Contact and username Check MySQL Query.
$check1 = mysqli_fetch_array(mysqli_query($con,$CheckSQL1));
 
//checking whether contact exists or not
  
   if(!isset($check1)){
 
	 // Creating SQL query and insert the record into MySQL database table.
	 $Sql_Query = "update users set username='$uname' where contacts='$contacts'";

	 if(mysqli_query($con,$Sql_Query)){
	 
		 // If the record inserted successfully then show the message.
		$MSG = "Username changed..." ;
		 
		// Converting the message into JSON format.
		$json = json_encode($MSG);
		 
		// Echo the message.
		 echo $json ;
	 
	 }
	 else{
	 
		echo json_encode('Try Again');
		// echo $Sql_Query.mysqli_error($con);
	 
	 }
 }
 else{
 
	$contactExist = 'Username exists..!';
	
	//Converting the message into JSON format.
   $existcontactJSON = json_encode($contactExist);
	
   // Echo the message on Screen.
	echo $existcontactJSON ; 

   } 

}
else{
   
 
        $contactExist = 'Invalid Mobile number..!';
        
        //Converting the message into JSON format.
       $existcontactJSON = json_encode($contactExist);
        
       // Echo the message on Screen.
        echo $existcontactJSON ; 
    
      
}
?>