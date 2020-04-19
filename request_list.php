<?php

require_once('connection.php');	
$json = file_get_contents('php://input');
 
// Decode the received JSON and Store into $obj variable.
$obj = json_decode($json,true);
//take the username and password from the app
$location=$obj["loc"];


$sql=$con->query("select * from requests where taluk='$location'");
    $res=array();
    while($row=$sql->fetch_assoc()){
        $res[]=$row;
    }
    echo json_encode($res);
?>
