


<footer>
    <div class="container">
        <div class="row">
        
            <div class="col-sm-6">
                <div class="footer-box footer-logo-address"> <!-- address  -->
                    <img src="<?php echo base_url() . @$footer_logo; ?>" class="img-responsive" alt="">
                    <address>
                        <?php echo @$website_footer['website_footer']; ?>
                    </address>
                    
                    <div class="subscribe" style="background: #e80042;  width: 100px; margin: 20px;">
                    <a style="color: #fff" href="<?php echo base_url();?>Subscription/index" class="btn">Subscribe</a>
                </div>
                </div> <!-- /.address  -->
                
            </div>

            <div class="col-sm-6">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="footer-box">
                        <?php
                        if($footer_menu>0)
                         foreach (@$footer_menu as $key => $name) {}?>
                            <h3 class="category-headding"><?php echo @$name->menu_name;?></h3>
                            <div class="headding-border bg-color-4"></div>
                            <ul>
                                <li>
                                    <?php
                                    $bu = base_url();
                                        if (isset($footer_menu) && is_array($footer_menu)) {
                                            $menu = '';
                                            foreach (@$footer_menu as $key => $value) {
                                                if($value->slug!=NULL){
                                                    @$slug1 = $bu.$value->slug;
                                                }elseif ($value->link_url!=NULL) {
                                                    @$slug1 = $value->link_url;
                                                }else{
                                                    @$slug1 = $bu."#";
                                                }
                                                @$menu .= '<i class="fa fa-dot-circle-o"></i><a href="' . @$slug1 . '">' . @$value->menu_lavel . ' </a>';
                                            }

                                            echo rtrim($menu);
                                        }
                                    ?>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="footer-box">
                        <?php 
                         if($menus>0)
                        foreach (@$menus as $key => $name1) {}?>
                            <h3 class="category-headding"><?php echo @$name1->menu_name;?></h3>
                            <div class="headding-border bg-color-5"></div>
                            <ul>
                                <?php
                                       
                                if (isset($menus) && is_array($menus)) {
                                    foreach ($menus as $value) {
                                         if($value->slug!=NULL){
                                                    $slug1 = $bu.$value->slug;
                                                }elseif ($value->link_url!=NULL) {
                                                    $slug1 = $value->link_url;
                                                }else{
                                                    $slug1 = $bu."#";
                                                }
                                       echo '<li><i class="fa fa-dot-circle-o"></i><a href="' .$slug1 . '">' . $value->menu_lavel . '</a></li>';
                                    } 
                                }
                                ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            
        </div>
    </div>
</footer>

<?php
    @$social_link = json_decode('[' . $social_link . ']');

  /*  print_r(@$social_link);*/
?>
<div class="sub-footer">  <!-- sub footer -->
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <p><?php echo @$website_footer['copy_right'];?></p>
                <div class="social">
                    <ul>
                        <li><a href="<?php if (isset($social_link[0]->fb)) echo @$social_link[0]->fb; ?>" class="facebook"><i class="fa  fa-facebook"></i> </a></li>
                        <li><a href="<?php if (isset($social_link[0]->tw)) echo @$social_link[0]->tw; ?>" class="twitter"><i class="fa  fa-twitter"></i></a></li>
                        <li><a href="<?php if (isset($social_link[0]->google)) echo @$social_link[0]->google; ?>" class="google"><i class="fa  fa-google-plus"></i></a></li>
                        <li><a href="<?php if (isset($social_link[0]->flickr)) echo @$social_link[0]->flickr; ?>" class="flickr"><i class="fa fa-flickr"></i></a></li>
                        <li><a href="<?php if (isset($social_link[0]->youtube)) echo @$social_link[0]->youtube; ?>" class="youtube"><i class="fa fa-youtube"></i></a></li>
                        <li><a href="<?php if (isset($social_link[0]->vimo)) echo @$social_link[0]->vimo; ?>" class="vimeo"><i class="fa fa-vimeo"></i></a></li>
                        <li><a href="<?php if (isset($social_link[0]->vk)) echo @$social_link[0]->vk; ?>" class="vk"><i class="fa fa-vk"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div> 


<!-- Include all compiled plugins (below), or include individual files as needed -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/web-assets/js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/web-assets/js/metisMenu.min.js"></script>
<!-- toster -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/web-assets/toster/toastr.min.js"></script>
<!-- Scrollbar js -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/web-assets/js/jquery.mCustomScrollbar.concat.min.js" ></script>
<!-- animate js -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/web-assets/js/wow.min.js"></script>
<!-- Newstricker js -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/web-assets/js/jquery.newsTicker.js"></script>
<!--  classify JavaScript -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/web-assets/js/classie.js"></script>
<!-- owl carousel js --> 
<script type="text/javascript" src="<?php echo base_url(); ?>assets/web-assets/owl-carousel/owl.carousel.js"></script>
<!-- youtube js -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/web-assets/js/RYPP.js"></script>
<!-- jquery ui js --> 
<script type="text/javascript" src="<?php echo base_url(); ?>assets/web-assets/js/jquery-ui.js"></script>
<!-- form -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/web-assets/js/form-classie.js"></script>
<!-- custom js --> 
<script type="text/javascript" src="<?php echo base_url(); ?>assets/web-assets/js/custom.js"></script>

<script type="text/javascript">
    $(function () {
        $("#archive").datepicker({
            autoOpen: true,
            changeMonth: true,
            changeYear: true,
            dateFormat: "yy-mm-dd",
            onSelect: function (dateText, inst) {
                window.location = '<?php echo base_url(); ?>' + 'archive/' + dateText, '_parent';
            }
        });
    });
    $(function () {
        $("#archive-date").datepicker({
            autoOpen: true,
            changeMonth: true,
            changeYear: true,
            dateFormat: "yy-mm-dd",
        });
    });
</script>

</body>
</html>