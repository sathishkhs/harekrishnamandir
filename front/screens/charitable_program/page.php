<style>

</style>


<div class="container my-5">
    <div class="row">
        <div class="col-md-12 col-lg-6">
          <?php echo $page_items->left_description; ?>
        </div>

<div class="col-md-12 col-lg-6 bg-light">


<div class="container pt-0">
<div class="container">
        <div class="modal-body">
          <section>
            <div class="section-content">
              <div class="container pt-1">
              <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                  
                  <h6 class="mt-0 line-bottom"><?php echo $page_items->form_heading; ?></h6>

                  <!-- ===== START: Paypal Both Onetime/Recurring Form ===== -->
                  <form id="popup_paypal_donate_form_onetime_recurring" action=""  method="POST" enctype="multipart/form-data">
                      <?php if($this->config->item('payment_mode') == 'test'){ ?>
                      <input name="table_name" type="hidden" value="test_payments">
                      <?php } else{ ?>
                        <input name="table_name" type="hidden" value="payments">
                        <?php } ?>
                        <input type="hidden" name="donation_type" value="charitable_programme">
                        <input name="seva_name" type="hidden" value="<?php echo $page_items->page_slug; ?>">
                        <input type="hidden" name="slug" value="<?php echo $page_items->page_slug; ?>">
                        <input type="hidden" name="festival" value="-">
                        <input type="hidden" name="currency" value="INR">
                        
                    <div class="row">
                       
                        <div class="form-group d-flex flex-wrap form-control p-20 border-0 mb-2">
                                            <div class="form-check d-flex mt-2">
                                                <input class="form-check-input ml-10" type="radio" checked id="one" name="radioamount" value="<?php echo $page_items->amount_1;?>" >
                                                <label class="form-check-label pl-10" for="one"> ₹<?php echo $page_items->amount_1;?></label> &nbsp;
                                            </div>
                                            <div class="form-check d-flex mt-2">
                                                <input class="form-check-input ml-10" type="radio" id="two" name="radioamount" value="<?php echo $page_items->amount_2; ?>" >
                                                <label class="form-check-label pl-10" for="two"> ₹<?php echo $page_items->amount_2; ?></label> &nbsp;
                                            </div>
                                            <div class="form-check d-flex mt-2">
                                                <input class="form-check-input ml-10" type="radio" id="three" name="radioamount" value="<?php echo $page_items->amount_3; ?>" >
                                                <label class="form-check-label pl-10" for="three"> ₹<?php echo $page_items->amount_3; ?></label> &nbsp;
                                            </div>
                                            <div class="form-check d-flex mt-2">
                                                <input class="form-check-input ml-10" type="radio" id="five" name="radioamount" value="<?php echo $page_items->amount_4; ?>">
                                                <label class="form-check-label pl-10" for="five"> ₹<?php echo $page_items->amount_4; ?></label> &nbsp;
                                            </div>
                                            <div class="form-check d-flex mt-2">
                                                <input class="form-check-input ml-10" type="radio" id="seven" name="radioamount" value="<?php echo $page_items->amount_5; ?>" >
                                                <label class="form-check-label pl-10" for="seven"> ₹<?php echo $page_items->amount_5; ?></label> &nbsp;
                                            </div>

                                            <div class="form-check d-flex mt-2">
                                                <input class="form-check-input ml-10" type="radio" id="other" name="radioamount" >
                                                <label class="form-check-label pl-10" for="other"> Custom amount</label> &nbsp;
                                               
                                            </div>


                                        </div>
                       
                    </div>

                    <div class="row">
                      <div class="form-group col-md-12">
                        <label id="custom-text">Selected Amount</label>
                        <input id="amount" type="text" name="amount" value="" class="form-control" onkeypress="checkother()">
                      </div>
                    </div>
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
                        <input id="city" type="text" name="address" value="" class="form-control">
                      </div>
                    </div>
                   
                    <div class="row">
                      <!-- <div class="col-sm-12">
                        <div class="form-group mb-20">
                          <div>
                            <label>Seva you are offering: </label>
                            <input id="seva_name" name="seva_name" value="" class="form-control" readonly>
                          </div>
                        </div>
                      </div> -->
                      <!-- <div class="col-sm-12">
                        <div class="form-group mb-20">
                          <div>
                            <label><strong>Seva Amount: &#8377;</strong><span id="custom_other_amount"> </span> </label>
                          </div>
                        </div>
                      </div> -->
                    </div>

                    <div class="col-sm-5 mx-auto">
                      <div class="form-group">
                        <button type="submit" class="btn btn-flat btn-dark btn-theme-colored mt-10 pl-30 pr-30" data-loading-text="Please wait...">Donate Now</button>
                      </div>
                    </div>
                    <div class="col-sm-7 mx-auto">
                            
                            Avail tax exemption under Section 80G
                        </div>
                  </form>


                </div>
              </div>
              </div>
            </div>
        </div>
        </div>
