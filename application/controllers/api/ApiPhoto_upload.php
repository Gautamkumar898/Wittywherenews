<?php 
defined('BASEPATH') or exit('No direct script access allowed');
require APPPATH .'libraries/REST_Controller.php';
class ApiPhoto_upload extends REST_Controller{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('api/ApiPhoto_upload_model');
		$this->load->helper('text');
        $this->load->model('admin/Common_function', 'post');
         $this->load->library('form_validation');
		$this->load->helper('security');
	}

          public function index_post()
          {
          	$this->form_validation->set_rules('picture_name','Picture Name','required');	
          /*	$this->form_validation->set_rules('actual_image_name','Photo','required');*/
            if($this->form_validation->run()!==FALSE){
           $this->load->library('upload');
            $sizes = array(200 => 135, 600 => 400);
            $pst_imge = $_FILES['actual_image_name']['name'];//image Name;
            $image_chk = explode(".",$pst_imge);
            $extent = end($image_chk);//Last   value

        if($extent=="jpg" || $extent=="png" || $extent=="jpeg" || $extent=="gif"){
            $file_location = $this->post->do_upload($_FILES['actual_image_name'], $sizes);
         // print_r($file_location) ;
            $image = explode('/', $file_location[0]);
          /* print_r($image);
            echo "Success";
            die;*/
        } else{
            $message=[
                    'status'=>False,
                    'message'=>"File Not Uploaded ,Try Aganin",
                    'data'=>$data
            ];
            $this->response($message,REST_Controller::HTTP_NOT_FOUND);
        }
     
      $data = array(
            'actual_image_name' =>end($image),
            'picture_name' => $this->input->post('picture_name'),
            'title' => $this->input->post('title'),
            'category' => $this->input->post('category'),
            'time_stamp' =>date("Y-m-d H:i:s"),
            'status' =>'0'
               );
              if($this->security->xss_clean($data)){
		       $res=$this->ApiPhoto_upload_model->Insert_Photo_upload($data);
              }
             if($res){
             	   $message=[
                    'status'=>true,
                    'message'=>"Insert Success",
                    'data'=>$data
            ];
            $this->response($message,REST_Controller::HTTP_OK);
             }
             else{
             	  $message=[
                    'status'=>false,
                    'message'=>"Insert Failed",
                    'data'=>$data
            ];
              $this->response($message,REST_Controller::HTTP_NOT_FOUND);
             }
         }
         else{
              $message=[
                    'status'=>false,
                    'message'=>"Field are Empty",
                  
            ];
             $this->response($message,REST_Controller::HTTP_NOT_FOUND);
         }
          

          }
	   public function index_get()
	   {
	   	$res=$this->ApiPhoto_upload_model->getPhoto_upload();
	   	if($res){
           $message=[
                 'status'=>true,
                 'message'=>" Success",
                 'data'=>$res
             	];
             	$this->response($message,REST_Controller::HTTP_OK);
	    	}
	    	else{
	    		$message=[
                 'status'=>false,
                 'message'=>" Success",
                 'data'=>$res
             	];
             	$this->response($message,REST_Controller::HTTP_NOT_FOUND);
	    	}

	   }
          
        public function index_delete($id){
             $delete= $this->ApiPhoto_upload_model->delete_Photo_upload($id);
             if($delete==true){
             	$message=[
                 'status'=>true,
                 'message'=>"Delete Success"
             	];
             	$this->response($message,REST_Controller::HTTP_OK);
             }
             else{
             	$message=[
                 'status'=>false,
                 'message'=>"Delete failed"
             	];
             	$this->response($message,REST_Controller::HTTP_NOT_FOUND);
             }
        	
        }
	
}

