<?php
session_start();

if( !isset($_SESSION['user_id']) || $_SESSION['user_id'] == null )
{
	include_once('admin.login.php');
	die();
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
		<?php require_once('classes/post.php');?>
		<table border=1 cellspacing=0 cellpadding=2>
		<thead>
			<tr>
				<th>UserID</th>
				<th>Scope</th>
			</tr>
		</thead>
		<tbody>
			<tr>
		<?php
		foreach(Post::get_list_desc() as $post){
		?>
			<tr>
				<td><a href="admin.postdetails.php?id=<?php echo $post->post_id; ?>"><?php echo $post->title;?></a></td>
				<td><?php echo substr(strip_tags($post->content), 0, 100);?></td>
			</tr>
		<?php } ?>
		</tbody>
		</table>
		<p><a href="admin.newpost.php">Create New Post</a></p>
	</body>
</html>