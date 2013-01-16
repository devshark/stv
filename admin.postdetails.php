<?php
session_start();

if( !isset($_SESSION['user_id']) || $_SESSION['user_id'] == null )
{
	include_once('admin.login.php');
	die();
}

if( !isset($_GET['id'] ))
{
	die('<p><b>No Direct Scripting Allowed!</b></p>');
}