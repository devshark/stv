<?php

require_once('classes/class.database.php');
class Application
{
	protected $db = null;
	protected $tablename = 'application';
	
	public function __construct()
	{
		$this->db = new Database();
	}
	
	public static function get_today_list()
	{
		$db = new Database();
		return $db->get_where('application',
			array("DATE_FORMAT(updt_date, '%Y-%m-%d')"=>date('Y-m-d')));
	}
	
}