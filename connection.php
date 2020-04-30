<?php
 
 //Defining server host name.
 $hostname = "localhost";
 
 //Defining MySQL Database Name.
 $dbname = "bloodapp";
 
 //Defining Database User Name.
 $user = "root";
 
 //Defining Database Password.
 $pass = "samboil"; 
 
 // Creating MySQL Connection.
 $con = mysqli_connect($hostname,$user,$pass,$dbname);

 //checking whether connection established or not
 if(!$con){
     die("Connection failed: ".mysqli_connect_error());
 }
 else{
     //echo "Success";
 }
