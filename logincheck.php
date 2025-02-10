<?php
session_start();

if(!isset($_POST['text']))
{
    $email = $_POST['email'];
    $pswd = $_POST['pswd'];
    $con=mysqli_connect("localhost","root","","project");
    $sql="SELECT * from register WHERE email='$email' AND pswd='$pswd'";
    $result=mysqli_query($con,$sql);
    $resultcheck=mysqli_num_rows($result);
    if ($resultcheck>0) {
        $row=mysqli_fetch_assoc($result);
        echo"<script type='text/javascript'>alert('Logged In Successfully')</script>";
        $_SESSION['email'] = $row['email'];
        header("Location:product1.php");
        exit();
    }
    else {
        echo"<script type='text/javascript'>alert('Username and Password Combination are Incorrect')</script>";
        include 'login.html';
    }
}
?>