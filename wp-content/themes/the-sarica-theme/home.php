<?php
get_header(); ?>

<!-- Banner -->
<div id="banner"
    style="background-image: url('<?php echo get_theme_file_uri("assets/img/blog-banner.jpg"); ?>')">
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
                                            <div class="cta">
                                                <a class="see-more" href="<?php echo get_permalink(); ?>">
                                                    Xem thêm
                                                </a>
                                            </div>
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
            <div class="col-sm-3 sidebar">

                <!-- New Product -->
                <?php
                $saleProduct = new WP_Query(array(
                    'post_type' => array('watch', 'glass'),
                    'posts_per_page' => 4,
                    'meta_query' => array(
                        array(
                            'key' => 'product_sale',
                            'compare' => '>',
                            'value' => 0,
                        )
                    )
                ));

                if($saleProduct->have_posts()){

                    ?>
                    <!-- News Col Heading -->
                    <div class="custom-heading no-dash disabled-border text-left full-width">
                        <h3>Khuyến mãi</h3>
                    </div>
                    <!-- News Col Heading -->
                    <div class="sale-holder">
                        <!-- Sale slider -->
                        <div class="sale-slider">
                            <?php while($saleProduct->have_posts()){
                                $saleProduct->the_post();

                                $productSale = get_field('product_sale');
                                $productPrice = get_field('product_price');
                                //<editor-fold desc="Product Image">
                                $productImage = '';

                                if(has_post_thumbnail(get_the_ID())){
                                    $productImage = get_the_post_thumbnail_url();
                                } else {
                                    for($i = 1; $i <= 4; $i++){
                                        $tempValue = get_field('product_image_'.$i);
                                        if($tempValue AND $productImage == ''){
                                            $productImage = $tempValue['url'];
                                        }
                                    }
                                }

                                if($productImage == ''){
                                    if(get_post_type() == 'watch'){
                                        $productImage = get_theme_file_uri('assets/img/IMG_6955.JPG');
                                    } else {
                                        $productImage = get_theme_file_uri('assets/img/IMG_8358.JPG');
                                    }
                                }
                                //</editor-fold>

                                ?>
                                <!-- Sale slider item -->
                                <div class="sale-item">
                                    <div class="sale-item__img">
                                        <img src="<?php echo $productImage; ?>">
                                    </div>
                                    <div class="sale-item__content">
                                        <p class="sale-detail">
                                            <?php echo get_the_title().' Sale off '.$productSale.'%'?>
                                        </p>
                                        <div class="price-holder">
                                            <p class="old-price">
                                                <?php echo number_format($productPrice,0,'',',') ?> VND
                                            </p>
                                            <p class="new-price">
                                                <?php echo number_format(
                                                    $productPrice - ($productPrice)*$productSale/100,
                                                    0,'',',') ?> VND
                                                VNĐ
                                            </p>
                                        </div>
                                        <div class="sale-item cta">
                                            <a href="<?php echo get_permalink();?>"
                                               class="btn btn--custom btn--orange btn--square mt-10">
                                                MUA NGAY
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Sale Slider item -->

                            <?php }?>
                        </div>

                    </div>
                <?php } ?>

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