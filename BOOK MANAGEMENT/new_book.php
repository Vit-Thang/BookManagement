<!DOCTYPE html>
<html lang="en">
<head>
<?php require_once "./header.php" ?>

    <title>New Book</title>
</head>
<body>
<?php require_once "./db/connectDB.php" ?>
<?php require_once "./navbar2.php" ?>

<div class="container mt-5" >
<form action="./php/new_update_book.php" method="POST" enctype="multipart/form-data">
  <div class="form-group">
    <label for="email">Code:</label>
    <input type="text" class="form-control" placeholder="Enter code" id="code" name="code">
  </div>
  <div class="form-group">
    <label for="pwd">Book name:</label>
    <input type="text" class="form-control" placeholder="Enter book_name" id="book_name" name="book_name">
  </div>
  <div class="form-group">
    <label for="pwd">Book type:</label>
    <input type="text" class="form-control" placeholder="Enter book_type" id="book_type" name="book_type">
  </div>
  <div class="form-group">
    <label for="pwd">Publisher:</label>
    <input type="text" class="form-control" placeholder="Enter publisher" id="publisher" name="publisher">
  </div>
  <div class="form-group">
    <label for="pwd">Purchase date:</label>
    <input type="date" class="form-control" placeholder="Enter purchase_date" id="purchase_date" name="purchase_date">
  </div>
  <div class="form-group">
    <label for="pwd">Book image:</label>
    <input type="file" class="form-control" placeholder="Enter book_image" id="book_image" name="book_image">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
<?php require_once "./footer.php" ?>
</body>
</html>