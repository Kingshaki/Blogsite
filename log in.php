<!DOCTYPE html>
<html>
<head>
	<title>LOGIN</title>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Here</title>
    <link rel="stylesheet" href="login.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;600;700&display=swap" rel="stylesheet">
</head>
<body>
     <form action="" method="post">
	 <div class="wrapper">
        <h1>Login</h1>
        <form action="#">
            <input type="text" name = "username" placeholder="Username">
            <input type="text" name = "password" placeholder="Password">
        </form>
        
     	<button type="submit">Login</button><br>

     </form>
</body>
</html>


<?php
include("db_con.php");



if (isset($_POST['username']) && isset($_POST['password'])) {

	
    $username = filter_input(INPUT_POST, "username" , FILTER_SANITIZE_SPECIAL_CHARS);
    $password = filter_input(INPUT_POST, "password" , FILTER_SANITIZE_SPECIAL_CHARS);


    if(empty($username)){
        echo "Enter username";
    }

     if(empty($password)){
        echo "Enter password";
    }

	
	else{
		$sql = "SELECT * FROM db2 WHERE username='$username' AND password='$password'";

		$result = mysqli_query($con, $sql);

		if (mysqli_num_rows($result) === 1) {
			$row = mysqli_fetch_assoc($result);
            if ($row['username'] === $username && $row['password'] === $password) {
            	$_SESSION['username'] = $row['username'];
            	$_SESSION['password'] = $row['password'];
            	header("Location:home.html");
		        exit();
            }
			else if(empty($result)){
                echo"incorrect username or password";
            }
		
		}
	}
	
}
    

?>