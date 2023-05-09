<nav class="navbar navbar-expand-sm bg-light navbar-light">
    <ul class="navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="/home2.php">BOOK MANAGEMENT</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/book_list.php">Book list</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/new_book.php">New book</a>
        </li>
    </ul>
    <form class="form-inline" action="/search.php" style="position : relative; left : 700px ">
        <input class="form-control mr-sm-2" name="search" type="text" placeholder="Search">
        <button class="btn btn-success" type="submit" style="background-color:#1c87c9;">Search</button>
    </form>
        <a class="btn btn-success" href="/login.php" type="button" style="position : relative; left : 770px; background-color:#1c87c9;">Logout</a>
</nav>