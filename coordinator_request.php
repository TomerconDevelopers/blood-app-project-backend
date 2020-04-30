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
$localty=$obj['localty'];
$contacts=$obj['contacts'];
$alt_contact=$obj['alt_contacts'];
$date=$obj['date'];
$status=$obj['status'];
$units=$obj['units'];
$hosp=$obj['hosp'];
$verified = $obj['verified'];
$cid=$obj['id'];

//converting string types to their actual types

$a=(int)$age;//age -string to int
$d=strtotime($date);//if last donation is given converting it to date
$d1=date('Y-m-d',$d);


// Checking whether Contact no or username is Already Exist or Not in MySQL Table.
$CheckSQL1 = "SELECT * FROM coord_requests WHERE bystander_contacts='$contacts' ";
$check1 = mysqli_fetch_array(mysqli_query($con,$CheckSQL1));
 
 
//checking whether contact exists or not
  if(isset($check1)){
 
	$contactExist = 'Record already verified..!';
	
	//Converting the message into JSON format.
   $existcontactJSON = json_encode($contactExist);
	
   // Echo the message on Screen.
	echo $existcontactJSON ; 

   } 
   
 else{
 
	 // Creating SQL query and insert the record into MySQL database table.
     $Sql_Query = "insert into coord_requests(name,age,bloodgroup,bloodqty,district,taluk,hospital,bystander_contacts,bystander_alt_contacts,date,status,verification,coor_id) values('$name','$a','$bloodgroup','$units','$district','$localty','$hosp','$contacts','$alt_contact','$d1','$status','$verified','$cid')";
    $SQL1 = "delete from requests where bystander_contacts='$contacts'";
     // echo $Sql_Query;
	 if($verified!='Rejected'){
    if(mysqli_query($con,$Sql_Query) && mysqli_query($con,$SQL1)){
        
      // If the record inserted successfully then show the message.
     
         
         $MSG = "Posted successfully..!" ;
         // Converting the message into JSON format.
         $json = json_encode($MSG);
         // Echo the message.
      echo $json ;
         // }		 

        if(substr($bloodgroup,strlen($bloodgroup)-1,1) == "+") {
            $bb = substr($bloodgroup,0,-1);
            $topic = $district.$bb."positive";
        }
        else{

            $bb = substr($bloodgroup,0,-1);
            $topic = $district.$bb."negative";

        }

        $title="Blood Request";
        $content = "Group:".$bloodgroup.", Date:".$date.", District: ".$district.", Hospital : ".$hosp;
        push($title,$content,$topic);

    }
    else{
    
     echo json_encode("Try Again");
     //echo $Sql_Query.mysqli_error($con);
    
    }
   }
   else{
    if(mysqli_query($con,$SQL1)){
        
      // If the record inserted successfully then show the message.        
         $MSG = "Deleted successfully..!" ;
         // Converting the message into JSON format.
         $json = json_encode($MSG);
         // Echo the message.
      echo $json ;
         // }		 
     
    
    }
    else{
    
     echo json_encode("Try Again");
     //echo $Sql_Query.mysqli_error($con);
    
    }
   }
 }
 mysqli_close($con);

?>