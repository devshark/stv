<?php
ini_set('display_errors','On');
error_reporting(E_ALL);
session_start();
$validation = null;
if( !isset($_SESSION['user_id']) || $_SESSION['user_id'] == null )
{
	include_once('admin.login.php');
	die();
}
require_once('classes/application.php');
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>STV ADMIN | RECENT APPLICANTS LIST</title>
	</head>
	<body>
		<p><a href="admin.php">Back to Homepage</a></p>
		<table border=1 cellspacing=0 cellpadding=2>
		<thead>
			<tr>
				<th>Lastname</th>
				<th>Firstname</th>
				<th>Middlename</th>
			</tr>
		</thead>
		<tbody>
		<?php
		$result = Application::get_today_list();
		if($result->num_rows() > 0)
		{
		foreach($result->result() as $app){
		?>
			<tr>
				<td><?php echo $app->lastname;?></td>
				<td><?php echo $app->firstname;?></td>
				<td><?php echo $app->middlename;?></td>
			</tr>
		<?php }
		}else{ ?>
			<tr><td colspan=3 align="center">No DATA</td></tr>
		<?php } ?>
		</tbody>
		</table>
	</body>
</html>