<style>
    .product .product-details{
        height: 150px;
    }


  .eventholder {
    margin: 15px 0;
    display: flex;
    justify-content: center;
  }

  .eventholder a {
    font-size: 16px;
    cursor: pointer;
    margin: 0 5px;
    color: #333;
    padding: 6px 12px;
  }

  .eventholder a:hover {
    background-color: #f7b135;
    color: #fff;
  }

  .eventholder a.jp-previous {
    margin-right: 15px;
  }

  .eventholder a.jp-next {
    margin-left: 15px;
  }

  .eventholder a.jp-current,
  a.jp-current:hover {
    color: #fff;
    font-weight: bold;
  }

  .eventholder a.jp-disabled,
  a.jp-disabled:hover {
    color: #bbb;
  }

  .eventholder a.jp-current,
  a.jp-current:hover,
  .eventholder a.jp-disabled,
  a.jp-disabled:hover {
    cursor: default;
    background: none;
  }

  .eventholder span {
    margin: 0 5px;
  }

  .eventholder a.jp-current {
    background: #f7b135;

  }

  .eventholder a:hover {
    color: #fff !important;
  }


    </style>
<section>
      <div class="container">
        <div class="section-content">
          <div class="row" id="itemContainer">
              <?php foreach($blog as $post) { ?>

                

            <div class="col-md-4 col-lg-4 mt-3" >
            <div class="product" >
                        <div class="product-header" >
                          <span class="onsale"><?php echo $this->db->where('category_id',$post->category_id)->get('blogcategory')->row()->category_name; ?></span>
                          <div class="thumb image-swap">
                            <a href="blog/post/<?php echo $post->id; ?>"><img src="<?php echo BLOG_PHOTO_UPLOAD_PATH.$post->post_image; ?>" class="product-main-image img-responsive img-fullwidth" width="300" height="250" alt="product"></a>
                            <a href="blog/post/<?php echo $post->id; ?>"><img src="<?php echo BLOG_PHOTO_UPLOAD_PATH.$post->post_image; ?>" class="product-hover-image img-responsive img-fullwidth" alt="product" width="300" height="250"></a>
                          </div>
                       
                        </div>
                        <div class="product-details" >
                        <?php $user = $this->db->select('*')->where('user_id',$post->created_by)->get('admin_users')->row(); ?>
                          <span class="product-categories d-flex justify-content-between">
                              <a  rel="tag">By <?php echo $user->first_name; ?> </a>
                              <a class="ml-auto"><?php echo $post->created_at; ?></a>
                            </span> 
                          <h5 class="product-title"><a href="blog/post/<?php echo $post->id; ?>"><?php echo $post->title; ?></a></h5>
                         
                        </div>
                      </div>
             
            </div>
            <?php } ?>
            
            <div class="col-sm-12 d-block">
              <div class="eventholder d-flex justify-content-center">
            
            </div>
            </div>
          </div>
        </div>
      </div>
    </section>






    <script>
         $(".eventholder").jPages({
    containerID  : "itemContainer",
    perPage      : 6,
 


});
      </script>