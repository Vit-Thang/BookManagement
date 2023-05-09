<!DOCTYPE html>
<html lang="en">

<head>
    <?php require_once "./header.php" ?>
    <meta charset="utf-8">
    <title>Document</title>
</head>

<body>
    <?php require_once "./db/connectDB.php" ?>
    <?php
    $query = "select * from book";
    $result = mysqli_query($conn, $query);
    ?>
    <?php require_once "./navbar2.php" ?>

    <div class="container mt-5">
        <h2>Book list</h2>
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Code</th>
                    <th>Name</th>
                    <th>Book type</th>
                    <th>Publisher</th>
                    <th>Purchase date</th>
                    <th class="mw-25 w-25">Book image</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <?php
                if (mysqli_num_rows($result) > 0) {
                    while ($row = mysqli_fetch_assoc($result)) {


                ?>
                        <tr>
                            <td><?php echo $row["ID"] ?></td>
                            <td><?php echo $row["code"] ?></td>
                            <td><?php echo $row["book_name"] ?></td>
                            <td><?php echo $row["book_type"] ?></td>
                            <td><?php echo $row["publisher"] ?></td>
                            <td><?php echo $row["purchase_date"] ?></td>
                            <td><img class="w-50" src="<?php echo $row['book_image'] ?>" alt=""></td>
                            <td>

                                <button type="button" data-id="<?php echo $row["ID"] ?>" class="btn btn-danger btn_Delete">Delete</button>
                                <button type="button" data-id="<?php echo $row["ID"] ?>" class="btn btn-warning btn_Edit">Edit</button>

                            </td>
                        </tr>
                <?php

                    }
                }
                ?>
            </tbody>
        </table>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script>
        $(document).ready(function() {
            $(".btn_Edit").each(function() {
                let id = $(this).attr("data-id");
                $(this).click(function() {
                    window.location.href = "/update_book.php?id=" + id;
                })
            })
            $(".btn_Delete").each(function() {
                let id = $(this).attr("data-id");
                $(this).click(async function() {
                    if (confirm("Are you sure wanna delete this book ?")) {
                        await fetch(`./php/delete_book.php?id=${id}`);
                        window.location.reload();
                    }


                })
            })
        })
    </script>
    <nav aria-label="Page navigation example ">
        <ul class="pagination " style="    position: relative; left: 630px;">
            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">Next</a></li>
        </ul>
    </nav>
    <?php require_once "./footer.php" ?>
</body>

</html>