<?php
session_start();

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

if( isset($_POST['btnEdit']) )
{
	header('location:admin.accdetails.php?id='.$_POST['userID']);
}
elseif( isset($_POST['btnDel']) )
{
	$user = new Authenticate($_POST['userID']);
	$user->delete();
}

?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>STV ADMIN | MANAGE ACCOUNTS</title>
	</head>
	<body>
		<p><a href="admin.php">Back to Homepage</a></p>
		<table border=1 cellspacing=0 cellpadding=2>
		<thead>
			<tr>
				<th>UserID</th>
				<th>Scope</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
		<?php
		foreach(Authenticate::get_list() as $user){
		?>
			<tr>
				<td><?php echo $user->userid;?></td>
				<td><?php echo $user->scope;?></td>
				<td>
				<form method="post" action="admin.accounts.php">
					<input type="hidden" name="userID" value="<?php echo $user->userid;?>" />
					<input type="submit" name="btnEdit" value="Edit" />&nbsp;
					<input type="submit" name="btnDel" value="Delete" />
				</form>
				</td>
			</tr>
		<?php } ?>
		</tbody>
		</table>
		<p><a href="admin.newaccount.php">Create New Account</a></p>
	</body>
</html>