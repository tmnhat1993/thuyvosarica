<?php get_header();

while(have_posts()){
    the_post();
    $product_name = get_the_title();
    $product_description = get_the_content();
    $product_price = get_field('product_price');
    $product_sale = get_field('product_sale');
    $product_colors = get_field('product_color');
    $product_quantity = get_field('product_quantity');
    $product_maintain = get_field('product_maintain');

    $product_extra_detail = array();
    for ($i = 0; $i < 6; $i++){
        $tempValue = get_field('product_extra_'.$i);
        if($tempValue){
            array_push($product_extra_detail, get_field('product_extra_'.$i));
        }
    }

    $imageArray = array();
    for ($i = 0; $i < 4; $i++){
        $tempValue = get_field('product_image_'.$i);
        if($tempValue){
            array_push($imageArray, get_field('product_image_'.$i));
        }
    }
    ?>

    <!-- Product Detail Content -->
    <div class="product-detail">

        <div class="product-detail__main-row">
            <div class="container">

                <!-- Main Product Content Row -->
                <div class="row">

                    <!-- Product Image View Component -->
                    <div class="col-md-8 product-detail__image-container">

                        <!-- Image view component -->
                        <div class="container">
                            <div class="image-view row">
                                <?php
                                if(count($imageArray)){ ?>
                                <!-- Thumbnail image column -->
                                <div class="image-view__thumbnail-img col-md-2">
                                    <?php
                                    foreach($imageArray as $key=>$value) {
                                        if( $key == 0 ){
                                            echo '<div class="img-item thumb-nail-item item-1 active">';
                                            echo '<img src="'. $value[url] .'">';
                                            echo '</div>';
                                        } else {
                                            echo '<div class="img-item thumb-nail-item item-'.($key + 1).'">';
                                            echo '<img src="'. $value[url] .'">';
                                            echo '</div>';
                                        }
                                    } ?>
                                </div>
                                <!-- Main image column - END -->

                                <!-- Main image column -->
                                <div class="image-view__main-img col-md-10">
                                    <div class="img-item main-img-item">
                                        <img src="<?php echo $imageArray[0][url]; ?>">
                                    </div>
                                </div>
                                <!-- Main image column - END -->
                                <?php
                                } else {
                                    ?>
                                    <!-- Main image column -->
                                    <div class="image-view__main-img col-md-12">
                                        <div class="img-item main-img-item">
                                            <img src="<?php echo get_theme_file_uri('assets/img/img_not_available.jpg'); ?>">
                                        </div>
                                    </div>
                                    <!-- Main image column - END -->
                                <?php } ?>
                            </div>
                        </div>
                        <!-- Image view component - END -->

                    </div>
                    <!-- Product Image View Component - END -->

                    <!-- Product Basic Detail Main Column -->
                    <div class="col-md-4">
                        <div class="product-title">
                            <h2 class="product-title__title">
                                <?php echo $product_name; ?>
                            </h2>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item">Sản phẩm</li>
                                <li class="breadcrumb-item">Đồng hồ</li>
                            </ul>
                        </div>

                        <!-- Product Price -->
                        <div class="product-price">
                            <?php if( $product_sale > 0 ) {
                                $new_price = $product_price - ($product_price) * $product_sale / 100;
                                echo '<span class="old-price">'.number_format( $product_price, 0,'', ',' ).' VNĐ</span>';
                                echo '<span class="new-price">'.number_format(  $new_price, 0,'', ',' ).' VNĐ</span>';
                            } else {
                                echo '<span class="new-price">'.process_price( $product_price ).'</span>';
                            } ?>
                        </div>
                        <!-- Product Price - END -->


                        <!-- Product Colors -->
                        <div class="product-colors">
                            <p class="detail-title"><b>Màu Sắc</b></p>
                            <?php foreach ($product_colors as $value) {
                              echo '<span class="color-item '.$value.'"></span>';
                            } ?>
                        </div>
                        <!-- Product Colors - END -->


                        <!-- Product Detail -->
                        <div class="product-detail">
                            <p class="detail-title"><b>Chi Tiết</b></p>
                            <ul class="product-detail-list">
                                <?php if($product_maintain){
                                    echo '<li>Bảo hành <b>'.$product_maintain.'tháng</b></li>';
                                }

                                if(count($product_extra_detail)){
                                    foreach($product_extra_detail as $value){
                                        echo '<li>'.$value.'</li>';
                                    }
                                } ?>
                            </ul>
                            <p class="detail-title"><b>Tình trạng</b></p>
                            <ul class="product-detail-list">
                                <?php if( $product_quantity > 0 ) {
                                    echo '<li>Còn hàng</li>';
                                } else {
                                    echo '<li>Hết hàng</li>';
                                }?>
                            </ul>
                        </div>
                        <!-- Product Detail - END -->

                        <!-- Product Call To Action -->
                        <div class="product-call-to-action">
                            <a href="javascript:;" class="buynow-btn">
                                Đặt mua ngay
                            </a>
                            <p class="policy-text">
                                <small class="text-center">
                                    Tham khảo quy trình mua hàng, hình thức thanh toán và chế độ bảo hành
                                </small>
                            </p>
                        </div>
                        <!-- Product Call To Action - END -->
                    </div>
                    <!-- Product Basic Detail Main Column - END -->

                </div>
            </div>
        </div>
        <!-- Main Product Content Row - END -->


        <!-- Main Product Sub Content -->
        <div class="container product-detail__sub-content">

            <!-- Row -->
            <div class="row ">
                <!-- Product Description -->
                <div class="col-sm-8 sub-content__des">
                    <!-- News Col Heading -->
                    <div class="custom-heading no-dash disabled-border text-left full-width">
                        <h3>Mô tả sản phẩm</h3>
                    </div>
                    <!-- News Col Heading -->

                    <!-- Main Content -->
                    <div class="main-content">
                        <?php
                            the_content();
                        ?>
                    </div>
                    <!-- Main Content - END -->
                </div>

                <?php
                /* Custom Queries For Lattest Related Product */
                $extra_sidebar_product = new WP_Query( array (
                    'post_type' => 'watch',
                    'posts_per_page' => 3,
                    'post__not_in' => array(get_the_ID())
                ))
                ?>

                <div class="col-sm-4">
                    <!-- News Col Heading -->
                    <div class="custom-heading no-dash disabled-border text-left full-width">
                        <h3>Sản phẩm khác</h3>
                    </div>
                    <!-- News Col Heading -->

                    <div class="product-column">

                        <?php
                        if($extra_sidebar_product->have_posts()) {
                            while ($extra_sidebar_product->have_posts()){
                                $extra_sidebar_product->the_post();
                                $extra_price = get_field('product_price');
                                $extra_sale = get_field('product_sale');
                                $extra_link = get_permalink();
                                $extra_main_image = get_theme_file_uri('assets/img/IMG_6955.JPG');
                                $extra_detail = array();
                                $extra_maintain = get_field('product_maintain');

                                for($i = 1; $i < 4; $i++){
                                    $tempValue = get_field('product_image_'.$i);
                                    if( $tempValue ){
                                        $extra_main_image = $tempValue[url];
                                    }
                                }

                                for($i = 1; $i < 6; $i++){
                                    $tempValue = get_field('product_extra_'.$i);
                                    if($tempValue){
                                        array_push($extra_detail, $tempValue);
                                    }
                                }
                                ?>
                                <!-- Product Item -->
                                <div class="product-item item-small">

                                    <!-- Product Image -->
                                    <div class="product-item__img">
                                        <img src="<?php echo $extra_main_image; ?>"
                                             alt="Card image cap">

                                        <!-- Product hidden content -->
                                        <div class="product-item__hidden-content">
                                            <ul class="product-item__hidden-content__detail">
                                                <?php
                                                    if($extra_maintain > 0){
                                                        echo '<li>Bảo hành: <b>'.$extra_maintain.' tháng</b></li>';
                                                    }
                                                ?>

                                                <?php
                                                    if(count($extra_detail)){
                                                        foreach($extra_detail as $value){
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
                                        if( $extra_sale > 0 ) {
                                            $new_price = $extra_price - ($extra_price) * $extra_sale / 100; ?>

                                            <!-- Product main content -->
                                            <p class="product-item__content__sub-content">
                                                <?php echo number_format( $extra_price, 0,'', ',' ); ?> VNĐ
                                            </p><!-- Product main content --><!-- Product main content -->
                                            <p class="product-item__content__main-content">
                                                <?php echo number_format($new_price, 0, '',','); ?> VNĐ
                                            </p><!-- Product main content -->

                                            <?php
                                        } else { ?>
                                            <!-- Product main content -->
                                            <p class="product-item__content__main-content">
                                                <?php echo number_format( $extra_price , 0, '', ','); ?> VNĐ
                                            </p><!-- Product main content -->
                                        <?php } ?>

                                    </div>
                                    <!-- Product item content - END -->

                                </div>
                                <!-- Product item - End -->
                                <?php
                            }
                        }
                        ?>
                    </div>
                </div>
                <!-- Product Description - END -->

                <?php
                    wp_reset_postdata();
                ?>

            </div>
            <!-- Row - END -->

        </div>


        <!-- Main Product Sub Content - END -->
    </div>
    <!-- Product Detail Content - END -->

    <?php } ?>

<?php
    get_footer()
?>