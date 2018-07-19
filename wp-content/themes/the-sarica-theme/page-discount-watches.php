<?php get_header();

$discountWatches = new WP_Query(array(
    'post_type' => 'watch',
    'posts_per_page' => -1,
    'meta_query' => array(
        array(
            'key'     => 'product_sale',
            'value'   => 0,
            'compare' => '>',
        ),
    ),
))
?>

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
                <h1>Khuyến mãi</h1>
                <hr>
                <p class="opc-7">Tất cả đồng hồ khuyến mãi được cập nhật thường xuyên</p>
            </div>
            <!-- Banner Content -->
        </div>
    </div>
</div>
<!-- Banner -->

<!-- Product List -->
<div class="products-group section">
    <div class="container">

        <div class="row">
            <div class="col-md-12">
                <div class="custom-heading glasses-prod">
                    <h3>
                        ĐỒNG HỒ KHUYẾN MÃI
                    </h3>
                </div>
            </div>
        </div>


        <div class="row">

            <?php if($discountWatches->have_posts()){
                while($discountWatches->have_posts()){
                $discountWatches->the_post();

                $productSale = get_field('product_sale');
                $productPrice = get_field('product_price');
                $productMaintain = get_field('product_maintain');


                //<editor-fold desc="Product Image">
                    $imageURL = '';

                    for($i = 1; $i <= 4; $i++){
                        $tempValue = get_field('product_image_'.$i);
                        if($tempValue AND $imageURL == ''){
                            $imageURL = $tempValue['url'];
                        }
                    }

                    if($imageURL == ''){
                        $imageURL = get_theme_file_uri('assets/img/IMG_6955.JPG');
                    }
                    //</editor-fold>

                    $productExtraDetail = array();
                    for($i = 1; $i <= 6; $i++){
                        $tempValue = get_field('product_extra_'.$i);
                        if($tempValue){
                            array_push($productExtraDetail, $tempValue);
                        }
                    }

                ?>

                <div class= "col-md-3 col-sm-6">
                    <!-- Product Item -->
                    <div class="product-item">

                        <!-- Product Image -->
                        <div class="product-item__img">
                            <img src="<?php echo $imageURL; ?>"
                                 alt="Card image cap">

                            <!-- Product hidden content -->
                            <div class="product-item__hidden-content">
                                <ul class="product-item__hidden-content__detail">
                                    <?php
                                        if($productMaintain > 0){
                                            echo '<li>Bảo hành: <b>'.$productMaintain.' tháng</b></li>';
                                        }

                                        foreach($productExtraDetail as $detail){
                                            echo '<li>'.$detail.'</li>';
                                        }
                                    ?>

                                    <li>Size: <b>30mm</b></li>

                                </ul>
                            </div>
                            <!-- Product hidden content -->

                        </div>
                        <!-- Product Image - end -->

                        <!-- Product item content -->
                        <div class="product-item__content">
                            <!-- Product name -->
                            <h4 class="product-item__content__title-content">
                                <?php the_title(); ?>
                            </h4><!-- Product name -->

                            <?php
                            if( $productSale > 0 ) {
                                $new_price = $productPrice - ($productPrice) * $productSale / 100; ?>

                                <!-- Product main content -->
                                <p class="product-item__content__sub-content">
                                    <?php echo number_format( $productPrice, 0,'', ',' ); ?> VNĐ
                                </p><!-- Product main content -->

                                    <!-- Product main content -->
                                <p class="product-item__content__main-content">
                                    <?php echo number_format($new_price, 0, '',','); ?> VNĐ
                                </p><!-- Product main content -->

                                <?php }?>


                        </div>
                        <!-- Product item content - END -->

                        <!-- Product item call to action -->
                        <div class="product-item__cta">
                            <a class="btn btn--custom btn--orange btn--square"
                               href="<?php echo get_permalink(); ?>">
                                MUA NGAY
                            </a>
                        </div>
                        <!-- Product item call to action - END -->

                    </div>
                    <!-- Product item - End -->
                </div>
            <?php
                }
            }?>


        </div><!-- Row -->

        <div class="product-cta text-center">
            <a href="#">Mắt Kiếng Khuyến Mãi </a>
        </div>

    </div><!-- Container -->
</div>
<!-- Product List -->

<?php get_footer();?>
