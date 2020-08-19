<?php 
class Comment_model extends CI_Model{

	public function __construct()
	{
      parent::__construct();

	}
	//Get Comment
	public function  getComment()
	{
	return 	$this->db->get("comments_info")->result();
	}
       //Comment Insert
     public function Insert_Comment($data)
     {
      $this->db->insert('comments_info',$data);
      return true;
     }
                 //Re Comments
        public function Re_Comment()
        {
        	 $this->db->insert('comments_info',$data);
             return true;
        }



}

?>
