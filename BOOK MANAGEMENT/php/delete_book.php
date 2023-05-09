<?php

if(isset($_GET['id'])){
    $id = $_GET['id'];

    require_once "../db/connectDB.php";
    
    $query = "DELETE FROM book where ID = " .$id;

    mysqli_query($conn, $query);

    
}

?>
