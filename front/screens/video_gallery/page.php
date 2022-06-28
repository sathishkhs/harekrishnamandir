


<style>
    .fluid-width-video-wrapper{
        padding-top: 65%!important;;
        margin-top: 70px;
    }
</style>

<section class="inner-header divider " data-bg-img="assets/images/bg/banner-bg.png" style="background-image: url('assets/images/bg/banner-bg.png'); background-position: bottom left;">
      <div class="container  pt-40">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row"> 
            <div class="col-md-12">
              <h2 class=" text-center font-36"><?php echo $page_heading; ?></h2>
              <!-- <ol class="breadcrumb text-left mt-10 white">
                <li><a href="#">Home</a></li>
                <li><a href="#">Pages</a></li>
                <li class="active">Festivals</li>
              </ol> -->
            </div>
          </div>
        </div>
      </div>      
    </section>

  

<div class="container my-4 ">
    <div class="row">
        <div class="col-sm-12 ">

            <div class="demo-gallery">
                <div class="container">
                    <div class="row">

                    <?php  foreach($gallery_videos as $key=>$video){
                  
                      ?>
                    <div class="col-md-4">
                  
                    <!-- <div class="tm-sc-section-title section-title mb-0 mb-md-50">
                        <div class="title-wrapper mb-0">
                            <h6 class="subtitle  text-theme-colored1">&nbsp;</h6>

                        </div>
                    </div> -->
          
                    <div class="play-video-style1 pt-30 mb-60">
                        <div class="video-box mr-30">
                            <img class="w-100 img-responsive" src="<?php echo GALLERY_VIDEO_UPLOAD_PATH.$video->video_cover_path; ?>" alt="Image">
                            <div class="video-button-inner">
                                <div class="play-button"><span class="play-icon"><i class="fa fa-play"></i></span></div>
                                <a class="hover-link" data-lightbox-gallery="youtube-video" href="<?php echo (!empty($video->gallery_video_path)) ? base_url().GALLERY_VIDEO_UPLOAD_PATH.$video->gallery_video_path : $video->video_link; ?>" title=""></a>
                            </div>
                        </div>

                    </div>
                   
                </div>
                <?php } ?>





                        <!-- <?php  foreach($gallery_videos as $key=>$video){?>
                        <div class="col-sm-3">
                            <?php if(!empty(!empty($video->gallery_video_path))){ ?>
                                <video width="100%" height="240px" poster="<?php echo GALLERY_VIDEO_UPLOAD_PATH.$video->video_cover_path; ?>" controls>
                                <source src="<?php echo (!empty($video->gallery_video_path)) ? base_url().GALLERY_VIDEO_UPLOAD_PATH.$video->gallery_video_path : $video->video_link; ?>" data-poster="<?php echo GALLERY_VIDEO_UPLOAD_PATH.$video->video_cover_path; ?>" type="video/mp4">
                              
                                Your browser does not support the video tag.
                                </video>
                            <?php }else{ ?>
                        <iframe width="100%" height="240px" src="<?php echo $video->video_link; ?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                     
                        <?php } ?>
                        </div>
                        <?php } ?> -->
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<div class="container my2"></div>


<!-- <script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-1b93190375e9ccc259df3a57c1abc0e64599724ae30d7ea4c6877eb615f89387.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/g/lightgallery,lg-autoplay,lg-fullscreen,lg-hash,lg-share,lg-thumbnail,lg-video,lg-zoom"></script>
<script src="https://cdn.jsdelivr.net/picturefill/2.3.1/picturefill.min.js"></script>
<script src="https://f.vimeocdn.com/js/froogaloop2.min.js"></script> -->
    <script >
$('#video-gallery').lightGallery();
  </script>
