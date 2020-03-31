    <?php
    	require_once 'connection.php';
    	session_start();
    	if(ISSET($_POST['login'])){
    		$email = $_POST['email'];
    		$password = $_POST['password'];
     
    		$query = mysqli_query($connection, "SELECT * FROM `users` WHERE `email` = '$email' AND `password` = '$password'") or die(mysqli_error());
    		$fetch = mysqli_fetch_array($query);
    		$row = mysqli_num_rows($query);
     
    		if($row > 0){
    			$_SESSION['user_id']=$fetch['user_id'];
    			echo "<script>alert('Login Successfully!')</script>";
    			echo "<script>window.location='home.php'</script>";
    		}else{
    			echo "<script>alert('Invalid email or password')</script>";
    			echo "<script>window.location='index.php'</script>";
    		}
     
    	}
     
    ?>