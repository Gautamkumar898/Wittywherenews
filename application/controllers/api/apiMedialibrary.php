<?php 
defined('BASEPATH') or exit('No direct script access allowed');
require APPPATH .'libraries/REST_Controller.php';
class apiMedialibrary extends REST_Controller{

	public function __construct()
	{
		parent::__construct();
		
		$this->load->helper('security');
	}

     public function  index_post()
     {


     }
     public function index_get(){

     }
     public function index_put()
     {

     }
     public function index_delete($id)
     {

     }
}

