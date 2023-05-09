<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    require_once "../db/connectDB.php"; 
    $username = $_POST["username"];
    $pwd = $_POST["pwd"];

    $query = "SELECT * from acc where user_name= '$username' and password='$pwd'";
    $result =  mysqli_query($conn, $query);
    if(mysqli_num_rows($result) > 0){
        header("Location:/home2.php");
    }else{
        header("Location:/login.php");
    }
    
}   
?>