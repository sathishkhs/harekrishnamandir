


<section>

    <div class="container pt-0 pt-lg-200 pb-0 mt-30">
        <div class="section-content">
            <div class="row ">
            <div class="col-sm-12">
                    <div class="tm-sc-section-title section-title mb-0 mb-md-50">
                        <div class="title-wrapper mb-0 text-center">
                           
							<?php if (!empty($page_items->page_content)): ?>
								<?php echo $page_items->page_content; ?>
							<?php endif; ?>
                        </div>
                    </div>
                </div>
             
                <?php if(!empty($page_items->video_link_1) || !empty($page_items->video_link_2) || !empty($page_items->video_link_3)){ ?>              
                <div class="tm-sc-section-title section-title mb-0 mb-md-50">
                    <div class="title-wrapper mb-0 text-center">
                        <h6 class="subtitle line-shape-bottom text-theme-colored1  ">Videos</h6>

                    </div>
                </div>
                <?php } ?>
                <?php if(!empty($page_items->video_link_1)){ ?>
                <div class="col-md-4">
                    <div class="play-video-style1 pt-30 mb-60">
                        <div class="video-box mr-30">
                            <img class="w-100 img-responsive" src="<?php echo 'uploads/video_cover/' . $page_items->video_cover_img_1; ?>" alt="Image">
                            <div class="video-button-inner">
                                <div class="play-button"><span class="play-icon"><i class="fa fa-play"></i></span></div>
                                <a class="hover-link" data-lightbox-gallery="youtube-video" href="<?php echo $page_items->video_link_1; ?>" title=""></a>
                            </div>
                        </div>

                    </div>
                </div>
                <?php } ?>
                <?php if(!empty($page_items->video_link_2)){ ?>
                <div class="col-md-4">
                    <div class="play-video-style1 pt-30 mb-60">
                        <div class="video-box mr-30">
                            <img class="w-100 img-responsive" src="<?php echo 'uploads/video_cover/' . $page_items->video_cover_img_2; ?>" alt="Image">
                            <div class="video-button-inner">
                                <div class="play-button"><span class="play-icon"><i class="fa fa-play"></i></span></div>
                                <a class="hover-link" data-lightbox-gallery="youtube-video" href="<?php echo $page_items->video_link_2; ?>" title=""></a>
                            </div>
                        </div>

                    </div>
                </div>
                <?php } ?>
                <?php if(!empty($page_items->video_link_3)){ ?>
                <div class="col-md-4">
                    <div class="play-video-style1 pt-30 mb-60">
                        <div class="video-box mr-30">
                            <img class="w-100 img-responsive" src="<?php echo 'uploads/video_cover/' . $page_items->video_cover_img_3; ?>" alt="Image">
                            <div class="video-button-inner">
                                <div class="play-button"><span class="play-icon"><i class="fa fa-play"></i></span></div>
                                <a class="hover-link" data-lightbox-gallery="youtube-video" href="<?php echo $page_items->video_link_3; ?>" title=""></a>
                            </div>
                        </div>

                    </div>
                </div>
                <?php } ?>
              


            </div>
        </div>
    </div>
</section>



<script>
    $('h1,h2,h3,h4,h5,h6').attr('class','subtitle  line-shape-bottom line-shape-center text-theme-colored1');
</script>