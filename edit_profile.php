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

//converting string types to their actual types
$w=(int)$weight;//weight-string to int
$a=(int)$age;//age -string to int
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
	$d2=strtotime('0000-00-00');
$d3=date('Y-m-d',$d2);
}

// Checking whether Contact no or username is Already Exist or Not in MySQL Table.
$CheckSQL1 = "SELECT * FROM users WHERE contacts='$contacts' and username!='$uname'";

 
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
	 $Sql_Query = "update users set name='$name',age='$a',gender='$gender',weight='$w',bloodgroup='$bloodgroup',district='$district',localty='$localty',contacts='$contacts',alt_contact_no='$alt_contact',email='$email',last_don='$d1',status='$status',for_time='$d3' where username='$uname'";

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