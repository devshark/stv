﻿<?php
require_once('conn/connect.php');
class Authenticate
{
	public static function isValid($userid,$password)
	{
		$userid = trim($userid);
		$password = trim($password);
		global $conn;
		$sql = "select count(*) as valid from users where userid='{$userid}' and password='{$password}'";
		try{
			$result = mysql_query($sql,$conn);
			$result = mysql_fetch_object($result);
			return ($result->valid == 0) ? false : true;
		}catch(Exception $e)
		{
			throw new AuthenticateException($e.getMessage());
		}
	}
}

class AuthenticateException extends Exception
{
	public function __construct($message){ parent::__construct($message); }
}