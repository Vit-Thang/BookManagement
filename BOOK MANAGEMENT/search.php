<!DOCTYPE html>
<html lang="en">

<head>
    <?php require_once "./header.php" ?>
    <title>Document</title>
</head>

<body>
    <?php require_once "./navbar2.php" ?>
    <?php require_once "./db/connectDB.php" ?>
    <?php
    $result = null;
    if (isset($_GET["search"])) {
        $search = isset($_GET["search"]) ? $_GET["search"] : "";

        // $query = "SELECT * FROM book WHERE book_type LIKE " . "'%" . $search . "%'";
        $query = "SELECT * FROM book WHERE code LIKE " . "'%" . $search . "%'";
        // echo $query;
        // exit();
        $result = mysqli_query($conn, $query);
    }


    ?>

    <div class="container">
        <h2>Search</h2>


        <div class="mt-4">
            <div class="row">
                <?php
                if ($result != null) {
                    while ($row = mysqli_fetch_assoc($result)) {
                ?>
                        <div class="col m-3">
                            <div class="card" style="width:200px">
                                <img class="card-img-top mw-50" src="<?php echo $row["book_image"] ?>" alt="Card image">
                                <div class="card-body">
                                    <h4 class="card-title"><?php echo $row["book_name"] ?></h4>
                                    <p class="card-text"><?php echo $row["publisher"] ?></p>
                                    <a href="#" class="btn btn-primary">See Profile</a>
                                </div>
                            </div>
                        </div>
                <?php

                    }
                }
                ?>
            </div>
        </div>

    </div>

</body>

</html>