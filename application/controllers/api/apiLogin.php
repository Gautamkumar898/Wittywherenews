<?php 
defined('BASEPATH') or exit('No direct script access allowed');
require APPPATH .'libraries/REST_Controller.php';
class apiLogin extends CI_Controller{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('api/User_model');
		$this->load->helper('security');
	}

	public function Test()
	{
		//Authorization: Bearer<eyJ1bmlxdWVJZCI6IjExIiwic3ViIjoiZ2F1dGFtQGdtYWlsLmNvbSIsInJvbGUiOiJhbGFtZ2lyIiwidGltZVN0YW1wIjoiMjAyMC0wOC0xMyAwMzozMzo1MyJ9>
		echo json_encode("Hello") ;
	}

}
