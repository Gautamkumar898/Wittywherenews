
            <?php 
             $attributes = array('class' => 'form-inline');
             echo form_open_multipart('admin/Video_upload/edit', $attributes);
        ?>
                   <div class="form-group">
                    <label>Video Name</label>
                    <input type="hidden" name="id" value="<?=$url_id?>">
                    <input type="text" name="video_name"  value="<?php echo $video_name?>" class="form-control"  required="1">
                     
                </div>  
                <div class="form-group">
                    <label>Video Url </label>
                    <textarea name="video_url" class="form-control" rows="6" required="1">
                    	<?php echo  $video_url?>
                    </textarea>
                      
                
                </div>   
                <br><br>                   
                <div class="form-group">
                    <label></label>
                    <input type="submit" name="save" value="Update " class="btn btn-primary">
                </div>

                   <br/>
        <?php echo form_close();?>
        </div>