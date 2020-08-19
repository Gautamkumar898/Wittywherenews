<?php 
defined('BASEPATH') or exit('No direct script access allowed');
require APPPATH .'libraries/REST_Controller.php';
class ApiComment extends REST_Controller{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('api/Comment_model');
		$this->load->helper('security');

	}
                       //POST COMMENT
             public function index_post()
             {
             	$this->form_validation->set_rules('comment', 'comment', 'required');
                   if ($this->form_validation->run()){
                $data=array(
                   'com_type'=> "1",
                   'news_id'=>$this->input->post('news_id'),
                   'comments'=>$this->input->post('comment'),
                   'com_user_id'=>'22',
                   'com_date_time'=>date("Y-m-d H:i:s"),
                   'com_status'=>'0'
                );
            }

             else{
              	    $message=[
				  	"status"=>False,
					"Message"=>'Data Not Allowed',
					"data"=>$data
					];
                   $this->response($message, 405);
              }  

                        if($this->security->xss_clean($data)){
                          $res=$this->Comment_model->Insert_Comment($data);
                           }

                   if($res==true)
                   {
                      $message=[
					"status"=>true,
					"Message"=>'Success',
					"data"=>$data
					];
                   $this->response($message, REST_Controller::HTTP_OK);
                   }
                   else{
                   	 $message=[
					"status"=>False,
					"Message"=>'Insert Failed ',
					"data"=>$data
					];
                   $this->response($message,REST_Controller::HTTP_NOT_FOUND);

                   }
             
             }


                
             //GET COMMENT 

             public function  recomment_post()
             {
                   $this->form_validation->set_rules('comments', 'comment', 'required');
                   if ($this->form_validation->run()){
                $data=array(
                	
                   'com_type'=> "2",
                   'com_replay_id'=> $this->input->post('com_replay_id'),
                   'news_id'=>$this->input->post('news_id'),
                   'comments'=>$this->input->post('comments'),
                   'com_user_id'=>'22',
                   'com_date_time'=>date("Y-m-d H:i:s"),
                   'com_status'=>'0'
                );
            }

             else{
              	    $message=[
				  	"status"=>False,
					"Message"=>'Data Not Allowed',
					"data"=>$data
					];
                   $this->response($message, 405);
              }  

                   $res=$this->Comment_model->Re_Comment($data);

                   if($res==true)
                   {
                      $message=[
					"status"=>true,
					"Message"=>'Success',
					"data"=>$data
					];
                   $this->response($message, REST_Controller::HTTP_OK);
                   }
                   else{
                   	 $message=[
					"status"=>False,
					"Message"=>'Insert Failed ',
					"data"=>$data
					];
                   $this->response($message,REST_Controller::HTTP_NOT_FOUND);

                   }	
             }
     
           public function  index_get()
           {
                $result=$this->Comment_model->getComment();
                if(count($result)>0)
                {
					$message=[
					"status"=>True,
					"Message"=>'Success',
					"data"=>$result
					];
                      $this->response($message, REST_Controller::HTTP_OK);
	             }
				else{
				$message=[
				'status'=>False,
				'Message'=>"No Data",
				"data"=>$result
				];
				$this->response($message,REST_Controller::HTTP_NOT_FOUND);
				}
           }




}