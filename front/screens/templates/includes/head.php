<?php error_reporting(0); ?>
	<meta charset="utf-8">
    <title><?php echo $page_items->meta_title; ?></title>
    <meta name="title" content="<?php echo $page_items->meta_title; ?>"/>
    <meta name="keywords" content="<?php echo $page_items->meta_keywords; ?>"/>
    <meta name="description" content="<?php echo $page_items->meta_description; ?>"/>
    <base href="<?php echo base_url(); ?>"/>
    <?php $parts = $this->uri->segment(1); ?>
    <?php if (!empty($page_url) && $page_url > 1) {
        ?>   <link rel="canonical" href="<?php echo base_url() . $parts . '/' . $page_url; ?>"/>
    <?php } else if (!empty($page_items->canonical_url)) { ?>
        <link rel="canonical" href="<?php echo $page_items->canonical_url; ?>"/>
        <?php
    } if (!empty($page_items->redirection_link)) {
        header('Location:' . $page_items->redirection_link);
    }
    ?>
    <?php echo $page_items->other_meta_tags; ?>
    <?php
    $robots = array();
    if (!empty($page_items->nofollow_ind)) {
        $robots[] = 'NOINDEX';
    }
    if (!empty($page_items->noindex_ind)) {
        $robots[] = 'NOFOLLOW';
    }
    if (count($robots) > 0):
        ?>
        <META NAME="ROBOTS" CONTENT="<?php echo implode(', ', $robots); ?>" />
    <?php endif ?>

    <meta name="author" content="Sathish-Kumar">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

	<!--<link rel="shortcut icon" href="<?php echo $settings->FAVICON_IMAGE ?>" type="image/x-icon">-->
	<link rel="icon" href="<?php echo SETTINGS_UPLOAD_PATH.$settings->FAVICON_IMAGE ?>" type="image/png">
<script>
    // window.dataLayer = window.dataLayer || [];
</script>

<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-KHGP4DZ');</script>
<!-- End Google Tag Manager -->

	<!-- Stylesheets -->
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
    <!-- Stylesheet -->
        
   <!-- Stylesheet -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="assets/css/animate.min.css" rel="stylesheet" type="text/css">
<link href="assets/css/javascript-plugins-bundle.css" rel="stylesheet"/>

<!-- CSS | menuzord megamenu skins -->
<link href="assets/js/menuzord/css/menuzord.css" rel="stylesheet"/>

<!-- CSS | Main style file -->
<link href="assets/css/style-main.css" rel="stylesheet" type="text/css">
<link id="menuzord-menu-skins" href="assets/css/menuzord-skins/menuzord-rounded-boxed.css" rel="stylesheet"/>

<!-- CSS | Responsive media queries -->
<link href="assets/css/responsive.css" rel="stylesheet" type="text/css">
<!-- CSS | Style css. This is the file where you can place your own custom css code. Just uncomment it and use it. -->

<!-- CSS | Theme Color -->
<link href="assets/css/colors/theme-skin-color-set1.css" rel="stylesheet" type="text/css">

<!-- external javascripts -->
<script src="assets/js/jquery.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/javascript-plugins-bundle.js"></script>
<script src="assets/js/menuzord/js/menuzord.js"></script>

<!-- REVOLUTION STYLE SHEETS -->
<!-- <link rel="stylesheet" type="text/css" href="assets/js/revolution-slider/css/rs6.css">
<link rel="stylesheet" type="text/css" href="assets/js/revolution-slider/extra-rev-slider1.css"> -->
<!-- REVOLUTION LAYERS STYLES -->
<!-- REVOLUTION JS FILES -->
<!-- <script src="assets/js/revolution-slider/js/revolution.tools.min.js"></script>
<script src="assets/js/revolution-slider/js/rs6.min.js"></script>
<script src="assets/js/revolution-slider/extra-rev-slider2.js"></script> -->

<!-- <link href="css/style.css" rel="stylesheet" type="text/css"> -->


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />
  <script src="https://cdn.jsdelivr.net/npm/lazyload@2.0.0-rc.2/lazyload.js"></script>
    <link href="https://cdn.rawgit.com/sachinchoolur/lightgallery.js/master/dist/css/lightgallery.css" rel="stylesheet">
    <script src="assets/js/jpages.min.js"></script>
    <link href="assets/css/slick.css" rel="stylesheet" type="text/css">
    <script src="assets/js/slick.js"></script>


