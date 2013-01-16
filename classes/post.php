<?php
// require_once('conn/connect.php');
require_once('classes/class.database.php');
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
		$this->conn = new Database();
		// global $conn;
		// $this->conn = $conn;
		if($post_id === null or trim($post_id) == ''){ }
		else{
			$row = $this->conn->get_where($this->tablename,
				array('post_id'=>$post_id))->row();
			$this->post_id = $row->post_id;
			$this->title = $row->title;
			$this->content = $row->content;
			$this->user_id = $row->user_id;
			$this->date_added = date('Y-m-d', strtotime($row->date_added));
			
			// $sql = 'select post_id,title,content,user_id, date_added from '.$this->tablename.' where post_id='.$post_id;
			// $result = mysql_query($sql,$this->conn);
			// if( mysql_num_rows($result) > 0)
			// {
				// $row = mysql_fetch_object($result);
				// $this->post_id = $row->post_id;
				// $this->title = $row->title;
				// $this->content = $row->content;
				// $this->user_id = $row->user_id;
				// $this->date_added = date('Y-m-d', strtotime($row->date_added));
			// }
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
		
		// $sql = null;
		if($this->post_id === null)
		{
			$this->conn->insert($this->tablename,
				array('title'=>$this->title,
				'content'=>$this->content,
				'user_id'=>$this->user_id));
			// $sql = "insert into {$this->tablename}(title,content,user_id)";
			// $sql .= "values('{$this->title}','{$this->content}','{$this->user_id}')";
		}
		else
		{
			$this->conn->update($this->tablename,
				array('title'=>$this->title,
			'content'=>$this->content,
			'user_id'=>$this->user_id),
				array('post_id'=>$this->post_id));
			// $sql = 'UPDATE ' . $this->tablename;
			// $sql .= " SET title='{$this->title}',";
			// $sql .= " content='{$this->content}',";
			// $sql .= " user_id='{$this->user_id}',";
			// $sql .= " date_added=CURRENT_TIMESTAMP";
			// $sql .= " where post_id='{$this->post_id}'";
		}
		// mysql_query($sql,$this->conn);
	}
		
	public static function get_list_desc()
	{
		return Post::get_list('desc');
	}
	
	public static function get_list($order = 'asc')
	{
		$db = new Database();
		// global $conn;
		// $return = array();
		$sql = 'select * from posts order by post_id '.$order.'';
		return $db->query($sql)->result();
		// $result = mysql_query($sql,$conn);
		// while($row = mysql_fetch_object($result))
		// {
			// $return[] = new Post($row->post_id);
		// }
		// return $return;
	}
	
	public function delete()
	{
		// global $conn;
		if($this->post_id != null)
		{
			$sql = 'delete from posts where post_id = ' . $this->post_id;
			$this->conn->query($sql);
			// $result = mysql_query($sql,$conn);
		}
	}
}

class PostException extends Exception
{
	// public function __construct(){ parent::__construct(); }
	public function __construct($message){ parent::__construct($message); }
}