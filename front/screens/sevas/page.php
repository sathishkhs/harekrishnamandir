<section class="inner-header divider " data-bg-img="assets/images/bg/banner-bg.png" style="background-image: url('assets/images/bg/banner-bg.png'); background-position: bottom left;">
      <div class="container  pt-40">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row"> 
            <div class="col-md-12">
              <h2 class=" text-center font-36"><?php echo $page_items->sevas_page_title; ?></h2>
              <!-- <ol class="breadcrumb text-left mt-10 white">
                <li><a href="#">Home</a></li>
                <li><a href="#">Pages</a></li>
                <li class="active"><?php echo $page_items->page_title; ?></li>
              </ol> -->
            </div>
          </div>
        </div>
      </div>      
    </section>

<!-- Section: Causes -->
<section>
  <div class="container pt-20 pb-40">
    <div class="row mtli-row-clearfix">
      <div class="col-sm-6 col-md-8 col-lg-8">
        <div class="causes bg-white maxwidth500 mb-30">
          <div class="thumb">
            <img src="<?php echo SEVA_PAGE_BANNER_PATH . $page_items->seva_page_banner; ?>" alt="" class="img-fullwidth">
          </div>
          
        </div>
      </div>
          
      <div class="col-sm-6 col-md-4 col-lg-4">
        <div class="sidebar sidebar-right mt-sm-30">
       
          <div class="widget">
            <h5 class="widget-title line-bottom">Festival Schedule</h5>
            <p><?php echo $page_items->schedule_content; ?></p>
          </div>
         
        </div>
      </div>

    </div>



   



    <div class="row">
      <div class="col-sm-12">
      <div class="causes-details border-1px bg-white clearfix p-20 pt-10 pb-20">
            <h4 class="font-20 text-uppercase"><?php echo $page_items->sevas_page_title; ?></h4>
            <p class="mt-15" ><?php echo $page_items->seva_page_desc_top; ?>  </p>
            <!-- <button type="button" id="more_less_btn" class="btn btn-xs btn-theme-colored btn-default read_more">Read More</button> -->
          </div>
        <div class="container">
          <div class="row">
         
            <?php if (!empty($sevas)) { ?>
              <?php foreach ($sevas as $key => $seva) {
                ?> 
            <div class="col-md-6 col-lg-4 mt-4">
              <div class="causes-item-current-style1 position-relative z-index-2">
                <div class="causes-item mb-lg-30">
                  <div class="causes-thumb">
                    <img src="<?php echo SEVAS_PHOTO_UPLOAD_PATH . $seva->seva_image; ?>" alt="Image" class="w-100">
                    <button type="button"  data-name="<?php echo $seva->seva_name; ?>" data-amount="<?php echo $seva->seva_amount; ?>" data-bs-toggle="modal" data-bs-target="#myModal" onclick="seva_amount(this.getAttribute('data-amount'),this.getAttribute('data-name'))" class="btn btn-donate-now">Donate Now</button>
                  </div>
                  <div class="causes-details pt-1 px-4" style="background:#eeeeee">
                    <div class="donation-goal mb-1">
                      <div class="raised">Amount: <span class="text-theme-colored1 font-weight-500"><?php echo !empty($seva->seva_amount) ? $seva->seva_amount : '<input type="number" id="seva_amount" value="">'; ?></span></div>
                    </div>
                    <h6 class="causes-title mb-0"><?php echo $seva->seva_name; ?></h6>
                    <p><?php echo $seva->description; ?></p>
                  </div>
                 
                </div>
              </div>
            </div>

            <?php 
                } 
              }
            
            ?>

    </div>


  </div>
</section>




