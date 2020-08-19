<?php 
 $user_id = $this->session->userdata('id');
$this->load->view('admin/view_left_menu');
?>
<aside class="right-side">
    <section class="content col-sm-12">
        <div class="col-sm-5">
            <div class="page_heading"><i class="glyphicon glyphicon-cog"></i>&nbsp;Video Url   

  <a href="<?php echo base_url()?>admin/Video_list"><button> Video List</button></a>     </div>
            <?php
            if ($this->session->flashdata('message')) {
                echo '<div class="alert alert-success"><button class="close" data-dismiss="alert">&times;</button><b>';
                echo $this->session->flashdata('message');
                echo '</b></div>';
            }
            ?>
 
            <?php 
             $attributes = array('class' => 'form-inline');
             echo form_open_multipart('admin/Video_upload/upload_video', $attributes);
        ?>
                   <div class="form-group">
                    <label>Video Name</label>
                    <input type="text" name="video_name"   class="form-control"  required="1">
                     
                </div>  
                <div class="form-group">
                    <label>Video Url </label>
                    <textarea name="video_url" class="form-control" rows="6" required="1">
                    </textarea>
                      
                
                </div>   
                <br><br>                   
                <div class="form-group">
                    <label></label>
                    <input type="submit" name="save" value="Save" class="btn btn-primary">
                </div>

                   <br/>
        <?php echo form_close();?>
        </div>
    </section>
</aside>