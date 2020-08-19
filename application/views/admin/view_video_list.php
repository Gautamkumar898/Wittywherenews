<?php
$user_id = $this->session->userdata('id');
$user_type = $this->session->userdata('user_type');
if (($user_type == 3) || ($user_type == 4)) {
    include("view_left_menu.php");
} else if($user_type==2){
    include("user_left_menu_view.php");
}else if($user_type==1){
    include("modaretor_left_menu_view.php");
}
?>

<aside class="right-side">
    <section class="content">
        <?php
            $atts = array(
                'width' => '300',
                'height' => '150',
                'scrollbars' => 'yes',
                'status' => 'yes',
                'resizable' => 'yes',
                'screenx' => '500',
                'screeny' => '100'
            );
        ?>    
    <div class="row">                                    
        <?php
        @$attt = array('method' => 'get' );
         echo form_open('admin/Video_list',$attt);?>
          <div class="form-group">
                    <div class="col-sm-2">
                        <label><?php echo ('Video Name')?></label>
                    </div>
                    <div class="col-sm-6">
                        <input type="text" name="search" id="search" value="" class="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-2">
                        <label></label>
                        <input type="submit" value="<?php echo display('search')?>" class="btn btn-primary"/>
                    </div>
                </div>
            <?php echo form_close();?>
        </div>
        <div class="voffset2"></div>

        <table border="1" rules="all" width="99%" class="table">
            <tr class="t_bg">
                <th width="30">Sl</th>
                <th width="20"><span id="buttons"><input type="checkbox" onclick="Select('true');" /></span></th>
                     <th><?php echo 'Video Name'?></th>
                <th width="250"><?php echo "Video Url"?></th>
                <?php if ($user_type == 4) { ?> <th colspan="3"><?php echo display('action')?></th><?php } ?>
            </tr>

            <?php
            $sl = 1;
            
            foreach ($query as $row) {
                $bgcolor = ($sl % 2 == 0) ? 'EEE' : 'CCC';
                ?>
                <tr>
                    <th><?php echo $sl; ?></th>
                    <th><input type="checkbox" name="news_id[]" value="<?php echo $row['url_id']; ?>" /></th>
               
                    <td><?php echo $row['video_name']?></td>             
                            <td><iframe width="200" height="90" class="responsive-iframe"
        src="<?php echo $row["video_url"]?>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
        </iframe>
        
</td>
                    <?php if ($user_type == 4) { ?>
                        <th width="50"><?php echo anchor_popup('admin/Video_upload/MyWindow/' . $row['url_id'], '<i class="fa fa-edit fa-2x"></li>', $atts); ?></th>
                        <th width="50"><a onclick="delete_cnf('<?php echo base_url(); ?>admin/Video_upload/delete/<?php echo $row['url_id']; ?>')" href="#"><i class="fa fa-trash-o fa-2x"></li></a></th>
                        <th width="50"><a title="Note: Click On for Slider start, Off for slider stop." href="<?php echo base_url(); ?>admin/Video_upload/status_edit/<?php echo $row['url_id'] . '/' . $row['status']; ?>"><?php
                                echo ($row['status'] == 1) ? "On" : "Off";
                                ;
                                ?></a></th>
                    <?php } ?>
                </tr>
                <?php
                $sl++;
            }
            ?>
        </table>    
        <?php echo $links; ?>
    </section>

</aside>   
</div>
</div>