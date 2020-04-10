 
<?php 
require_once('connection.php');	
$json = file_get_contents('php://input');
 
// Decode the received JSON and Store into $obj variable.
$obj = json_decode($json,true);

//take the username and password from the app
$uid=$obj["userid"];
$password=$obj["pass"];
 
$conn = mysqli_connect($userid,$pass);
if(!$conn)
{
	die("Connection failed: " . mysqli_connect_error());
}
 
?>
 
<?php 
	$sql = "select * from posts where id = 1";
	$rs = mysqli_query($conn, $sql);
	//get row
	$fetchRow = mysqli_fetch_assoc($rs);
?> 
 