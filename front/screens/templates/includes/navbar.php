<div class="header-nav tm-enable-navbar-hide-on-scroll">
	<div class="header-nav-wrapper navbar-scrolltofixed">
		<div class="menuzord-container header-nav-container">
			<div class="container position-relative">
				<div class="row header-nav-col-row">
					<div class="col-sm-auto align-self-center">
						<a class="menuzord-brand site-brand" href="">
							<img class="logo-default logo-1x" src="<?php echo SETTINGS_UPLOAD_PATH . $settings->LOGO_IMAGE ?>" alt="Logo">
							<img class="logo-default logo-2x retina" src="<?php echo SETTINGS_UPLOAD_PATH . $settings->LOGO_IMAGE ?>" alt="Logo">
						</a>
					</div>
						<div class="col-sm-auto ms-auto pr-0 align-self-center  d-xl-none">
						<div class="element pt-0 pt-lg-10 pb-0">
				  <a href="offer-sevas" class="btn btn-theme-colored2 btn-flat btn-sm px-3 py-2">Donate Now</a>
				</div>
					</div>
					<div class="col-sm-auto ms-auto pr-0 align-self-center">
						<nav id="top-primary-nav" class="menuzord theme-color1" data-effect="fade" data-animation="none" data-align="right">
							<ul id="main-nav" class="menuzord-menu">

								<!-- This part is without submenu  -->
								<?php if (!empty($header_menu)) { ?>
									<?php foreach ($header_menu as $header) { ?>
										<?php if ($header->submenu == null || empty($header->submenu)) { ?>
											<li><a class="<?php echo $header->menuitem_link == 'donate' ? 'btn btn-default btn-theme-colored btn-xs ' : '';  ?>" target="<?php echo $header->menuitem_target; ?>" href="<?php echo ($header->menuitem_link == '#') ? 'javascript:void(0)' : $header->menuitem_link; ?>"><?php echo $header->menuitem_text; ?></a> </li>
										<?php } ?>

										<!-- This part is for first layer submenu -->
										<?php if (!empty($header->submenu)) : ?>
											<li><a class="<?php echo $header->menuitem_link == 'donate' ? 'btn btn-default btn-theme-colored btn-xs ' : '';  ?>" href="<?php echo ($header->menuitem_link == '#') ? 'javascript:void(0)' : $header->menuitem_link; ?>"><?php echo $header->menuitem_text; ?></a>
												<ul class="dropdown">
													<?php foreach ($header->submenu as $submenu) : ?>
														<li><a target="<?php echo $submenu->menuitem_target; ?>" href="<?php echo $submenu->menuitem_link; ?>"><?php echo $submenu->menuitem_text; ?></a>
															<!-- This is second layer submenu	 -->
															<?php if (!empty($submenu->submenu)) : ?>
																<ul class="dropdown">
																	<?php foreach ($submenu->submenu as $submenu_2) : ?>
																		<li><a target="<?php echo $submenu_2->menuitem_target; ?>" href="<?php echo $submenu_2->menuitem_link ?>"><?php echo $submenu_2->menuitem_text; ?></a></li>
																	<?php endforeach; ?>
																</ul>
															<?php endif; ?>
														</li>
													<?php endforeach; ?>
												</ul>
											</li>
										<?php endif; ?>
									<?php } ?>
								<?php } ?>
								<li>
									<!-- <a target="" class="btn btn-default btn-theme-colored btn-xs font-16" href="donate">Donate</a> -->
								</li>
							</ul>

						</nav>
					</div>
				</div>

				<div class="row d-block d-xl-none">
					<div class="col-12">
						<nav id="top-primary-nav-clone" class="menuzord d-block d-xl-none default menuzord-color-default menuzord-border-boxed menuzord-responsive" data-effect="slide" data-animation="none" data-align="right">
							<ul id="main-nav-clone" class="menuzord-menu menuzord-right menuzord-indented scrollable">
							</ul>
						</nav>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>