<?php

$uname = $_POST['uname'];
$email  = $_POST['email'];
$pswd = $_POST['pswd'];
$pswd1 = $_POST['pswd1'];




if (!empty($uname) || !empty($email) || !empty($pswd) || !empty($pswd1) )
{

$host = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "project";



// Create connection
$conn = new mysqli ($host, $dbusername, $dbpassword, $dbname);

if (mysqli_connect_error()){
  die('Connect Error ('. mysqli_connect_errno() .') '
    . mysqli_connect_error());
}
else{
  $SELECT = "SELECT email From register Where email = ? Limit 1";
  $INSERT = "INSERT Into register (uname , email ,pswd, pswd1 )values(?,?,?,?)";

//Prepare statement
     $stmt = $conn->prepare($SELECT);
     $stmt->bind_param("s", $email);
     $stmt->execute();
     $stmt->bind_result($email);
     $stmt->store_result();
     $rnum = $stmt->num_rows;

     //checking username
      if ($rnum==0) {
      $stmt->close();
      $stmt = $conn->prepare($INSERT);
      $stmt->bind_param("ssss", $uname,$email,$pswd,$pswd1);
      $stmt->execute();
      echo " <script type='text/javascript'> alert('User Registered sucessfully') </script> ";
        include 'login.html';
     } else {
      echo " <script type='text/javascript'> alert('Someone already register using this email') </script> ";
      include 'login.html';
     }
     $stmt->close();
     $conn->close();
    }
} else {
 echo "All field are required";
 die();
}
?>