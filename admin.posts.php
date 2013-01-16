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
		<title>STV ADMIN | MANAGE POSTS</title>
	</head>
	<body>
		<?php require_once('classes/post.php');?>
		<table border=1 cellspacing=0 cellpadding=2>
		<thead>
			<tr>
				<th>Title</th>
				<th>Contents</th>
				<th>Posted by</th>
				<th>Date posted</th>
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
				<td><?php echo $post->user_id;?></td>
				<td><?php echo $post->date_added;?></td>
			</tr>
		<?php } ?>
		</tbody>
	</body>
</html>