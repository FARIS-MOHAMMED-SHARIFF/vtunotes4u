<?php
session_start();
if (!isset($_SESSION["favsport"])) {
    echo "<script>
    window.location.href='login.html';
    alert('YOU NEED TO LOGIN FIRST TO ACCESS THIS PAGE!!!');
    </script>";
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="index.css" />
    <title>Semester</title>
</head>

<body>
    <header>
        <nav class="flex navbar">
            <a href="index.php">
                <div>
                    VtuNotes<span style="color: #2691d9">4</span>U
                </div>
            </a>
            <div>
                <button onclick="location.href='logout.php'">Logout</button>
            </div>
        </nav>
    </header>

    <div class="container">
        <div class="content">
            <h2>Choose Semester</h2>
            <ul class="semester flex">
                <li class="semester-item">
                    <a href="content.php?sem=3">3rd</a>
                </li>
                <li class="semester-item">
                    <a href="content.php?sem=4">4th</a>
                </li>
                <li class="semester-item">
                    <a href="content.php?sem=5">5th</a>
                </li>
                <li class="semester-item">
                    <a href="content.php?sem=6">6th</a>
                </li>
                <li class="semester-item">
                    <a href="content.php?sem=7">7th</a>
                </li>
                <li class="semester-item">
                    <a href="content.php?sem=8">8th</a>
                </li>
            </ul>
        </div>
    </div>

    <script>
        const queryString = window.location.search
        const urlParams = new URLSearchParams(queryString)
        const branch = urlParams.get('branch')

        const links = document.querySelectorAll('.semester-item > a')
        for (let i = 0; i < links.length; i++) {
            links[i].href += `&branch=${branch}`
        }
    </script>
</body>

</html>