<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
    <div class="modal-header">
        <h5 class="modal-title" id="myModalLabel"><?php echo $page_items->sevas_page_title; ?></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>

      
      <div class="container">
        <div class="modal-body">
          <section>
            <div class="section-content">
              <div class="container">
              <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                  <h3 class="mt-0 line-bottom">Offer Seva<span class="font-weight-300"> Now!</span></h3>

                  <!-- ===== START: Paypal Both Onetime/Recurring Form ===== -->
                  <form id="popup_paypal_donate_form_onetime_recurring" action="<?php echo base_url($slug); ?>" id="offerseva_form" method="POST" enctype="multipart/form-data">
                    <input name="table_name" type="hidden" value="donations">
                    <input name="festival" type="hidden" value="<?php echo $page_items->page_slug; ?>">

                    <div class="row">
                      <div class="form-group col-md-12">
                        <label>Full Name</label>
                        <input id="full_name" type="text" name="full_name" value="" class="form-control">
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-md-6">
                        <label>Phone Number</label>
                        <input id="phone_number" type="text" name="phone_number" value="" class="form-control">
                      </div>
                      <div class="form-group col-md-6">
                        <label>Email Address</label>
                        <input id="email" type="email" name="email" value="" class="form-control">
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-md-6">
                        <label>Pan Number</label>
                        <input id="pan_number" type="text" name="pan_number" value="" class="form-control">
                      </div>
                      <div class="form-group col-md-6">
                        <label>Address</label>
                        <input id="city" type="text" name="city" value="" class="form-control">
                      </div>
                    </div>
                    <div class="row">
                      <div class="form-group col-md-12">
                        <label>Custom Amount</label>
                        <input id="amount" type="text" name="amount" value="" class="form-control">
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-sm-12">
                        <div class="form-group mb-20">
                          <div>
                            <label>Seva you are offering: </label>
                            <input id="seva_name" name="seva_name" value="" class="form-control" readonly>
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-12">
                        <div class="form-group mb-20">
                          <div>
                            <label><strong>Seva Amount: &#8377;</strong><span id="custom_other_amount"> </span> </label>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="col-sm-12">
                      <div class="form-group">
                        <button type="submit" class="btn btn-flat btn-dark btn-theme-colored mt-10 pl-30 pr-30" data-loading-text="Please wait...">Donate Now</button>
                      </div>
                    </div>

                  </form>


                </div>
              </div>
              </div>
            </div>
        </div>
        </section>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-bs-dismiss="modal">Close</button>
      
      </div>
    </div>
  </div>
</div>



<div class="col-sm-12 col-md-12 mx-auto">
<!--<div class="form-body">-->
    <div class="row">
        <div class="form-holder">
            <div class="form-content">
                <div class="form-items">
<!--                    <h3 class="text-center">Akshayachaitanya Donation Page</h3>-->
<!--                    <h4>Select any payment gateway to complete payment.</h4>-->
                    
                    <form id="razorpay-form" action="<?php echo base_url(); ?>seva_page/save_payment" method="POST">
                        <script type="text/javascript"  src="https://checkout.razorpay.com/v1/checkout.js"
                        data-buttontext=""
                        data-key="<?php echo $keyId; ?>"
                        data-amount="<?php echo $amount * 100; ?>"
                        data-currency="INR"
                        data-name="<?php echo $this->config->item('company_name') ?>"
                        data-image="<?php echo SETTINGS_UPLOAD_PATH . $settings->LOGO_IMAGE ?>"
                        data-description="<?php echo $this->config->item('description') ?>"
                        data-prefill.name="<?php echo $full_name ?>"
                        data-prefill.email="<?php echo $email ?>"
                        data-prefill.contact="<?php echo $phone_number ?>"
                        data-prefill.pan="<?php echo $pan_number ?>"
                        data-notes.pan="<?php echo $pan_number ?>"
                        data-notes.shopping_order_id="<?php echo $notes['razorpay_order_id']; ?> "
                        data-modal.confirm_close = 'true'
                        data-modal.ondismiss="this.modal_close()"
                        <?php if ($displayCurrency !== 'INR') { ?>
                        data-display_amount="<?php echo $display_amount ?>" <?php } ?> <?php if ($displayCurrency !== 'INR') { ?>
                        data-display_currency="<?php echo $display_currency ?>" <?php } ?>
                        data-redirect = 'true'
                        data-callback_url = "<?php echo base_url(); ?>seva_page/save_payment/<?php echo $insert_id .'/'.$table_name; ?>"
                        
                        >

                      
                        </script>
                      
                      
                      
                    </form>
                    
                
            </div>
        </div>
        </div>
    <!--</div>-->
