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
                                <a href="<?php echo get_permalink(); ?>">
                                    <h3><?php the_title(); ?></h3>
                                </a>

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
                                    <?php if(has_post_thumbnail(get_the_ID())) { ?>
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
                                                    echo wp_trim_words(get_the_content(), 100);
                                                }?>
                                            </p>
                                        </div>
                                    <?php } else { ?>
                                        <div class="col-sm-12 excerpt-context">
                                            <p>
                                                <?php
                                                if(has_excerpt() && get_the_excerpt() !== ''){
                                                    the_excerpt();
                                                }else{
                                                   echo wp_trim_words(get_the_content(), 100);
                                                }
                                                ?>
                                            </p>
                                            <div class="cta">
                                                <a class="see-more" href="<?php echo get_permalink(); ?>">
                                                    Xem thêm
                                                </a>
                                            </div>
                                        </div>

                                    <?php }
                                    ?>

                                </div>
                            </div>
                            <!-- Main Content - END -->
                        </div>
                        <!-- Product Description - END -->
                        <?php } ?>
                </div>
                <!-- Row - END -->

                <!-- Row -->
                <div class="row navigation-news">

                    <?php posts_nav_link(' ','Bài viết mới','Bài viết cũ'); ?>
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