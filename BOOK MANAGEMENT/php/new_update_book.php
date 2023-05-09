<?php 

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    require_once "../db/connectDB.php"; 

    $code = $_POST["code"];
    $book_name = $_POST["book_name"];
    $book_type = $_POST["book_type"];
    $publisher = $_POST["publisher"];
    $purchase_date = $_POST["purchase_date"];
    $book_image = $_POST["book_image"];

    $target_dir = "../uploads/";
    $target_file = $target_dir . basename($_FILES["book_image"]["name"]);

    $query_insert="insert into book (code, book_name, book_type, publisher, purchase_date, book_image) values ('$code', '$book_name', ' $book_type', '$publisher', '$purchase_date', '$target_file')";
    mysqli_query($conn, $query_insert);
    move_uploaded_file($_FILES["book_image"]["tmp_name"], $target_file);
    header("Location:/book_list.php");
    
}else{
    echo "Error";
}



?>
