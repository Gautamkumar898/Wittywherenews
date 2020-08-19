<?php 
class ApiVideo_url_model extends CI_Model{


/*https://github.com/johandoornenbal/keycloak-examples*/
	public function __construct()
	{
      parent::__construct();

	}
	public function  getVideo_url()
	{
	return 	$this->db->get("video_url")->result();
	}

	public function Insert_video_url($data)
	{
	   return $this->db->insert("video_url",$data);
	}
	public function delete_video_url($id)
	{
		 $this->db->where('url_id',$id);
        $res= $this->db->delete('video_url');
        if($res)
        {
         return true;	
        }
        else{
        	 return false;
        }

       
	}
	

}

?>
