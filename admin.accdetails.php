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

if( isset($_POST['btnSave']) )
{
	try{
		$user = new Authenticate($_POST['txtID']);
		$user->scope = $_POST['scope'];
		$user->save();
		unset($user);
	}catch(AuthenticateException $exAuth){
		$validation = $exAuth->getMessage();
	}
}
else{
	if( !isset($_GET['id']) || trim($_GET['id']) == '' )
	{
		header('location:admin.php');
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
			<?php $user = new Authenticate($_GET['id']); ?>
			<form method="post" action="admin.accdetails.php?id=<?php echo $user->user_id;?>">
			<?php if($validation != null){?><p style="color:red;"><?php echo $validation;?></p><? }?>
			<input type="hidden" name="txtID" value="<?php echo $user->user_id; ?>" />
			<p><a href="admin.accounts.php">Back to Accounts</a></p>
			<p>UserID : <?php echo $user->user_id;?></p>
			<p>Scope : 
				<select name="scope">
					<option <?php echo $user->scope != 'admin' ? 'selected' : '';?>>user</option>
					<option <?php echo $user->scope == 'admin' ? 'selected' : '';?>>admin</option>
				</select>
			</p>
			<p><input type="submit" name="btnSave" value="Save"/></p>
			</form>
		</div>
	</body>
</html>