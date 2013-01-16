<?php
require_once('classes/post.php');
require_once('classes/authenticate.php');

try
{
	if( ! Authenticate::isValid($_POST['txtID'],$_POST['txtPass']))
	{
		echo 'Authentication failed. You are not allowed to post.';
		return;
	}
	$post = new Post();
	$post->title = $_POST['txtTitle'];
	$post->content = $_POST['txtContent'];
	$post->user_id = $_POST['txtID'];
	$post->save();
	header('location:posting.php');
}
catch(PostException $e)
{
	echo $e->getMessage();
}
catch(AuthenticateException $e)
{
	echo $e->getMessage();
}
?>