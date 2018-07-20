<!DOCTYPE>
<html <?php language_attributes();  ?>>
    <head>
        <meta charset='<?php bloginfo('charset'); ?>'>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <title><?php bloginfo('name'); ?></title>
        <?php wp_head(); ?>
    </head>
    <body <?php body_class(); ?>>

    <div id="fb-root"></div>
    <script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.12&appId=972749199527382&autoLogAppEvents=1';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));</script>


    <!-- Navigation Bar -->
    <div class="nav-bar">
        <div class="container">
            <div class="row">

                <div class="col-sm-2 navbar__logo-column">
                    <div class="logo-holder">
                        <a href="<?php echo site_url(); ?>">
                            <img src="<?php echo get_theme_file_uri('assets/img/logo.png') ?>">
                        </a>
                    </div>
                </div>

                <!-- Menu Column -->
                <div class="col-sm-10 navbar__menu-column">
                    <ul class="navbar__main-menu">
                        <li class="navbar__main-menu-item">
                            <a href="<?php echo site_url(); ?>">TRANG CHỦ</a>
                        </li>
                        <li class="navbar__main-menu-item sub-menu-container">
                            <a>SẢN PHẨM</a>
                            <span class="sub-menu-toggle fa fa-caret-down"></span>

                            <ul class="navbar__sub-menu">
                                <li class="navbar__main-menu-item--demo sm-hide">
                                    <div class="sub-menu-holder">
                                        <div class="row">
                                            <div class="col-sm-5">
                                                <div class="thumbnail-img">
                                                    <img src="<?php echo get_theme_file_uri('assets/img/IMG_6955.JPG') ?>">
                                                </div>
                                            </div>
                                            <div class="col-sm-7 menu-list">
                                                <div class="navbar__sub-menu__sub-menu-item">
                                                    <a href="<?php echo get_post_type_archive_link('watch'); ?>">Đồng hồ</a>
                                                    <p>Đồng hồ từ các thương hiệu thời trang</p>
                                                </div>
                                                <div class="navbar__sub-menu__sub-menu-item">
                                                    <a href=""<?php echo get_post_type_archive_link('glass'); ?>">Mắt Kính</a>
                                                    <p>Đồng hồ từ các thương hiệu thời trang</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <li class="navbar__main-menu-item sub-menu-container">
                            <a>KHUYẾN MÃI</a>
                            <span class="sub-menu-toggle fa fa-caret-down"></span>

                            <ul class="navbar__sub-menu">
                                <li class="navbar__main-menu-item--demo sm-hide">
                                    <div class="sub-menu-holder">
                                        <div class="row">
                                            <div class="col-sm-5">
                                                <div class="thumbnail-img">
                                                    <img src="<?php echo get_theme_file_uri('assets/img/IMG_6955.JPG') ?>">
                                                </div>
                                            </div>
                                            <div class="col-sm-7 menu-list">
                                                <div class="navbar__sub-menu__sub-menu-item">
                                                    <a href="<?php echo site_url('/discount-watch'); ?>">Đồng hồ</a>
                                                    <p>Đồng hồ từ các thương hiệu thời trang</p>
                                                </div>
                                                <div class="navbar__sub-menu__sub-menu-item">
                                                    <a href="<?php echo site_url('/discount-glass') ?> ">Mắt Kính</a>
                                                    <p>Đồng hồ từ các thương hiệu thời trang</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>

                        </li>
                        <li class="navbar__main-menu-item">
                            <a href="<?php echo site_url('/blog'); ?>">TIN TỨC</a>
                        </li>
                        <li class="navbar__main-menu-item">
                            <a href="<?php echo site_url('/contact'); ?>">LIÊN HỆ</a>
                        </li>
                    </ul>
                </div>
                <!-- Menu Column - END -->
            </div>
        </div>
    </div>
    <!-- Navigation Bar - END -->