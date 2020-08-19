<?php 
class ApiCategory_model extends CI_Model{

	public function __construct()
	{
      parent::__construct();

	}
	public function  getCategory()
	{
	return 	$this->db->get("categories")->result();
	}

	public function postCategory()
	{
	  
	}
	public function deleteCategory($id)
	{
		 $this->db->where('category_id', $category_id);
        $this->db->delete('categories');

        return true;
	}
	

}

?>
