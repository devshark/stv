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
		<title>STV ADMIN | HOME</title>
	</head>
	<body>
		<div id="body">
			<h3>Select options</h3>
			<ul>
				<li><a href="admin.posts.php">Manage Posts</a></li>
				<li><a href="#">Others</a></li>
				<li><a href="admin.logout.php">Log Out</a></li>
			</ul>
		</div>
	</body>
</html>