<!-- <section id="home">
      <div class="container-fluid p-0">
        <div class="row">
          <div class="col">
          
            <p class="rs-p-wp-fix"></p>
            <?php if (!empty($banners)) { ?>
            <rs-module-wrap id="rev_slider_1_1_wrapper" data-alias="industrivo-rev-slider-2" data-source="gallery" style="background:transparent;padding:0;margin:0px auto;margin-top:0;margin-bottom:0;">
              <rs-module id="rev_slider_1_1" style="display:none;" data-version="6.1.7">
                <?php foreach ($banners as $banner) {  ?>
               

                  <rs-slide data-key="rs-9" data-title="Slide 1" data-thumb="<?php echo BANNER_IMAGE_PATH . $banner->banner_background_img_path; ?>" data-anim="ei:d;eo:d;s:d;r:0;t:slotslide-horizontal;sl:d;">
                    <img src="<?php echo BANNER_IMAGE_PATH . $banner->banner_background_img_path; ?>" title="slide1" width="1920" height="1280" data-parallax="off" class="rev-slidebg" data-no-retina>
                   
                  </rs-slide>
                  <?php } ?>
                </rs-slides>
                <rs-static-layers>
                
                </rs-static-layers>
                <rs-progress class="rs-bottom" style="height: 5px; background: rgba(199,199,199,0.5);"></rs-progress>
              </rs-module>
              <script>
                if(typeof revslider_showDoubleJqueryError === "undefined") {
                  function revslider_showDoubleJqueryError(sliderID) {
                    var err = "<div class='rs_error_message_box'>";
                    err += "<div class='rs_error_message_oops'>Oops...</div>";
                    err += "<div class='rs_error_message_content'>";
                    err += "You have some jquery.js library include that comes after the Slider Revolution files js inclusion.<br>";
                    err += "To fix this, you can:<br>&nbsp;&nbsp;&nbsp; 1. Set 'Module General Options' -> 'Advanced' -> 'jQuery & OutPut Filters' -> 'Put JS to Body' to on";
                    err += "<br>&nbsp;&nbsp;&nbsp; 2. Find the double jQuery.js inclusion and remove it";
                    err += "</div>";
                    err += "</div>";
                    jQuery(sliderID).show().html(err);
                  }
                }
              </script>
            </rs-module-wrap>
            <?php } ?>
           
          </div>
        </div>
      </div>
    </section> -->

<div class="slider">
  <?php if (!empty($banners)) { ?>
    <?php foreach($banners as $banner) { ?>
    
      <div>
        <a href="<?php echo !empty($banner->image_redirect_url) ? $banner->image_redirect_url : '' ?>">
        <img src="<?php echo BANNER_IMAGE_PATH.$banner->banner_background_img_path; ?>" />
      </a>
      </div>

    <?php }
  } else { ?>
    <div>
      <img src="assets/images/bg/slide1.jpg" />
    </div>
  <?php } ?>
</div>
<script>
  $('.slider').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    dots: true,
    infinite: true,
    autoplay:true,
    cssEase: 'linear',
    arrows:true,
  });
</script>