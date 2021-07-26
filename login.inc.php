<?php
    session_start();
    include_once "db.php";
	if(isset($_POST["login"]))
	{
		$email = $_POST["email"];
		$password = $_POST["passwd"];  

		$email = stripcslashes($email);  
		$password = stripcslashes($password);  
		$email = mysqli_real_escape_string($conn, $email);  
		$password = mysqli_real_escape_string($conn, $password);  
	
		$sql = "SELECT * FROM users where email='$email' and pasword='$password' ";  
        $result = mysqli_query($conn, $sql);  
        $row = mysqli_fetch_assoc($result);  
        $count =mysqli_num_rows($result);
		
		if($count == 1)
		{  
			$_SESSION["favsport"] = "MMA";
			header("location:index.html");  			
		}  
		else{  
			echo "<script>
            window.location.href='login.html';
            alert('Login failed. Invalid Email or password! ');
            </script>";
            exit();
			
		}  
	}  
?>
