<?php get_header();

while(have_posts()){
    the_post();
    $product_name = get_the_title();
    $product_description = get_the_content();
    $product_price = get_field('product_price');
    $product_sale = get_field('product_sale');
    $product_colors = get_field('product_color');
    $product_quantity = get_field('product_quantity');
    $product_image_1 = get_field('product_image_1');
    $product_image_2 = get_field('product_image_2');
    $product_image_3 = get_field('product_image_3');
    $product_image_4 = get_field('product_image_4');

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
                                <!-- Thumbnail image column -->
                                <div class="image-view__thumbnail-img col-md-2">
                                    <div class="img-item thumb-nail-item item-1 active">
                                        <img src="img/IMG_6955.JPG">
                                    </div>
                                    <div class="img-item thumb-nail-item item-2">
                                        <img src="img/IMG_6955.JPG">
                                    </div>
                                    <div class="img-item thumb-nail-item item-3">
                                        <img src="img/IMG_6955.JPG">
                                    </div>
                                    <div class="img-item thumb-nail-item item-4">
                                        <img src="img/IMG_6955.JPG">
                                    </div>
                                </div>
                                <!-- Main image column - END -->

                                <!-- Main image column -->
                                <div class="image-view__main-img col-md-10">
                                    <div class="img-item main-img-item">
                                        <img src="img/IMG_6955.JPG">
                                    </div>
                                </div>
                                <!-- Main image column - END -->
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
                                <li>Size: <b>30mm</b></li>
                                <li><b>Dây da</b></li>
                                <li><b>Mặt kính sapphire</b></li>
                                <li>Chống nước: <b>3ATM</b></li>
                                <li>Bảo hành: <b>6 tháng</b></li>
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

                <div class="col-sm-4">
                    <!-- News Col Heading -->
                    <div class="custom-heading no-dash disabled-border text-left full-width">
                        <h3>Sản phẩm khác</h3>
                    </div>
                    <!-- News Col Heading -->

                    <div class="product-column">
                        <!-- Product Item -->
                        <div class="product-item item-small">

                            <!-- Product Image -->
                            <div class="product-item__img">
                                <img src="img/IMG_6955.JPG"
                                     alt="Card image cap">

                                <!-- Product hidden content -->
                                <div class="product-item__hidden-content">
                                    <ul class="product-item__hidden-content__detail">
                                        <li>Size: <b>30mm</b></li>
                                        <li><b>Dây da</b></li>
                                        <li><b>Mặt kính sapphire</b></li>
                                        <li>Chống nước: <b>3ATM</b></li>
                                        <li>Bảo hành: <b>6 tháng</b></li>
                                    </ul>
                                </div>
                                <!-- Product hidden content -->

                            </div>
                            <!-- Product Image - end -->

                            <!-- Product item content -->
                            <div class="product-item__content">
                                <!-- Product name -->
                                <h4 class="product-item__content__title-content">
                                    Product name num 1
                                </h4><!-- Product name -->

                                <!-- Product main content -->
                                <p class="product-item__content__sub-content">
                                    Sub information
                                </p><!-- Product main content -->

                                <!-- Product main content -->
                                <p class="product-item__content__main-content">
                                    300.000 VND
                                </p><!-- Product main content -->
                            </div>
                            <!-- Product item content - END -->

                        </div>
                        <!-- Product item - End -->

                        <!-- Product Item -->
                        <div class="product-item item-small">

                            <!-- Product Image -->
                            <div class="product-item__img">
                                <img src="img/IMG_6955.JPG"
                                     alt="Card image cap">

                                <!-- Product hidden content -->
                                <div class="product-item__hidden-content">
                                    <ul class="product-item__hidden-content__detail">
                                        <li>Size: <b>30mm</b></li>
                                        <li><b>Dây da</b></li>
                                        <li><b>Mặt kính sapphire</b></li>
                                        <li>Chống nước: <b>3ATM</b></li>
                                        <li>Bảo hành: <b>6 tháng</b></li>
                                    </ul>
                                </div>
                                <!-- Product hidden content -->

                            </div>
                            <!-- Product Image - end -->

                            <!-- Product item content -->
                            <div class="product-item__content">
                                <!-- Product name -->
                                <h4 class="product-item__content__title-content">
                                    Product name num 1
                                </h4><!-- Product name -->

                                <!-- Product main content -->
                                <p class="product-item__content__sub-content">
                                    Sub information
                                </p><!-- Product main content -->

                                <!-- Product main content -->
                                <p class="product-item__content__main-content">
                                    300.000 VND
                                </p><!-- Product main content -->
                            </div>
                            <!-- Product item content - END -->

                        </div>
                        <!-- Product item - End -->

                        <!-- Product Item -->
                        <div class="product-item item-small">

                            <!-- Product Image -->
                            <div class="product-item__img">
                                <img src="img/IMG_6955.JPG"
                                     alt="Card image cap">

                                <!-- Product hidden content -->
                                <div class="product-item__hidden-content">
                                    <ul class="product-item__hidden-content__detail">
                                        <li>Size: <b>30mm</b></li>
                                        <li><b>Dây da</b></li>
                                        <li><b>Mặt kính sapphire</b></li>
                                        <li>Chống nước: <b>3ATM</b></li>
                                        <li>Bảo hành: <b>6 tháng</b></li>
                                    </ul>
                                </div>
                                <!-- Product hidden content -->

                            </div>
                            <!-- Product Image - end -->

                            <!-- Product item content -->
                            <div class="product-item__content">
                                <!-- Product name -->
                                <h4 class="product-item__content__title-content">
                                    Product name num 1
                                </h4><!-- Product name -->

                                <!-- Product main content -->
                                <p class="product-item__content__sub-content">
                                    Sub information
                                </p><!-- Product main content -->

                                <!-- Product main content -->
                                <p class="product-item__content__main-content">
                                    300.000 VND
                                </p><!-- Product main content -->
                            </div>
                            <!-- Product item content - END -->

                        </div>
                        <!-- Product item - End -->
                    </div>
                </div>
                <!-- Product Description - END -->
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