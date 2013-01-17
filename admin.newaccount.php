<?php 
session_start();
$validation = null;
if( !isset($_SESSION['user_id']) || $_SESSION['user_id'] == null )
{
	include_once('admin.login.php');
	die();
}
require_once('classes/authenticate.php');

$admin = new Authenticate($_SESSION['user_id']);
if( ! $admin->is_admin)
{
	header('location:admin.php');
}

if(isset($_POST['btnSave']))
{
	try{
		if($_POST['txtPW'] != $_POST['txtPW2'])
		{
			throw new AuthenticateException('Passwords do not match!');
		}
		$user = new Authenticate($_POST['txtID']);
		if($user->user_id != null){ $user->new = true; }
		$user->user_id = $_POST['txtID'];
		$user->password = $_POST['txtPW'];
		$user->scope = $_POST['scope'];
		print $user->new;
		$user->save();
		//header('location:admin.accounts.php');
	}
	catch(AuthenticateException $exAuth){
		$validation = $exAuth->getMessage();
	}
}

?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>STV ADMIN | MANAGE ACCOUNT</title>
	</head>
	<body>
		<div id="body">
			<form method="post" action="admin.newaccount.php">
			<?php if($validation != null){?><p style="color:red;"><?php echo $validation;?></p><? }?>
			<input type="hidden" name="txtID" value="<?php echo $user->user_id; ?>" />
			<p><a href="admin.accounts.php">Back to Accounts</a></p>
			<p>UserID : <input type="text" name="txtID" value="" /></p>
			<p>Password : <input type="password" name="txtPW" value="" /></p>
			<p>Repeat Password : <input type="password" name="txtPW2" value="" /></p>
			<p>Scope : 
				<select name="scope">
					<option>user</option>
					<option>admin</option>
				</select>
			</p>
			<p><input type="submit" name="btnSave" value="Save"/></p>
			</form>
		</div>
	</body>
</html>