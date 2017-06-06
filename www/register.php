<center>
<?php
	include('db.php');			 
	$username=$_POST['username'];
	$email=$_POST['email'];
	$password=$_POST['password'];
	if(! $username || ! $email || ! $password ){
		$rerror = 'One or more fields empty.';
		header('Location: index.php');
	}else{
		//inserting new record
		$query = 'INSERT INTO tb_register (_name, _email, _password) VALUES ("'.$username.'", "'.$email.'", "'.$password.'")';	
		$result = mysqli_query($conn, $query);
		if( $result ){
			//creating new user in the base system
			if(isset($username)){
				echo "<br /><b>";	
				system("./uadd $username $password &> /dev/null; 
					echo 'Your FTP Home Directory : '; 
					tail /etc/passwd | grep $username | awk -F: '{ print $6 }'");
				echo "<br /> username : $username<br />password : $password<br />";					
				echo "<br /><a href='index.php'>Login</a></b>";
			} else {
				$rerror = 'Username field is required.';
			}
		} else {
			$rerror = 'Username Already Exist.';
		}	
	}	
	mysqli_close($conn);
?>
</center>
