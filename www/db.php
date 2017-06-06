<?php
	$db_host = 'localhost';
	$db_name = 'mydb';
	$db_user = 'root';
	$db_pass = 'cbitss';
	$conn = mysqli_connect($db_host, $db_user, $db_pass, $db_name);
	if(! $conn ) die('Could not connect to Server');
?>
