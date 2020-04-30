  
<?php
include "firebase_push.php";
require_once('connection.php');	
$json = file_get_contents('php://input');
 
// Decode the received JSON and Store into $obj variable.
$obj = json_decode($json,true);
 
// Getting attributes from $obj object.
$name = $obj['name'];
$age=$obj['age']; 
$bloodgroup=$obj['bloodgroup'];
$district=$obj['district'];
$localty=$obj['taluk'];
$contacts=$obj['contacts'];
$alt_contact=$obj['alt_contacts'];
$qty = $obj['qty'];
$dateneed=$obj['date'];
$hsp=$obj['hospital'];

// echo $name;
//converting string types to their actual types

$a=(int)$age;//age -string to int
$q=(int)$qty;
$d=strtotime($dateneed);//if last donation is given converting it to date
$d1=date('Y-m-d',$d);

// Checking whether Contact no Already Exist or Not in MySQL Table.
$CheckSQL1 = "SELECT * FROM requests WHERE bystander_contacts='$contacts'";

 
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
	 $Sql_Query = "insert into requests(name,age,bloodgroup,bloodqty,district,taluk,hospital,bystander_alt_contacts,bystander_contacts,date) values('$name','$a','$bloodgroup','$q','$district','$localty','$hsp','$alt_contact','$contacts','$d1')";
    
	 if(mysqli_query($con,$Sql_Query)){
	 
		 // If the record inserted successfully then show the message.
		$MSG = "Your request is recorded for verification..." ;
		 
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
