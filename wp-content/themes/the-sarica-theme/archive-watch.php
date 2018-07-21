<?php
get_header();
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
                <h1>ĐỒNG HỒ MỚI NHẤT</h1>
                <hr>
                <p class="opc-7">
                    Đồng hồ thời trang với giá tốt nhất
                </p>
                <div class="cta">
                    <a class="btn btn--custom btn--orange btn--square"
                        href="<?php echo site_url('/discount-watch') ?>">
                        XEM KHUYẾN MÃI ĐỒNG HỒ
                    </a>
                </div>
            </div>
            <!-- Banner Content -->
        </div>
    </div>
</div>
<!-- Banner -->

<?php
if(have_posts()){ ?>
    <div class="products-group section">

        <div class="container">

            <div class="row">
                <div class="col-md-12">
                    <div class="custom-heading all-prod">
                        <h3>
                            ĐỒNG HỒ
                        </h3>
                    </div>
                </div>
            </div>
            <div class="row">

                <!-- Link to other route -->
                <div class="col-sm-12">
                    <div class="tag-holder">
                        <ul class="tag-list">
                            <li class="tag-item active">
                                <a>
                                    ĐỒNG HỒ
                                </a>
                            </li>
                            <li class="tag-item">
                                <a href="<?php echo get_post_type_archive_link('glass'); ?>">
                                    MẮT KÍNH
                                </a>
                            </li>
                            <li class="tag-item">
                                <a href="<?php echo site_url('/products');?>">
                                    TẤT CẢ
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- Link to other Route -->


                <?php
                while(have_posts()){
                    the_post();

                    $productMaintain = get_field('product_maintain');
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

                    $productExtra = array();

                    for($i = 1; $i <= 6; $i++){
                        $tempValue = get_field('product_extra_'.$i);
                        if($tempValue){
                            array_push($productExtra,$tempValue);
                        }
                    }

                    ?>
                    <div class= "col-md-3 col-sm-6">
                        <!-- Product Item -->
                        <div class="product-item">

                            <!-- Product Image -->
                            <div class="product-item__img">
                                <img src="<?php echo $productImage; ?>"
                                     alt="Card image cap">

                                <!-- Product hidden content -->
                                <div class="product-item__hidden-content">
                                    <ul class="product-item__hidden-content__detail">
                                        <?php if($productMaintain > 0){
                                            echo '<li>Bảo hành: <b>'.$productMaintain.' tháng</b></li>';
                                        }
                                        if (count ($productExtra) > 0){
                                            foreach($productExtra as $value){
                                                echo '<li>'.$value.'</li>';
                                            }
                                        }
                                        ?>
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
                                if($productSale > 0){
                                    ?>
                                    <!-- Product main content -->
                                    <p class="product-item__content__sub-content">
                                    <span class="strikethrough">
                                        <?php echo number_format($productPrice, 0,'', ',' ); ?> VNĐ
                                    </span>
                                    </p><!-- Product main content -->

                                        <!-- Product main content -->
                                    <p class="product-item__content__main-content">
                                        <?php echo number_format(
                                            $productPrice - ($productPrice) * $productSale/100,
                                            0,'', ',' ); ?> VNĐ
                                    </p><!-- Product main content -->

                                    <?php
                                } else { ?>
                                    <!-- Product main content -->
                                    <p class="product-item__content__sub-content">
                                                <span class="strikethrough">
                                                    &nbsp;
                                                </span>
                                    </p><!-- Product main content -->
                                        <!-- Product main content -->
                                    <p class="product-item__content__main-content">
                                        <?php echo $productPrice; ?> VNĐ
                                    </p><!-- Product main content -->
                                <?php }
                                ?>
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
                <?php } ?>

            </div><!-- Row -->
        </div><!-- Container -->
    </div>
    <!-- Product List -->
    <div class="container">
        <div class="pagination">
            <?php
            echo paginate_links( array(
                /* We only need this to render the pagination link */
                'total' => $allProduct-> max_num_pages,
                'prev_text' => __('<i class="fa fa-arrow-left" aria-hidden="true"></i>'),
                'next_text' => __('<i class="fa fa-arrow-right" aria-hidden="true"></i>'),
            ));?>
        </div>
    </div>
    <?php
} else {
    ?>

<div class="products-group section">

    <div class="container">

        <div class="row">
            <div class="col-md-12">
                <div class="custom-heading all-prod">
                    <h3>
                        ĐỒNG HỒ
                    </h3>
                </div>
            </div>
        </div>
        <div class="row">
            <h4>Hiện không có sản phẩm đồng hồ nào</h4>
        </div>
    </div>
</div>

<?php }

wp_reset_postdata();
?>

<?php
get_footer();
?>