</div>

    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <?php echo $page_items->bottom_description; ?>
        </div>
    </div>
</div>



<!-- <div class="col-sm-12 col-md-12 mx-auto">

    <div class="row">
        <div class="form-holder">
            <div class="form-content">
                <div class="form-items">

                    
                    <form id="razorpay-form" action="<?php echo base_url(); ?>charitable_programs/save_payment" method="POST">
                        <script type="text/javascript"  src="https://checkout.razorpay.com/v1/checkout.js"
                        data-buttontext=""
                        data-key="<?php echo $keyId; ?>"
                        data-amount="<?php echo $amount * 100; ?>"
                        data-currency="INR"
                        data-name="<?php echo $this->config->item('name') ?>"
                        data-image="<?php echo SETTINGS_UPLOAD_PATH . $settings->LOGO_IMAGE ?>"
                        data-description="<?php echo $this->config->item('description') ?>"
                        data-prefill.name="<?php echo $full_name ?>"
                        data-prefill.email="<?php echo $email ?>"
                        data-prefill.contact="<?php echo $phone_number ?>"
                        data-prefill.pan="<?php echo $pan_number ?>"
                        data-notes.pan="<?php echo $pan_number ?>"
                        data-notes.shopping_order_id="<?php echo $notes['razorpay_order_id']; ?> "
                        data-modal.confirm_close = 'true'
                        data-modal.ondismiss=function(){alert('close')}
                        <?php if ($displayCurrency !== 'INR') { ?>
                        data-display_amount="<?php echo $display_amount ?>" <?php } ?> <?php if ($displayCurrency !== 'INR') { ?>
                        data-display_currency="<?php echo $display_currency ?>" <?php } ?>
                        data-redirect = 'true'
                        data-callback_url = "<?php echo base_url(); ?>charitable_programs/save_payment/<?php echo $insert_id .'/'.$table_name; ?>"
                    
                        >

                      
                        </script>
                      
                      
                       
                    </form>
                    
                
            </div>
        </div>
        </div>

</div>
</div> -->
<style>
  .razorpay-payment-button{
    visibility: hidden;
  }
</style>

<button id="rzp-button1" class="d-none"></button>
<div id="failed-form"></div>
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>


