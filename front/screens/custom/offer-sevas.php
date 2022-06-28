<section style="background: #ececeb;">
  <div class="container pt-50">
    <div class="tm-sc-section-title section-title text-center mb-50">
      <div class="row justify-content-md-center">
        <div class="col-sm-12 col-md-8 col-lg-8 col-xl-8">
          <div class="title-wrapper mb-1">
            <h6 class="subtitle line-shape-bottom line-shape-center text-theme-colored1">Join Us in The Service of Lord</h6>
            <h2 class="title mb-0">Charitable Sevas</h2>
          </div>
        </div>
      </div>
    </div>
    <div class="section-content position-relative z-index-1">
      <div class="row">
    
        <div class="col-md-6 col-lg-4 mb-20">
          <div class="causes-item-current-style1 h-100">
            <div class="causes-item mb-lg-30 h-100 bg-white">
              <div class="causes-thumb">
                <img src="assets/images/bg/nitya-annadana.jpg" alt="Image" class="w-100">
                <a href="annadana-seva" class="btn btn-donate-now">Donate Now</a>
              </div>
              <div class="causes-details  h-100">
                <div class="donation-goal mb-1">
                  <!-- <div class="raised">Goal: <span class="text-theme-colored1 font-weight-500">3600.00 USD</span></div> -->
                </div>
                <h6 class="causes-title mb-1"><a href="annadana-seva">Annadana Seva</a></h6>
                <p class="mt-15"><?php echo substr('Each meal costs ₹15 and we require around ₹15,00,000 – ₹18,00,000 to provide food for a month. Your kind contribution will help us continue to provide free, nutritious food to needy people and temple devotees.', 0, 150) . '...'; ?></p> 
                <!-- <a href="<?php echo $festival->page_slug; ?>" class="btn btn-default btn-primary btn-theme-colored mt-10 font-16 btn-sm">Offer Seva <i class="flaticon-charity-make-a-donation font-16 ml-5"></i></a> -->
              </div>

            </div>
          </div>
        </div>
      
    
        <div class="col-md-6 col-lg-4 mb-20">
          <div class="causes-item-current-style1 h-100">
            <div class="causes-item mb-lg-30 h-100 bg-white">
              <div class="causes-thumb">
                <img src="assets/images/bg/gau-seva.jpg" alt="Image" class="w-100">
                <a href="gau-seva" class="btn btn-donate-now">Donate Now</a>
              </div>
              <div class="causes-details  h-100">
                <div class="donation-goal mb-1">
                  <!-- <div class="raised">Goal: <span class="text-theme-colored1 font-weight-500">3600.00 USD</span></div> -->
                </div>
                <h6 class="causes-title mb-1"><a href="gau-seva">Gau Seva</a></h6>
                <p class="mt-15"><?php echo substr('Gau Seva or taking care of cows has been an integral part of the Vedic culture and heritage. To protect and care for cows is considered as one of the most revered services. ', 0, 150) . '...'; ?></p> 
                <!-- <a href="<?php echo $festival->page_slug; ?>" class="btn btn-default btn-primary btn-theme-colored mt-10 font-16 btn-sm">Offer Seva <i class="flaticon-charity-make-a-donation font-16 ml-5"></i></a> -->
              </div>

            </div>
          </div>
        </div>
      

      </div>
    </div>
  </div>

</section>


<section style="background: #ececeb;">
  <div class="container pt-50">
    <div class="tm-sc-section-title section-title text-center mb-50">
      <div class="row justify-content-md-center">
        <div class="col-sm-12 col-md-8 col-lg-8 col-xl-8">
          <div class="title-wrapper mb-1">
            <!-- <h6 class="subtitle line-shape-bottom line-shape-center text-theme-colored1">Join Us in The Service of Lord</h6> -->
            <h2 class="title mb-0">Featured Festivals</h2>
          </div>
        </div>
      </div>
    </div>
    <div class="section-content position-relative z-index-1">
      <div class="row">
      <?php if(!empty($featured_festivals)){ foreach($featured_festivals as $festival){  ?>
        <div class="col-md-6 col-lg-4 mb-20">
          <div class="causes-item-current-style1 h-100">
            <div class="causes-item mb-lg-30 h-100 bg-white">
              <div class="causes-thumb">
                <img src="<?php echo SEVA_PAGE_BANNER_PATH . $festival->seva_page_banner; ?>" alt="Image" class="w-100">
                <a href="<?php echo $festival->page_slug; ?>" class="btn btn-donate-now">Donate Now</a>
              </div>
              <div class="causes-details  h-100">
                <div class="donation-goal mb-1">
                  <!-- <div class="raised">Goal: <span class="text-theme-colored1 font-weight-500">3600.00 USD</span></div> -->
                </div>
                <h6 class="causes-title mb-1"><a href="<?php echo $festival->page_slug; ?>"><?php echo $festival->sevas_page_title; ?></a></h6>
                <p class="mt-15"><?php echo substr($festival->celebration_details, 0, 150) . '...'; ?></p> 
                <!-- <a href="<?php echo $festival->page_slug; ?>" class="btn btn-default btn-primary btn-theme-colored mt-10 font-16 btn-sm">Offer Seva <i class="flaticon-charity-make-a-donation font-16 ml-5"></i></a> -->
              </div>

            </div>
          </div>
        </div>
        <?php }
        } else {  ?>
          <h2 class=" text-center font-36">No Featured Festivals Created</h2>
        <?php } ?>

      </div>
    </div>
  </div>

</section>





 

