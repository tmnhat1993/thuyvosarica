<?php
get_header(); ?>

<!-- Banner -->
<div id="banner">
    <div class="container">
        <div class="banner sm-padding">
            <!-- Banner image -->
            <div class="banner__main-img">

            </div>
            <!-- Banner image -->

            <!-- Banner content -->
            <div class="banner__content text-left">
                <h1>Tin Tức</h1>
                <hr>
                <p class="opc-7">Thông tin mới nhất, mẹo hay được cập nhật thường xuyên</p>
            </div>
            <!-- Banner Content -->
        </div>
    </div>
</div>
<!-- Banner -->

<!-- News Main Content -->
<div class="container news-content">

    <!-- News Content Item -->
    <div class="container">
        <div class = "row">
            <div class="col-md-9">
                <!-- Row -->
                <div class="row">

                    <?php while(have_posts()){
                        the_post(); ?>
                        <!-- Product Description -->
                        <div class="col-sm-12  news-content-item">
                            <!-- News Col Heading -->
                            <div class="custom-heading post-heading disabled-border text-left full-width">
                                <a href="#"><h3><?php the_title(); ?></h3></a>

                                <div class="sub-heading-news-content">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <p>Đăng ngày: <b><?php echo get_the_date('d/m/Y'); ?></b></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- News Col Heading -->

                            <!-- Main Content -->
                            <div class="excerpt-content">
                                <div class="row">
                                    <?php if(has_post_thumbnail()) { ?>
                                        <div class="col-sm-5 excerpt-thumbnail">
                                            <div class="excerpt-thumbnail-holder">
                                                <img src="<?php echo get_the_post_thumbnail_url(); ?>">
                                            </div>
                                        </div>

                                        <div class="col-sm-7 excerpt-context">
                                            <p>
                                                <?php if(has_excerpt()){
                                                    the_excerpt();
                                                } else {
                                                    wp_trim_words( get_the_content(), 60);
                                                }?>
                                            </p>
                                        </div>
                                    <?php } else { ?>
                                        <div class="col-sm-12 excerpt-context">
                                            <p>
                                                <?php if(has_excerpt()){
                                                    the_excerpt();
                                                } else {
                                                    wp_trim_words( get_the_content(), 60);
                                                }?>
                                            </p>
                                        </div>

                                    <?php }?>

                                </div>
                            </div>
                            <!-- Main Content - END -->
                        </div>
                        <!-- Product Description - END -->
                        <?php } ?>

                    <!-- Product Description -->
                    <div class="col-sm-12  news-content-item">
                        <!-- News Col Heading -->
                        <div class="custom-heading post-heading disabled-border text-left full-width">
                            <a href="#"><h3>News Number 1</h3></a>

                            <div class="sub-heading-news-content">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <p>Đăng ngày: <b>01/05/2018</b></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- News Col Heading -->

                        <!-- Main Content -->
                        <div class="excerpt-content">
                            <div class="row">
                                <div class="col-sm-5 excerpt-thumbnail">
                                    <div class="excerpt-thumbnail-holder">
                                        <img src="img/IMG_6955.JPG">
                                    </div>
                                </div>

                                <div class="col-sm-7 excerpt-context">
                                    <p>
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                        incididunt ut labore et dolore magna aliqua. Ut enim ad
                                        minim veniam, quis nostrud exercitation ullamco laboris
                                        nisi ut aliquip ex ea commodo consequat. Duis aute irure
                                        dolor in reprehenderit in voluptate velit esse cillum dolore
                                        eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                                        non proident, sunt in culpa qui officia deserunt mollit anim
                                        id est laborum."
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- Main Content - END -->
                    </div>
                    <!-- Product Description - END -->

                    <!-- Product Description -->
                    <div class="col-sm-12  news-content-item">
                        <!-- News Col Heading -->
                        <div class="custom-heading post-heading disabled-border text-left full-width">
                            <a href="#"><h3>News Number 1</h3></a>

                            <div class="sub-heading-news-content">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <p>Đăng ngày: <b>01/05/2018</b></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- News Col Heading -->

                        <!-- Main Content -->
                        <div class="excerpt-content">
                            <div class="row">
                                <div class="col-sm-5 excerpt-thumbnail">
                                    <div class="excerpt-thumbnail-holder">
                                        <img src="img/IMG_6955.JPG">
                                    </div>
                                </div>

                                <div class="col-sm-7 excerpt-context">
                                    <p>
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                        incididunt ut labore et dolore magna aliqua. Ut enim ad
                                        minim veniam, quis nostrud exercitation ullamco laboris
                                        nisi ut aliquip ex ea commodo consequat. Duis aute irure
                                        dolor in reprehenderit in voluptate velit esse cillum dolore
                                        eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                                        non proident, sunt in culpa qui officia deserunt mollit anim
                                        id est laborum."
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- Main Content - END -->
                    </div>
                    <!-- Product Description - END -->

                    <!-- Product Description -->
                    <div class="col-sm-12  news-content-item">
                        <!-- News Col Heading -->
                        <div class="custom-heading post-heading disabled-border text-left full-width">
                            <a href="#"><h3>News Number 1</h3></a>

                            <div class="sub-heading-news-content">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <p>Đăng ngày: <b>01/05/2018</b></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- News Col Heading -->

                        <!-- Main Content -->
                        <div class="excerpt-content">
                            <div class="row">
                                <div class="col-sm-5 excerpt-thumbnail">
                                    <div class="excerpt-thumbnail-holder">
                                        <img src="img/IMG_6955.JPG">
                                    </div>
                                </div>

                                <div class="col-sm-7 excerpt-context">
                                    <p>
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                        incididunt ut labore et dolore magna aliqua. Ut enim ad
                                        minim veniam, quis nostrud exercitation ullamco laboris
                                        nisi ut aliquip ex ea commodo consequat. Duis aute irure
                                        dolor in reprehenderit in voluptate velit esse cillum dolore
                                        eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                                        non proident, sunt in culpa qui officia deserunt mollit anim
                                        id est laborum."
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- Main Content - END -->
                    </div>
                    <!-- Product Description - END -->

                </div>
                <!-- Row - END -->

                <!-- Row -->
                <div class="row navigation-news">
                    <div class="col-sm-6 prev-col">
                        <a href="#">Bài viết mới</a>
                    </div>
                    <div class="col-sm-6 next-col text-right">
                        <a href="#">Bài viết cũ</a>
                    </div>
                </div>
                <!-- Row - END -->
            </div>

            <!-- Sidebar -->
            <div class="col-sm-3">
                <!-- News Col Heading -->
                <div class="custom-heading no-dash disabled-border text-left full-width">
                    <h3>Bài viết liên quan</h3>
                </div>
                <!-- News Col Heading -->

                <!-- Related Post -->
                <div class="related-post-holder">

                    <!-- Post item -->
                    <div class="post-item">

                        <!-- Post item thumbnail -->
                        <div class="post-item__thumbnail">
                            <img src="img/IMG_6955.JPG" class="img-fluid">
                        </div>
                        <!-- Post item thumbnail - END -->

                        <!-- Post item content -->
                        <div class="post-item__content">
                            <h3 class="post-item__content__title">
                                Giảm giá cuối tuần
                            </h3>
                            <p class="post-item__content__excerpt">
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                                sed do eiusmod tempor incididunt ut labore et dolore magna"
                            </p>
                            <a class="post-item__content__cta" href="#">
                                Tìm hiểu ngay
                            </a>
                        </div>
                        <!-- Post item content - END -->
                    </div>
                    <!-- Post item - END -->

                    <!-- Post item -->
                    <div class="post-item">

                        <!-- Post item thumbnail -->
                        <div class="post-item__thumbnail">
                            <img src="img/IMG_6955.JPG" class="img-fluid">
                        </div>
                        <!-- Post item thumbnail - END -->

                        <!-- Post item content -->
                        <div class="post-item__content">
                            <h3 class="post-item__content__title">
                                Giảm giá cuối tuần
                            </h3>
                            <p class="post-item__content__excerpt">
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                                sed do eiusmod tempor incididunt ut labore et dolore magna"
                            </p>
                            <a class="post-item__content__cta" href="#">
                                Tìm hiểu ngay
                            </a>
                        </div>
                        <!-- Post item content - END -->
                    </div>
                    <!-- Post item - END -->
                </div>
                <!-- Related Post - END -->


                <!-- News Col Heading -->
                <div class="custom-heading no-dash disabled-border text-left full-width">
                    <h3>Facebook</h3>
                </div>
                <!-- News Col Heading -->
                <div class="facebook-holder">
                    <div class="fb-page"
                         data-href="https://www.facebook.com/facebook"
                         data-tabs="timeline"
                         data-small-header="false"
                         data-adapt-container-width="true"
                         data-hide-cover="false"
                         data-height="130"
                         data-show-facepile="true">
                        <blockquote cite="https://www.facebook.com/facebook" class="fb-xfbml-parse-ignore">
                            <a href="https://www.facebook.com/facebook">Facebook</a>
                        </blockquote>
                    </div>
                </div>

                <!-- News Col Heading -->
                <div class="custom-heading no-dash disabled-border text-left full-width">
                    <h3>Thông tin liên hệ</h3>
                </div>
                <div class="conent">
                    <p>
                        Hotline: <b>094 3843868</b>
                    </p>
                    <p>
                        Email liên hệ:
                        <a href="mailto:webmaster@example.com">
                            <b>tmnhat1993@gmail.com</b>
                        </a>
                    </p>
                    <p>
                        Zalo Page:
                        <a href="javascript:;">
                            <b>zalo@gmail.com</b>
                        </a>
                    </p>
                </div>
            </div>
            <!-- Sidebar - END -->
        </div>
    </div>
    <!-- News Content Item - END -->

</div>
<!-- Product Detail Content - END -->

<?php
get_footer();
?>