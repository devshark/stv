<?php
// require_once('conn/connect.php');
require_once('classes/class.database.php');
class Authenticate
{
	public $is_admin = false;
	public $user_id = null;
	public $password = null;
	public $scope = null;
	
	protected $conn;
	
	public function __construct($user_id = null)
	{
		$this->conn = new Database();
		if($user_id != null)
		{
			$row = $this->conn->get_where('users',
				array('userid'=>$user_id))->row();		
			$this->user_id = $row->userid;
			$this->password = $row->password;
			$this->scope = $row->scope;
			$this->is_admin = ($row->scope == 'admin' ? true : false);
		}
		return $this;
	}
	
	public function sanitize()
	{
		$this->user_id = $this->conn->escape($this->user_id);
		$this->password = $this->conn->escape($this->password);
		$this->scope = $this->conn->escape($this->scope);
	}
	
	public function save()
	{
		// escape the data before inserting
		$this->sanitize();
		
		// validation
		if(trim($this->user_id) == '' ){throw new AuthenticateException('User ID is required.');}
		if( strlen(trim($this->password)) < 8 ){throw new AuthenticateException('Password should be more than 8 characters long.');}
		
		// if userid is null, it is a new record, so insert.
		if($this->user_id != null)
		{
			$result = $this->conn->get_where('users',
				array('userid'=>$this->user_id));
			if($result->num_rows()>0)
			{
				throw new AuthenticateException('User ID already exist!');
			}
			else
			{
				$this->conn->insert('users',
					array('userid'=>$this->user_id,
					'password'=>$this->password,
					'scope'=>$this->scope));
			}
		}
		// else, update.
		else
		{
			$this->conn->update('users',
				array('password'=>$this->password,
				'scope'=>$this->scope),
				array('userid'=>$this->user_id));
		}
	}
	
	public static function get_list($order = 'asc')
	{
		$db = new Database();
		return $db->get('users')->result();
	}
	
	public static function isValid($userid,$password)
	{
		// global $conn;
		// $userid = trim($userid);
		// $password = trim($password);
		// $userid = mysql_real_escape_string($userid);
		// $password = mysql_real_escape_string($password);
		// $sql = "select count(*) as valid from users where userid='{$userid}' and password='{$password}'";
		try{
			$db = new Database();
			return $db->get_where('users',
				array('userid'=>$userid,
				'password'=>$password))->num_rows() == 1;
			// $result = mysql_query($sql,$conn);
			// $result = mysql_fetch_object($result);
			// return ($result->valid == 0) ? false : true;
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