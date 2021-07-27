<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="index.css" />
    <title>VtuNotes4U</title>
</head>

<body>
    <header>
        <nav class="flex navbar">
            <a href="index.html">
                <div>
                    VtuNotes<span style="color: #2691d9">4</span>U
                </div>
            </a>
            <div>
                <?php
                        session_start();
                        if(isset($_SESSION["favsport"])){
                ?>
                <button onclick="location.href='logout.php'">Logout</button>
                <?php
                        }
                        if(!isset($_SESSION["favsport"]))
                        {?>
                <button onclick="location.href='login.html'">Login</button>
                <?php
                        }
                    ?>
            </div>
        </nav>
    </header>

    <div class="container">
        <div class="hero">
            <p>
                One stop destination for all the latest VTU notes, model
                question papers and all other resources.
            </p>
            <img src="images/books.svg" alt="" />
        </div>
        <h2>Choose Category</h2>
        <div class="content">
            <ul class="category flex">
                <li class="category-item">
                    <a href="semesters.php?branch=cse">CSE</a>
                </li>
                <li class="category-item">
                    <a href="semesters.php?branch=ece">ECE</a>
                </li>
                <li class="category-item">
                    <a href="semesters.php?branch=mech">MECH</a>
                </li>
                <li class="category-item">
                    <a href="semesters.php?branch=civil">CIVIL</a>
                </li>
                <li class="category-item">
                    <a href="semesters.php?branch=eee">EEE</a>
                </li>
            </ul>
        </div>
    </div>
    <script src="app.js"></script>
</body>

</html>