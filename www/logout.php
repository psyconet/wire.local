<?php
	include('db.php');

	session_start();
	$update_query = "UPDATE tb_register SET _active = 'no' WHERE _name = '$username'";
	mysqli_query($conn, $update_query);
	mysqli_close($conn);

	if(session_destroy()){
		header('Location: index.php');
	}
?>
