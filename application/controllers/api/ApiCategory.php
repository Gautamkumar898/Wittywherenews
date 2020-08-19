<?php 
defined('BASEPATH') or exit('No direct script access allowed');
require APPPATH .'libraries/REST_Controller.php';
class ApiCategory extends REST_Controller{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('api/User_model');
		$this->load->model('api/ApiCategory_model');
		$this->load->helper('security');
	}




	public function index_post()
    {
		'category_imgae';
            $data=array(
				'category_name'=>$this->input->post('category_name'),
				'slug'=>$this->input->post('slug'),
				'menu'=>1,
				'positon'=>1,
				'img_status'=>0,

			);
			if($data==Null){
                       echo "No Data Save ";
			}
			elseif($data){
           $message=[
			   'status'=>1,
			   'message'=>"Posted successfully",
			   'data'=>$data
		   ];
     
		$this->response($message, REST_Controller::HTTP_OK);
			}
			else{
				$message=[
					'status'=>1,
					'message'=>"Error ",
					'data'=>$data
				];
		  
			 $this->response($message, REST_Controller::HTTP_NOT_FOUND);

			}
    }
	            
	public function index_get($id="")
	{
		if(!empty($id))
		{

		}
		else{
	   $result= $this->ApiCategory_model->getCategory();
	   if(count($result)>0)
	   {
		   $message=[
			"status"=>1,
			"Message"=>'Ok I Am Fine ',
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
	}



				    
	 public function index_put()
	 {
		 echo "Put Working";
		 $message=[
			 'status'=>true,
			 'message'=>"Put is Working Properly",
		 ];
		 $this->response($message,REST_Controller::HTTP_OK);
	 }

	 public function index_delete($id){


		echo $id;
		 echo "Working Fine ";
	 } 

		

	

}
