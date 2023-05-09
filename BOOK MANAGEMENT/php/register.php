<?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        require_once "../db/connectDB.php"; 
        $username = $_POST["username"];
        $pwd = $_POST["pwd"];

        $query = "INSERT INTO acc (user_name, password) VALUES ('$username','$pwd')";
        mysqli_query($conn, $query);

        header("Location:/login.php");
        
    }
?>