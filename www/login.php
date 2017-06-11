<center>
<?php
	include('db.php');
	//session_start();
			 
	$username=$_POST['username'];
	$password=$_POST['password'];
	if(! $username || ! $password ){
		$lerror = 'One or more fields empty.';
		header('Location: index.php');
	}else{
		$query = "SELECT _id FROM tb_register WHERE _name = '$username' AND _password = '$password'";
		$result_array = mysqli_query($conn, $query);
		$row = mysqli_fetch_array($result_array, MYSQLI_ASSOC);
		$active = $row['_active'];

		$count = mysqli_num_rows($result_array);

		if(! $count ){
			$lerror = 'Username/Password Incorrect.';	
			header('Location: index.php');
		}		
		else{
			//session_register("username");
			//$update_query = "UPDATE tb_register SET _active = 'yes' WHERE _name = '$username'";
			//mysqli_query($conn, $update_query);
			//$_SESSION['login_user'] = $username;
			
			header('Location: http://www.'.$username.'.local');		
		}
	}	
	mysqli_close($conn);
?>
</center>