</div>
</div>

<style>
  .razorpay-payment-button{
    visibility: hidden;
  }
</style>

<script type="text/javascript" >
    window.onload = function(){
    var button = document.getElementById('clickButton');
    <?php if(!empty($keyId) && !empty($razorpay_order_id)){ ?>
    $('#razorpay-form').submit();
    <?php } ?>
    $('#modal-close').on('click',function(){
      
            //  window.location.replace("donate");
             window.location.href = '';
        
    });

   
}

$("#popup_paypal_donate_form_onetime_recurring").validate({
        // Specify validation rules

        rules: {
            // The key name on the left side is the name attribute
            // of an input field. Validation rules are defined
            // on the right side
            full_name: "required",
            email: {
                required: true,
                // Specify that email should be validated
                // by the built-in "email" rule
                email: true
            },
            phone_number: {
                required: true,
                minlength: 10,
                maxlength: 12
            },
            pan_number: {
                required: true
            },
            amount: {
                required: true
            },
            // payble_amount: required
        },
        // Specify validation error messages
        messages: {
          full_name: "Please enter your Full Name",
          phone_number: {
                required: "Please provide a Mobile Number",
                minlength: "Your mobile number must be at least 10 characters long",
                maxlength: "Your mobile number must not be more than 12 characters length"
            },
            email: "Please enter a valid Email Address",
            pan_number: "please enter Pan Number",
            amount: "Please enter Amount",
        },
        // Make sure the form is submitted to the destination defined
        // in the "action" attribute of the form when valid
        submitHandler: function(form) {
            var amount = $('#amount').val();
            if(amount == '' || amount < 300 ){
                alert('Amount cannot be less than ₹300')
            }else{
            form.submit();
            }
        }
    });



$(".number").keydown(function(event) {        
    k = event.which;
   
  if ((k >= 48 && k <= 57) || k == 8) {
 
  return true
    
  } else {
    event.preventDefault();
    return false;
  }

            
        })

function modal_close(){
    window.location.href = <?php echo $slug; ?>;
}

</script>





