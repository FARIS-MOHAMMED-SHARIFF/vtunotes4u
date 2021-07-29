<?php
include_once "db.php";
$branch = $_GET['branch'];
$sem = $_GET['sem'];
$path = "resources/{$branch}/{$sem}-Sem/Notes/";
$path1 = "resources/{$branch}/{$sem}-Sem/Question Papers/";

$sql = "SELECT * FROM `subjects` where branch='$branch' and sem=$sem ";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_all($result);
$count = mysqli_num_rows($result);

// foreach ($row as $r) { 
//     echo $r[0];
//     }

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>VtuNotes4U</title>
    <link rel="stylesheet" href="index.css" />
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
    <div class="container1">
        <div class="content1">
            <?php
            foreach ($row as $r) {
            ?>
                <button class="accordion">
                    <?php echo $r[0] ?>
                    <span class='arrow'></span>
                </button>
                <div class="links">

                    <a href="<?php echo "{$path}{$r[3]}.pdf" ?>" download><img class="icon" src="images/download.svg" />Notes</a>
                    <a href="<?php echo "{$path1}{$r[3]}.pdf" ?>" download><img class="icon" src="images/download.svg" />Model
                        Question Paper</a>
                </div>
            <?php
            }
            ?>
        </div>
    </div>

    <script>
        const acc = document.querySelectorAll('.accordion')

        for (let i = 0; i < acc.length; i++) {
            acc[i].addEventListener('click', function() {
                acc[i].classList.toggle('active')
                const links = acc[i].nextElementSibling
                if (links.style.display === 'flex') {
                    links.style.display = 'none'
                } else {
                    links.style.display = 'flex'
                }
            })
        }

    </script>
</body>

</html>