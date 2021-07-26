<?php
    session_start();
    include_once "db.php";
	if(isset($_POST["Signup"]))
	{
		$email = $_POST["email"];
		$password = $_POST["passwd"];  

		$email = stripcslashes($email);  
		$password = stripcslashes($password);  
		$email = mysqli_real_escape_string($conn, $email);  
		$password = mysqli_real_escape_string($conn, $password);  
	
		$sql = "INSERT INTO `users`(`email`, `pasword`) VALUES ('$email','$password')";  
        $result = mysqli_query($conn, $sql);  
		
		if($result)
		{  
			$_SESSION["favsport"] = "MMA";
			header("location:index.html");  			
		}  
		else{  
			echo "<script>
            window.location.href='login.html';
            alert('Sign-in failed.This Email-id is already registered! ');
            </script>";
            exit();
			
		}  
	}  
?>