<!-- 
<script type="text/javascript">
        window.onload = function() {
            var button = document.getElementById('clickButton');
            <?php if (!empty($keyId) && !empty($amount)) { ?>
                $('#razorpay-form').submit();
            <?php } ?>
            $('#modal-close').on('click', function() {

                //  window.location.replace("donate");
                window.location.href = 'annadana-seva';

            });
            $('#positiveBtn').on('click', function() {

                //  window.location.replace("donate");
                window.location.href = 'annadana-seva';

            });


        }


      
        function modal_close() {
            window.location.href = 'annadana-seva';
        }
    </script> -->





    <script type="text/javascript">
       

        var selection;
        $(document).ready(function() {

         
            $('#one').on('click', function() {
                // $('#one, #two, #three, #five, #seven, #thousand, #fifteen, #twenty ').removeAttr('checked');
                $('#custom-text').html('Selected Amount');
                $('#one').prop('checked','checked');
                $('#amount').val('1000');
              

            })
            $('#two').on('click', function() {
                // $('#one, #two, #three, #five, #seven, #thousand, #fifteen, #twenty,#other').removeAttr('ckecked');
                $('#custom-text').html('Selected Amount');
                $('#two').prop('checked','checked');
                $('#amount').val($(this).val());
            })
            $('#three').on('click', function() {
                // $('#one, #two, #three, #five, #seven, #thousand, #fifteen, #twenty,#other').removeAttr('checked');
                $('#custom-text').html('Selected Amount');
                $('#three').prop('checked','checked');
                $('#amount').val($(this).val());
            })
            $('#five').on('click', function() {
                // $('#one, #two, #three, #five, #seven, #thousand, #fifteen, #twenty,#other').removeAttr('checked');
                $('#custom-text').html('Selected Amount');
                $('#five').prop('checked','checked');
                $('#amount').val($(this).val());
            })

            $('#seven').on('click', function() {
                // $('#one, #two, #three, #five, #seven, #thousand, #fifteen, #twenty,#other').removeAttr('checked');
                $('#custom-text').html('Selected Amount');
                $('#seven').prop('checked','checked');
                $('#amount').val($(this).val());
            })

            $('#other').on('click', function() {
                // var amount = $('#other').val()
                // $('#one, #two, #three, #five, #seven, #thousand, #fifteen, #twenty,#other').removeAttr('checked');
                $('#custom-text').html('Enter Custom Amount');
                $('#other').prop('checked','checked');
                $('#amount').val('');


            })
            $('#amount').on('keydown',function(){
               
                $('#other').prop('checked','checked')
            })
          


            // It has the name attribute "registration"
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
                    // pan_number: {
                    //     required: true
                    // },
                    amount: {
                        required: true,
                        number: true
                    },
                   
                },
                // Specify validation error messages
                messages: {
                    name: "Please enter your firstname",
                    mobile_number: {
                        required: "Please provide a mobile_number",
                        minlength: "Your mobile number must be at least 10 characters long",
                        maxlength: "Your mobile number must not be more than 12 characters length"
                    },
                    email: "Please enter a valid email address",
                    // pan: "please enter pan number",
                    amount: "Please enter amount",
                   
                },
                // Make sure the form is submitted to the destination defined
                // in the "action" attribute of the form when valid
                submitHandler: function(form) {
                  if($('#amount').val() < 300){
                    alert('Minimum Donation is 300')
                  }else{
                    $.ajax ({ 
                          type : 'POST', 
                          url : 'festivals/create_order', 
                          data : $('#popup_paypal_donate_form_onetime_recurring').serialize (),
                          complete : function(data){
                          
                          console.log(data)
                            var options = {
                                    "key": data.responseJSON.keyId, // Enter the Key ID generated from the Dashboard
                                    "amount": data.responseJSON.amount, // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
                                    "currency": data.responseJSON.currency,
                                    "name": data.responseJSON.company_name,
                                    "description": data.responseJSON.company_description,
                                    "image": data.responseJSON.settings.LOGO_IMAGE,
                                    "order_id": data.responseJSON.razorpay_order_id, //This is a sample Order ID. Pass the `id` obtained in the response of Step 1
                                    "callback_url": data.responseJSON.callback_url,
                                    // "redirect": true,
                                    "retry" : {
                                      'enabled':false,
                                    },
                                    "prefill": {
                                        "name": data.responseJSON.full_name,
                                        "email": data.responseJSON.email,
                                        "contact": data.responseJSON.phone_number,
                                        "pan_number": data.responseJSON.pan_number,
                                        "address": data.responseJSON.address,
                                    },
                                    "notes": {
                                        "address": data.responseJSON.address
                                    },
                                    "theme": {
                                        "color": "#3399cc"
                                    }
                                };
                                var rzp1 = new Razorpay(options);
                                rzp1.on('payment.failed', function (response){
                                    $('#failed-form').html('<form id="failed_form_submit" action="seva_page/donation_failed/'+data.responseJSON.insert_id+'" method="post" style="display:none"><input type="hidden" name="error_code" value="'+response.error.code+'"><input type="hidden" name="error_description" value="'+response.error.description+'"><input type="hidden" name="error_source" value="'+response.error.source+'"><input type="hidden" name="error_reason" value="'+response.error.reason+'"><input type="hidden" name="razorpay_order_id" value="'+response.error.metadata.order_id+'"><input type="hidden" name="razorpay_payment_id" value="'+response.error.metadata.payment_id+'"></form>');
                                    $('#failed_form_submit').submit();
                                });
                              
                                $('#rzp-button1').click(); 
                                // $('#rzp-button1').on('click',function(e){
                                
                                  rzp1.open();
                                  // e.preventDefault();
                                // });
                                // document.getElementById('rzp-button1').onclick = function(e){
                                // }
                          }
                        })
                  }
                }
            });
        });





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

</script>


