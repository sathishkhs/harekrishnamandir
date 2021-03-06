<div class="container">

<!-- Outer Row -->
<div class="row justify-content-center">

    <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-6 d-none d-lg-block bg-login-image" style="background:url(img/delivery-service-login.jpg);background-size:cover;"></div>
                    <div class="col-lg-6">
                        <div class="p-5">
                        <?php $msg = $this->session->flashdata('msg');
                        if (!empty($msg['txt'])) : ?>
                            <div class="alert alert-block alert-<?php echo $msg['type']; ?>">
                                <button type="button" class="btn defalut" data-dismiss="alert">
                                    <i class="fa fa-times"></i>
                                </button>
                                <i class="<?php echo $msg['icon']; ?>"></i>
                                <?php echo $msg['txt']; ?>
                            </div>
                        <?php endif ?>
                        
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                            </div>
                            <form class="user" action="" method="post">
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" name="username"
                                        id="exampleInputEmail" aria-describedby="emailHelp"
                                        placeholder="Enter Email Address..." value="<?php echo $this->input->cookie('username'); ?>">
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control form-control-user" name="password"
                                        id="exampleInputPassword" placeholder="Password" value="<?php echo $this->input->cookie('password'); ?>">
                                </div>
                                <div class="form-group">
                                    <div class="custom-control custom-checkbox small">
                                        <input type="checkbox" class="custom-control-input" id="customCheck"  name="remember" value="1">
                                        <label class="custom-control-label" for="customCheck">Remember
                                            Me</label>
                                    </div>
                                </div>
                                <button  class="btn btn-primary btn-user btn-block" type="submit">
                                    Login
                                </button>
                                <!-- <hr> -->
                                <!-- <a href="index.html" class="btn btn-google btn-user btn-block">
                                    <i class="fab fa-google fa-fw"></i> Login with Google
                                </a>
                                <a href="index.html" class="btn btn-facebook btn-user btn-block">
                                    <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                                </a> -->
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="forgot-password.html">Forgot Password?</a>
                            </div>
                            <div class="text-center">
                                <a class="small" href="register">Create an Account!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

</div>

</div>
