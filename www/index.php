<html>
<head>
<title>Wire | Web Hosting Services</title>
<style>h1,p{color:white;} p{font-size:110%} input{padding:4 15; margin: 0 0;} body{background:url('bg.jpg') no-repeat; background-size:cover;} .error{color:red}</style>
</head>
<body>
<center>
<?php
$lerror=$rerror="";
echo '<h1>Welcome to Wire</h1>';
echo '<p>We are the leading web hosting service provider</p>';
echo '<p>Join Us Now</p>';
?>
<form name="register" action="register.php" method="post">
	<table>
		<tr><th>
			<input type="text" placeholder="Username" name="username"><br />
		</th></tr><tr><th>
			<input type="text" placeholder="Email" name="email"><br />
		</th></tr><tr><th>
			<input type="password" placeholder="Password" name="password"><br />
		</th></tr><tr><th>
			<input type="password" placeholder="Confirm Password" name="cpassword"><br />
		</th></tr><tr><th>
			<input type="submit" id="submit" name="submit" value="Create User">
		</th></tr>
	</table>
	<p name="error" class="error"><?php echo $rerror; ?></p>
</form>
<p style="color: grey">Or Login Here</p>
<form name="login" action="login.php" method="post">
<table>
	<tr><th>
		<input type="text" placeholder="Username" name="username"><br />
	</th></tr><tr><th>
		<input type="password" placeholder="Password" name="password"><br />
	</th></tr><tr><th>
		<input type="submit" id="submit" name="submit" value="Login">
	</th></tr>
</table>
<p name="error" class="error"><?php echo $lerror; ?></p>
</form>
</center>
</body>
</html>
