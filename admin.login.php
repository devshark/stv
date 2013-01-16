<?php
if( ! isset($_SESSION) )
	session_start();
require_once('classes/authenticate.php');
$validation = null;
if(isset($_POST['btnLogin']))
{
	$auth = Authenticate::isValid($_POST['txtID'], $_POST['txtPW']);
	if($auth)
	{
		$_SESSION['user_id'] = $_POST['txtID'];
		header('location:admin.php');
	}else{
		$validation = 'Username and password does not match!';
		unset($_SESSION['user_id']);
	}
}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>STV ADMIN | LOGIN</title>
		<style>
		fieldset#login{
			width:300px;
			margin:auto;
		}
		</style>
	</head>
	<body>
		<div id="body">
			<fieldset id="login">
				<legend>Log-in to continue</legend>
				<form method="post" action="admin.login.php">
					<?php 
					if($validation != null){
						echo '<p style="color:red;">' . $validation . '</p>';
					}
					?>
					<p>User ID : <input type="text" name="txtID" value="" /></p>
					<p>Password : <input type="password" name="txtPW" value="" /></p>
					<p><input type="submit" name="btnLogin" value="Log In" /></p>
				</form>
			</fieldset>
		</div>
	</body>
</html>