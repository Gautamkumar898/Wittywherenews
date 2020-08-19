<?php defined('BASEPATH') or exit('No direct script access allowed');

class Video_upload extends CI_Controller {

#---------------------------------
    # Constructor Function
    public function __construct() {
        parent::__construct();
        $this->load->library('session');
        #----------------------------------------
 
        $session_id = $this->session->userdata('session_id'); 
        if($session_id == NULL ) {
         redirect('admin/Sign_out');
        }
        $user_type = $this->session->userdata('user_type'); 

        if(($user_type!=3) AND ($user_type!=4) AND ($user_type!=2) AND ($user_type!=1)) {
         redirect('admin/Sign_out');
        }
        #----------------------------------------
        $this->load->model('admin/Common_function', 'photo');
        $this->load->helper('form');
    }
  /*  https://youtu.be/QTaQ2fssNqs*/
#---------------------------------
    # View to upload photo
    public function index() {
        $this->load->view('admin/header');
        $this->load->view('admin/menu');
        $this->load->view('admin/view_add_video');
        $this->load->view('admin/footer');
    }



//Create Slug in codeignator
   
#-----------------------------------
    # to upload image
#-----------------------------------   
    public function upload_video() {
      
         $video_name = $this->input->post('video_name');

         $video_url = $this->input->post('video_url');

        $url_slug= str_replace(' ','-',$video_name);

        $data = array(
            'video_name' =>$video_name,
            'video_url' =>$video_url,
            'video_slug' =>$url_slug,
            'post_by' =>$this->session->userdata('user_type'),
            'post_date'=>date('Y:m:d h:s:i'),
            'status' => 0
        );
       
        if ($data){
            $this->db->insert('video_url', $data);
        }
        else{
         redirect("admin/Video_upload");    
        }
        
        $this->session->set_flashdata('message',"Uploaded Successfull");
        redirect("admin/Video_upload");
    }

#-----------------------------------------
#  Viewing window to select image from image librarys
#-----------------------------------------
    public function MyWindow() {
        $this->db->select('*');
        $this->db->from('video_url');
        $this->db->where('url_id', $this->uri->segment(4));
        $query = $this->db->get();
        $row = $query->row_array();
        $this->load->view('admin/header');
        $this->load->view('admin/includes/update_video', $row);
        $this->load->view('admin/footer');
    }

#------------------------------------------
#      To edit individual Photo
#------------------------------------------
    public function edit() {
        $id = $this->input->post('id');
        $data_arr = array(
            'video_name' => $this->input->post('video_name'),
            'video_url' => $this->input->post('video_url'),
            'update_by'=>$this->session->userdata('user_type')
        );
        $this->db->where('url_id', $id);
        $this->db->update('video_url', $data_arr);
        $this->load->view('admin/includes/close');
    }
    

#----------------------------------------
    # To edit status of Photo
#----------------------------------------    
    public function status_edit() {
        $id = $this->uri->segment(4);
        $status = ($this->uri->segment(5) == 1) ? 0 : 1;
        $data_arr = array('status' => $status);
        $this->db->where('url_id', $id);
        $this->db->update('video_url', $data_arr);
        redirect("admin/Video_list");
    }

#----------------------------------------
     #To delete individual Photo
#----------------------------------------
    public function delete() {
        $id = $this->uri->segment(4);
       
              $this->db->where('url_id', $id);
          $this->db->delete('video_url');
       
        $this->session->set_flashdata('message',"Date Deleted Successfull");
        redirect("admin/Video_list");
    }

}
