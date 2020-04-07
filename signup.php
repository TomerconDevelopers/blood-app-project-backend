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

//converting string types to their actual types
//weight-string to int
$w=(int)$weight;
//age -string to int
$a=(int)$age;
if(!empty($last_don)){
	$d=strtotime($last_don);//if last donation is given converting it to date
	$d1=date('Y-m-d',$d);
}else{
	$d=strtotime('0000-00-00');//if status is available for/unavailable for
	$d1=date('Y-m-d',$d);	
}
if(!empty($for_time)){
	$d2=strtotime($for_time);
	$d3=date('Y-m-d',$d2);
}else{
	$d2=strtotime(0000-00-00);
	$d3=date('Y-m-d',$d2);
}

// Checking whether Contact no or username is Already Exist or Not in MySQL Table.
$CheckSQL1 = "SELECT * FROM users WHERE contacts='$contacts'";
$CheckSQL3 = "SELECT * FROM users WHERE username='$uname'";
 
// Executing Contact and username Check MySQL Query.
$check1 = mysqli_fetch_array(mysqli_query($con,$CheckSQL1));
$check3 = mysqli_fetch_array(mysqli_query($con,$CheckSQL3));
 
//checking whether contact exists or not
  if(isset($check1)){
 
	$contactExist = 'Contact number Already Exists..!';
	
	//Converting the message into JSON format.
   $existcontactJSON = json_encode($contactExist);
	
   // Echo the message on Screen.
	echo $existcontactJSON ; 

   } 
   //checking whether username exists or not
   elseif(isset($check3)){
 
	$usernExist = 'Username Already Exists..!';
	
	//Converting the message into JSON format.
   $usernJSON = json_encode($usernExist);
	
   // Echo the message on Screen.
	echo $usernJSON ; 

   } 
 else{
 
	 // Creating SQL query and insert the record into MySQL database table.
	 $Sql_Query = "insert into users(name,gender,age,weight,bloodgroup,district,localty,contacts,alt_contact_no,email,last_don,status,for_time,username,pass) values('$name','$gender','$a','$w','$bloodgroup','$district','$localty','$contacts','$alt_contact','$email','$d1','$status','$d3','$uname','$password')";

	 if(mysqli_query($con,$Sql_Query)){
	 
		 // If the record inserted successfully then show the message.
		$MSG = "Congrats!!You've successfully registered..." ;
		 
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
