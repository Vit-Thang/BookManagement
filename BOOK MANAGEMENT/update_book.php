<!DOCTYPE html>
<html lang="en">

<head>
    <?php require_once "./header.php" ?>
    <title>Document</title>
</head>

<body>

    <?php require_once "./db/connectDB.php" ?>
    <?php require_once "./navbar.php" ?>
<?php 

if(isset($_GET["id"])){
    $ID= $_GET['id'];
    $query_select = "SELECT * from book where ID = " . $ID;
    $result = mysqli_query($conn, $query_select);
    $book = null;

if(mysqli_num_rows($result)>0){
    $book = mysqli_fetch_assoc($result);
}

}
else{
    header('Location:/book_list.php');
}

?>

    <div class="container">
        <form action="./php/update_book.php" method="POST" enctype="multipart/form-data">
            <div class="form-group">
                <label for="email">Code:</label>
                <input type="text" value="<?php echo $book['code'] ?>" class="form-control" placeholder="Enter code" id="code" name="code">
                <input type="hidden" name="ID" value="<?php echo $book['ID'] ?>">
            </div>
            <div class="form-group">
                <label for="pwd">Book name:</label>
                <input type="text" value="<?php echo $book['book_name'] ?>" class="form-control" placeholder="Enter book_name" id="book_name" name="book_name">
            </div>
            <div class="form-group">
                <label for="pwd">Book type:</label>
                <input type="text" value="<?php echo $book['book_type'] ?>" class="form-control" placeholder="Enter book_type" id="book_type" name="book_type">
            </div>
            <div class="form-group">
                <label for="pwd">Publisher:</label>
                <input type="text" value="<?php echo $book['publisher'] ?>" class="form-control" placeholder="Enter publisher" id="publisher" name="publisher">
            </div>
            <div class="form-group">
                <label for="pwd">Purchase date:</label>
                <input type="date" value="<?php echo $book['purchase_date'] ?>" class="form-control" placeholder="Enter purchase_date" id="purchase_date" name="purchase_date">
            </div>
            <div class="form-group">
                <label for="pwd">Book image:</label>
                <input type="file" value="<?php echo $book['book_image'] ?>" class="form-control" placeholder="Enter book_image" id="book_image" name="book_image">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</body>

</html>