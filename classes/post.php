<?php
require_once('conn/connect.php');
class Post{
	public $post_id = null;
	public $title = null;
	public $content = null;
	public $user_id = null;
	public $date_added = null;
	
	private $tablename = 'posts';
	protected $conn;
	
	public function __construct($post_id = null)
	{
		global $conn;
		$this->conn = $conn;
		if($post_id === null or trim($post_id) == ''){ }
		else{
			$sql = 'select post_id,title,content,user_id, date_added from '.$this->tablename.' where post_id='.$post_id;
			$result = mysql_query($sql,$this->conn);
			if( mysql_num_rows($result) > 0)
			{
				$row = mysql_fetch_object($result);
				$this->post_id = $row->post_id;
				$this->title = $row->title;
				$this->content = $row->content;
				$this->user_id = $row->user_id;
				$this->date_added = date('Y-m-d', strtotime($row->date_added));
			}
		}
		return $this;
	}
	
	public function save()
	{
		if( strlen( trim( $this->title ) ) == 0 )
			throw new PostException('Post title is required.');
		elseif( strlen( trim( $this->content ) ) == 0 )
			throw new PostException('Post content is required.');
		elseif( strlen( trim( $this->user_id ) ) == 0 )
			throw new PostException('User id is required.');
		
		$sql = null;
		if($this->post_id === null)
		{
			$sql = "insert into {$this->tablename}(title,content,user_id)";
			$sql .= "values('{$this->title}','{$this->content}','{$this->user_id}')";
		}
		else
		{
			$sql = 'UPDATE ' . $this->tablename;
			$sql .= " SET title='{$this->title}',";
			$sql .= " content='{$this->content}',";
			$sql .= " user_id='{$this->user_id}'";
			$sql .= " where post_id='{$this->post_id}'";
		}
		mysql_query($sql,$this->conn);
	}
		
	public static function get_list_desc()
	{
		global $conn;
		$return = array();
		$sql = 'select post_id from posts order by post_id desc';
		$result = mysql_query($sql,$conn);
		while($row = mysql_fetch_object($result))
		{
			$return[] = new Post($row->post_id);
		}
		return $return;
	}
	
	public function delete()
	{
		global $conn;
		if($this->post_id != null)
		{
			$sql = 'delete from posts where post_id = ' . $this->post_id;
			$result = mysql_query($sql,$conn);
		}
	}
}

class PostException extends Exception
{
	// public function __construct(){ parent::__construct(); }
	public function __construct($message){ parent::__construct($message); }
}