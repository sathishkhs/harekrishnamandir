<style>

  img{
    margin: 6px;
  }
  </style>
<section>
      <div class="container pb-100">
        <div class="row">
          <div class="col-lg-8 col-xl-9">
            <div class="blog-posts single-post mb-md-30">
              <article class="post clearfix mb-0">
                <div class="entry-header mb-30">
                  <div class="post-thumb thumb"> <img src="<?php echo BLOG_PHOTO_UPLOAD_PATH.$post->post_image; ?>" alt="images" class="img-responsive img-fullwidth"> </div>
                  <h3 class="mt-30"><?php echo $post->title; ?></h3>
                  <div class="entry-meta mt-0">
                    <span class="mb-10 text-gray mr-10"><i class="far fa-calendar-alt mr-10 text-theme-colored1"></i> <?php echo $post->created_at; ?></span>
                    <?php  $user = $this->db->select('*')->where('id',$post->author)->get('author')->row(); ?>
                    <span class="mb-10 text-gray mr-10"><i class="far fa-user mr-10 text-theme-colored1"></i> <?php echo $user->name; ?></span>
                  </div>
                </div>
                <div class="entry-content">
                <?php echo $post->post_content; ?>
                </div>
              </article>
              
            </div>
          </div>
          <div class="col-lg-4 col-xl-3 sidebar-area sidebar-right position-sticky">
            <div class="mt-sm-30">
             
              <div class="widget">
                <h4 class="widget-title widget-title-line-bottom line-bottom-theme-colored1">Latest Blogs</h4>
                <div class="latest-posts">
                <?php foreach($posts as $post){ ?>  
                <article class="post clearfix pb-0 mb-20">
                    <a class="post-thumb" href="blog/post/<?php echo $post->page_slug; ?>"><img src="<?php echo BLOG_PHOTO_UPLOAD_PATH.$post->post_image; ?>" alt="images"></a>
                    <div class="post-right">
                      <h5 class="post-title mt-0"><a href="blog/post/<?php echo $post->page_slug; ?>"><?php echo $post->title; ?></a></h5>
                      <span class="post-date">  
                        <time class="entry-date" datetime="<?php echo $post->crated_at; ?>"><?php echo $post->created_at; ?></time>
                      </span>
                    </div>
                  </article>
                  <?php } ?>
                </div>
              </div>

          
              <div class="widget widget_categories">
                <h4 class="widget-title widget-title-line-bottom line-bottom-theme-colored1">Categories</h4>
                <ul>
                    <?php foreach($categories as $category){ 
                        ?>
                  <li class="cat-item"><a href="blog/category/<?php echo $category->category_id; ?>"><?php echo $category->category_name; ?></a> </li>
                  <?php } ?>
                  
                </ul>
              </div>
              
              <!-- <div class="widget widget_text text-center">
                <div class="textwidget">
                  <div class="section-typo-light bg-theme-colored1 mb-md-40 p-30 pt-40 pb-40"> <img class="size-full wp-image-800 aligncenter" src="assets/images/headphone-128.png" alt="images" width="128" height="128">
                  <h4>Online Help!</h4>
                  <h5><a href="tel:<?php echo $settings->TOLL_FREE_TIME; ?>"><?php echo $settings->TOLL_FREE_TIME; ?></a></h5>
                  </div>
                </div>
              </div>
              <div class="widget widget-brochure-box clearfix">
                <a class="brochure-box brochure-box-theme-colored1" href="mailto:<?php echo $settings->EMAIL; ?>">
                  <i class="far fa-envelope brochure-icon"></i>
                  <h5 class="text">Mail Us</h5>
                </a>
              </div> -->
            </div>
          </div>
        </div>
      </div>
    </section>