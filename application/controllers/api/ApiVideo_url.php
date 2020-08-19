<?php 
defined('BASEPATH') or exit('No direct script access allowed');
require APPPATH .'libraries/REST_Controller.php';
class A
piVideo_url extends REST_Controller{

	public function __construct()
	{
		parent::__construct();
	   $this->load->model('api/ApiVideo_url_model');
		$this->load->helper('security');
	}


	 function generate_url_slug($string,$table,$field='video_slug',$key=NULL,$value=NULL){
        $t =& get_instance();
        $slug = url_title($string);
        $slug = strtolower($slug);
        $i = 0;
        $params = array ();
        $params[$field] = $slug;
     
        if($key)$params["$key !="] = $value; 
     
        while ($t->db->where($params)->get($table)->num_rows())
        {   
            if (!preg_match ('/-{1}[0-9]+$/', $slug ))
                $slug .= '-' . ++$i;
            else
                $slug = preg_replace ('/[0-9]+$/', ++$i, $slug );
             
            $params [$field] = $slug;
        }   
        return $slug;   
    }
	//POST New Data 

	 public function  index_post()
     {
      $this->form_validation->set_rules('video_name', 'Video Name', 'required');
	   $this->form_validation->set_rules('video_url', 'Video url', 'required');
	   $string=$this->input->post('video_name');
	   $video_slug=$this->generate_url_slug($this->input->post('video_name'),'video_url');
  /*      $video_slug= str_replace(' ','-',$string);*/
	   if ($this->form_validation->run() == True) {
        $data=array(
         'video_name'=>$this->input->post('video_name'),
            'video_slug'=>$video_slug,
            'video_url'=>$this->input->post('video_url'),
            'post_by'=>3,
            'status'=>0,
            'post_date'=>date('Y:m:d h:s:i')
                     
                     );
	   }
	   else{
	   	$message=[
         'status'=>false,
         'message'=>"Data Not Allowed",
         'data'=>$data
	   	];
	   	$this->response($message,REST_Controller::HTTP_METHOD_NOT_ALLOWED);
	   }
         if($this->security->xss_clean($data)){
	      $res=$this->ApiVideo_url_model->Insert_video_url($data);
          }

	   if($res){
	   		$message=[
         'status'=>true,
         'message'=>"Registration Success ",
         'data'=>$res
	   	];
	   	$this->response($message,REST_Controller::HTTP_OK);
	   }
	   else{
            $message=[
         'status'=>False,
         'message'=>"Registration Failed",
         'data'=>$res
	   	];
	   		$this->response($message,REST_Controller::HTTP_NOT_FOUND);
           
	   }

     }
     //Get All Url 
     public function index_get(){
           
               $result=$this->ApiVideo_url_model->getVideo_url();
	   if(count($result)>0)
	   {
		   $message=[
			"status"=>1,
			"Message"=>'Success',
			"data"=>$result
		   ];
         $this->response($message, REST_Controller::HTTP_OK);
	   }
	   else{
		$message=[
			'status'=>0,
			   'Message'=>"Data Not Found  ",
			     "data"=>$result
		   ];
		   $this->response($message,REST_Controller::HTTP_NOT_FOUND);
	   }

     }
     public function index_put()
     {

     }
     public function index_delete($id)
     {
     	
     	          $delete=$this->ApiVideo_url_model->delete_video_url($id);
          if($delete==true)
          {
          	$message=[
			'status'=>true,
			   'Message'=>"Delete Successfull",
			     "data"=>$delete
		   ];
		    $this->response($message, REST_Controller::HTTP_OK);
          }
          else{
          	$message=[
			'status'=>False,
			   'Message'=>"Delete Failed Try Again ",
			     "data"=>$delete
		   ];
		    $this->response($message, REST_Controller::HTTP_NOT_FOUND);
          }
     }

}
