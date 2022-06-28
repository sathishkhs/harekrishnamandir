<style>
   .bg-image-he{
  padding-top: 10px;
    padding-bottom: 10px;
    background-size: contain;
    background-repeat: no-repeat;}
.page-title{
    background-color:transparent;
}
.layer-overlay.overlay-dark-3::before{
    background-color: transparent;
}
  @media (min-width: 1628px){
      .bg-image-he
{ background-position: right center !important;
    height:460px;
}  
      
  }
@media (max-width: 1628px){
    .bg-image-he{
         background-position: right center !important;
            height: 370px;
            background-repeat: no-repeat;
    }
}
@media (max-width: 1328px){
    .bg-image-he{
         background-position: right center !important;
            height: 280px;
    }
}
@media (max-width: 1028px){
    .bg-image-he{
         background-position: right center !important;
            height: 220px;
    }
}
@media (max-width: 580px){
  .bg-image-he{
    background-position: right center !important;
    height: 130px;
  }
@media (max-width: 380px){
  .bg-image-he{
    background-position: right center !important;
    height: 100px;
  }
  
</style>
<?php if ($page_items->display_image == 1 && !empty($page_items->display_image) && file_exists((CHARITABLE_PROGRAM_BANNER_PATH . $page_items->banner))) { ?>
    <section class="page-title layer-overlay overlay-dark-3 section-typo-light bg-img-center bg-image-he" data-tm-bg-img="<?php echo CHARITABLE_PROGRAM_BANNER_PATH . $page_items->banner; ?>" style="background-image: url(&quot;<?php echo CHARITABLE_PROGRAM_BANNER_PATH . $page_items->banner; ?>&quot;);">
        <div class="container ">
            <div class="section-content">

            </div>
        </div>
    </section>
<?php } ?>

<div class="row">
    <div class="col-md-12 text-center">
        <?php if (!empty($text_on_banner)) {
            echo $text_on_banner;
        } ?>

    </div>
</div>