<?php
session_start();

if( !isset($_SESSION['user_id']) || $_SESSION['user_id'] == null )
{
	include_once('admin.login.php');
	die();
}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>STV ADMIN | HOME</title>
	</head>
	<body>
		<?php 
		require_once('classes/authenticate.php'); 
		$user = new Authenticate($_SESSION['user_id']);
		?>
		<div id="body">
			<h3>Select options</h3>
			<ul>
				<li><a href="admin.posts.php">Manage Posts</a></li>
				<?php if($user->is_admin){?>
				<li><a href="admin.accounts.php">Manage Accounts</a></li>
				<?php } ?>
				<li><a href="admin.logout.php">Log Out</a></li>
			</ul>
		</div>
	</body>
</html>