<?php 
class ApiPhoto_upload_model extends CI_Model{

	public function __construct()
	{
      parent::__construct();

	}

	public function getPhoto_upload()
	{
		return $this->db->get("photo_library")->result();
	}

	public function Insert_Photo_upload($data)
	{
          $this->db->insert("photo_library",$data);
          return true;
	}

	public function  delete_Photo_upload($id)
	{
		$this->db->where("id",$id);
		$delete=$this->db->delete("photo_library");
		if($delete){
			return true;
		}
		else{
			return false;
		}
	}

}