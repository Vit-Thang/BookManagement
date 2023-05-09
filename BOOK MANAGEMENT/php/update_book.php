<?php 

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    require_once "../db/connectDB.php";  //chen file database.php

    $ID = $_POST["ID"];
    $code = $_POST["code"];
    $book_name = $_POST["book_name"];
    $book_type = $_POST["book_type"];
    $publisher = $_POST["publisher"];
    $purchase_date = $_POST["purchase_date"];
    $book_image = isset($_POST["book_image"]) ? $_POST["book_image"] : null;

    $target_dir = "../uploads/"; //thu muc se luu file upload
    $target_file = $target_dir . basename($_FILES["book_image"]["name"]); //Vị trí file lưu tạm trong server (file sẽ lưu trong uploads, với tên giống tên ban đầu)

    
    $query_update="UPDATE book SET 
        code='$code',
        book_name='$book_name',
        book_type='$book_type',
        publisher='$publisher',
        purchase_date='$purchase_date'

        WHERE
            ID = $ID
    ";

    if($target_file != $book_image){
        // move_uploaded_file($_FILES["book_image"]["tmp_name"], $target_file);  // Xử lý di chuyển file tạm ra thư mục cần lưu trữ

        $query_update="UPDATE book SET 
            code='$code',
            book_name='$book_name',
            book_type='$book_type',
            publisher='$publisher',
            purchase_date='$purchase_date',
            book_image='$target_file'

            WHERE
                ID = $ID
        ";
        echo "Update IMG";
    }
    // echo "<br>";
    // echo $target_file . " - " . $book_image;
    // echo "<br>";
    // echo $target_file != $book_image ? "Update IMG\n" : "";
    // echo $query_update;
    // exit();

    
    mysqli_query($conn, $query_update);
    header("Location:/book_list.php");
    
}else{
    echo "Error";
}

?>