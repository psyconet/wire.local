<?php
	include('db.php');
	session_start();
	$user_check = $_SESSION['login_user'];
	$session_query = "select _name from tb_register where _name = '$user_check'";
	$result = mysqli_query($conn, $session_query);
	$row = mysqli_fetch_array($result, MYSQLI_ASSOC);
	$login_session = $row['_name'];
	if(!isset($_SESSION['login_user'])){
		header('Location: index.php');
	}
	mysqli_close($conn);
?>
