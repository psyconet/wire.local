<?php
	include('session.php');
?>
<html>
<head>
<title>Welcome To Wire | Cloud Services</title>
</head>
<body>
<center>
<h1>Welcome To Wire | Cloud Services</h1>
<h2>Hello <?php $_SESSION['login_user']; ?>.</h2>
<h3><a href="logout.php">Sign Out</a></h3>
</center>
</body>
</html>
