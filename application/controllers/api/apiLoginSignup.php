<?php 
defined('BASEPATH') or exit('No direct script access allowed');
require APPPATH .'libraries/REST_Controller.php';
class apiLoginSignup extends REST_Controller{

	public function __construct()
	{
		parent::__construct();
		$this->load->helper('security');
	}
          

            // Register Users

	  public function  index_post()
	  {
	   $this->form_validation->set_rules('username', 'Name', 'required');
	   $this->form_validation->set_rules('useremail', 'Email Id', 'required');
	   $this->form_validation->set_rules('password', 'Password', 'required');

	   if ($this->form_validation->run() == True) {
        $data=array(
         ''
        );
	   }
	   else{
	   	$message=[
         'stauts'=>false,
         'message'=>"Registration Failed",
         'data'=>$data
	   	]
	   	$this->response($message,REST_Controller::HTTP_NOT_FOUND);
	   }
	   $res=$this->apiRegister_model->Createnewuser();

	  }

} 

