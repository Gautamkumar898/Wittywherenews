<?php 
defined('BASEPATH') or exit('No direct script access allowed');
require APPPATH .'libraries/REST_Controller.php';
class ApiNews extends REST_Controller{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('api/ApiNews_model');
		$this->load->helper('text');
        //$this->load->model('admin/Common_function', 'post');
         $this->load->library('form_validation');
          $this->load->model('admin/Common_function', 'npost');
		$this->load->helper('security');
	}
 
                      
				 public function get_youtube_id_from_url($url) 
				{
				    if (preg_match('%(?:youtube(?:-nocookie)?\.com/(?:[\w\-?&!#=,;]+/[\w\-?&!#=/,;]+/|(?:v|e(?:mbed)?)/|[\w\-?&!#=,;]*[?&]v=)|youtu\.be/)([\w-]{11})(?:[^\w-]|\Z)%i', $url, $match)) {
				    return $match['1']; 
				    }else{
				        return $video='';
				    }
				} 



                     //get All News  
                public function index_get()
	              { 
	              	$res=$this->ApiNews_model->getNews();
	              	if($res==true)
	              	{
	              		$message=[
                         'status'=>true,
                         'message'=>"Success",  
                         'data'=>$res  
	              		];
                       $this->response($message,REST_Controller::HTTP_OK);
	              	}
	              	else{
	              		$message=[
                         'status'=>false,
                         'message'=>"No Data Found ", 
                         'data'=>$res   
	              		];
                       $this->response($message,REST_Controller::HTTP_NOT_FOUND);


	              	}
	              }

	              //Post new 
	              public function index_post()
	              {
                       $post_keyword = trim($this->input->post('meta_keyword'));
                       $post_description = trim($this->input->post('meta_description'));
                       $this->input->post('');
                         $data = array(
							'home_page' => $this->input->post('home_page'),
							'other_page' => $this->input->post('other_page'),
							'other_position' => $this->input->post('other_position'),
							'image' => $image,
							'picture_name' => $this->input->post('picture_name'),
							'videos' => $this->get_youtube_id_from_url($this->input->post('videos')),
							'stitle' => trim($this->input->post('short_head')),
							'title' => $this->input->post('head_line'),
							'reporter' => $this->input->post('reporter'),
							'news' => $this->input->post('details_news'),
							'confirm_dynamic_static' => $this->input->post('confirm_dynamic_static'),
							'latest_confirmed' => $this->input->post('latest_confirmed'),
							'breaking_confirmed' => $this->input->post('breaking_confirmed'),
							'send_to_temp' => $this->input->post('send_to_temp'),
							'reference' => $this->input->post('reference'),
							'ref_date' => $this->input->post('ref_date'),
							'publish_date'      => ($this->input->post('publish_date')!=NULL?$this->input->post('publish_date'):$this->input->post('ref_date')),
							'post_by' => $this->session->userdata('id'),
							'status1' =>  $post_ap_status
                                      );


	              }

}
