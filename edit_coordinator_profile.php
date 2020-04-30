<?php
require_once('connection.php');	
$json = file_get_contents('php://input');
 
// Decode the received JSON and Store into $obj variable.
$obj = json_decode($json,true);
 
// Getting attributes from $obj object.
$name = $obj['name'];
$district=$obj['district'];
$localty=$obj['localty'];
$contacts=$obj['contacts'];
$profession=$obj['profession'];
$email = $obj['email'];
$experience=$obj['experience'];
$requests=$obj['requests'];
$uname=$obj['uname'];


// Checking whether Contact no or username is Already Exist or Not in MySQL Table.
$CheckSQL1 = "SELECT * FROM coordinators WHERE phone='$contacts' and userid!='$uname'";

 
// Executing Contact and username Check MySQL Query.
$check1 = mysqli_fetch_array(mysqli_query($con,$CheckSQL1));
 
//checking whether contact exists or not
  if(isset($check1)){
 
	$contactExist = 'Contact number Already Exists..!';
	
	//Converting the message into JSON format.
   $existcontactJSON = json_encode($contactExist);
	
   // Echo the message on Screen.
	echo $existcontactJSON ; 

   } 
 else{
 
	 // Creating SQL query and insert the record into MySQL database table.
	 $Sql_Query = "update coordinators set name='$name',district='$district',localty='$localty',phone='$contacts',verified_requests='$requests',email='$email',profession='$profession',experience='$experience' where userid='$uname'";

	 if(mysqli_query($con,$Sql_Query)){
	 
		 // If the record inserted successfully then show the message.
		$MSG = "Profile Updated..." ;
		 
		// Converting the message into JSON format.
		$json = json_encode($MSG);
		 
		// Echo the message.
		 echo $json ;
	 
	 }
	 else{
	 
		echo 'Try Again';
		// echo $Sql_Query.mysqli_error($con);
	 
	 }
 }
 mysqli_close($con);

?>
