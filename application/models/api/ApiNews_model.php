<?php 


class ApiNews_model extends CI_Model{
	public function __construct()
	{
		parent::__construct();
	}
        //Get All Data 
	public function getNews()
	{
		return $this->db->get("news_mst")->result();
	}

	 public function Insert_news($data)
	 {
          
	 }
}

?>