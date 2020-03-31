<?php

require_once('connection.php');	
$json = file_get_contents('php://input');
 
// Decode the received JSON and Store into $obj variable.
$obj = json_decode($json,true);
 
// Getting attributes from $obj object.
$name = $obj['name'];
$gender=$obj['gender'];
$age=$obj['age']; 
$weight=$obj['weight'];
$bloodgroup=$obj['bloodgroup'];
$district=$obj['district'];
$localty=$obj['localty'];
$contacts=$obj['contacts'];
$alt_contact=$obj['alt_contact'];
$email = $obj['email'];
$last_don=$obj['last_don'];
$status=$obj['status'];
$for_time=$obj['for_time'];
$uname=$obj['uname'];
$password = $obj['password'];
$re_password=$obj['re_password'];
// Checking whether Contact no or Email is Already Exist or Not in MySQL Table.
$CheckSQL1 = "SELECT * FROM users WHERE contacts='$contacts'";
$CheckSQL2 = "SELECT * FROM users WHERE email='$email'";
$CheckSQL3 = "SELECT * FROM users WHERE username='$uname'";
 
// Executing Email Check MySQL Query.
$check1 = mysqli_fetch_array(mysqli_query($con,$CheckSQL1));
$check2 = mysqli_fetch_array(mysqli_query($con,$CheckSQL2));
$check3 = mysqli_fetch_array(mysqli_query($con,$CheckSQL3));
 
if(isset($check2)){
 
	 $emailExist = 'Email Already Exist..!';
	 
	 // Converting the message into JSON format.
	$existEmailJSON = json_encode($emailExist);
	 
	// Echo the message on Screen.
	 echo $existEmailJSON ; 
 
  }
  elseif(strcmp($password,$re_password)!==0){
	$pass_not_match = 'Passwords not matching..!';
	
	//Converting the message into JSON format.
   $pass_not_matchJSON = json_encode($pass_not_match);
	
   // Echo the message on Screen.
	echo $pass_not_matchJSON ; 	  
  }
  elseif(isset($check1)){
 
	$contactExist = 'Contact number Already Exists..!';
	
	//Converting the message into JSON format.
   $existcontactJSON = json_encode($contactExist);
	
   // Echo the message on Screen.
	echo $existcontactJSON ; 

   } 
   elseif(isset($check3)){
 
	$usernExist = 'Contact number Already Exists..!';
	
	//Converting the message into JSON format.
   $usernJSON = json_encode($usernExist);
	
   // Echo the message on Screen.
	echo $usernJSON ; 

   } 
 else{
 
	 // Creating SQL query and insert the record into MySQL database table.
	 $Sql_Query = "insert into users(name,gender,age,weight,bloodgroup,district,localty,contacts,alt_contact_no,email,last_don,status,for_time,username,pass) values('$name','$gender','$age','$weight','$bloodgroup','$district','$localty','$contacts','$alt_contact','$email','$last_don','$status','$for_time','$uname','$password')";

	 if(mysqli_query($con,$Sql_Query)){
	 
		 // If the record inserted successfully then show the message.
		$MSG = 'User Registered Successfully' ;
		 
		// Converting the message into JSON format.
		$json = json_encode($MSG);
		 
		// Echo the message.
		 echo $json ;
	 
	 }
	 else{
	 
		echo 'Try Again';
	 
	 }
 }
 mysqli_close($con);

?>