<script type="text/javascript" >
var selection;
      $(document).ready(function() {


 var dtToday = new Date();
  
  var month = dtToday.getMonth() + 1;
  var day = dtToday.getDate()+1;
  var year = dtToday.getFullYear();
  if(month < 10)
      month = '0' + month.toString();
  if(day < 10)
      day = '0' + day.toString();
  
  var maxDate = year + '-' + month + '-' + day;

      var field = '<input class="form-control w-100" min="'+maxDate+'" type="date" id="save_the_date"  name="save_the_date" placeholder="Save Date"  required/>';
       var   field1 = '<div class="col-md-12"><p style="font-size:14px;line-height:14px"></p></div>';
  
      
   
      
       var field2 = '<input class="form-control w-100" type="hidden" id="whatsapp_number"  name="whatsapp_number" placeholder="Enter Your Whatsapp Number" required/>';
          $('#receive_updates').on('change',function(){
              if($('#receive_updates').is(':checked')){
                  $('.receive-updates-number').html(field2)
                 
                }else{
                    
                    $('.receive-updates-number').html('')
                  
    
              }
    
          })
      
  
        selection = function(id){
           $('#quantity').val(id/50)
           $('#meal').html(id/50+' meals | ₹ '+id);
        }
        
   

        $('#quantity').keyup(function() {
            var quantity = $('#quantity').val();
            $('#other').val(quantity * 50);
            // $('#other').html(quantity * 100);
            $('#other').attr('selected', true);
            $('#meal').html(quantity + ' meals | ₹ ' + quantity * 50);
        })


  
    })

    function form_submit() {
        'use strict'
      
if((($('#mobile_number').val().length < 10) || ($('#mobile_number').val().length > 11)) ){
    event.preventDefault()
    event.stopPropagation()
    alert('Mobile number should be 10 digits')
}else{
      
        const forms = document.querySelectorAll('.requires-validation')
        if (($('#quantity').val() < 4 && $('#amount').val() < 200 || $('#quantity').val() =='' || $('#amount').val() == '')) {
            event.preventDefault()
            event.stopPropagation()
            alert('Meal Quantity is required and should be atleast 4');
            return false;
        } else {
            Array.from(forms)
                .forEach(function(form) {
                    form.addEventListener('submit', function(event) {
                        if (!form.checkValidity()) {
                            event.preventDefault()
                            event.stopPropagation()
                        }

                        form.classList.add('was-validated')
                        document.getElementById('donate-form').submit();
                    }, false)
                })
        }
    }


    }
   
 $('.customer-logos').slick({
  slidesToShow: 4,
  slidesToScroll: 1,
  autoplay: true,
  autoplaySpeed: 1500,
  arrows: false,
  dots: false,
  pauseOnHover: false,
  responsive: [{
      breakpoint: 768,
      settings: {
          slidesToShow: 4
      }
  }, {
      breakpoint: 520,
      settings: {
          slidesToShow: 2
      }
  }]
});


  


    (function($) {
        $.fn.countTo = function(options) {
            options = options || {};

            return $(this).each(function() {
                // set options for current element
                var settings = $.extend({}, $.fn.countTo.defaults, {
                    from: $(this).data('from'),
                    to: $(this).data('to'),
                    speed: $(this).data('speed'),
                    refreshInterval: $(this).data('refresh-interval'),
                    decimals: $(this).data('decimals')
                }, options);

                // how many times to update the value, and how much to increment the value on each update
                var loops = Math.ceil(settings.speed / settings.refreshInterval),
                    increment = (settings.to - settings.from) / loops;

                // references & variables that will change with each update
                var self = this,
                    $self = $(this),
                    loopCount = 0,
                    value = settings.from,
                    data = $self.data('countTo') || {};

                $self.data('countTo', data);

                // if an existing interval can be found, clear it first
                if (data.interval) {
                    clearInterval(data.interval);
                }
                data.interval = setInterval(updateTimer, settings.refreshInterval);

                // initialize the element with the starting value
                render(value);

                function updateTimer() {
                    value += increment;
                    loopCount++;

                    render(value);

                    if (typeof(settings.onUpdate) == 'function') {
                        settings.onUpdate.call(self, value);
                    }

                    if (loopCount >= loops) {
                        // remove the interval
                        $self.removeData('countTo');
                        clearInterval(data.interval);
                        value = settings.to;

                        if (typeof(settings.onComplete) == 'function') {
                            settings.onComplete.call(self, value);
                        }
                    }
                }

                function render(value) {
                    var formattedValue = settings.formatter.call(self, value, settings);
                    $self.html(formattedValue);
                }
            });
        };

        $.fn.countTo.defaults = {
            from: 0, // the number the element should start at
            to: 0, // the number the element should end at
            speed: 1000, // how long it should take to count between the target numbers
            refreshInterval: 100, // how often the element should be updated
            decimals: 0, // the number of decimal places to show
            formatter: formatter, // handler for formatting the value before rendering
            onUpdate: null, // callback method for every time the element is updated
            onComplete: null // callback method for when the element finishes updating
        };

        function formatter(value, settings) {
            return value.toFixed(settings.decimals);
        }
    }(jQuery));

    jQuery(function($) {
        // custom formatting example
        $('.count-number').data('countToOptions', {
            formatter: function(value, options) {
                return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ',');
            }
        });

        // start all the timers
        $('.timer').each(count);

        function count(options) {
            var $this = $(this);
            options = $.extend({}, options || {}, $this.data('countToOptions') || {});
            $this.countTo(options);
        }
    });
</script>



