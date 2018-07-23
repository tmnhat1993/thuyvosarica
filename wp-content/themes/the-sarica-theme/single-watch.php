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
                                            echo '<img src="'. $value['url'] .'">';
                                            echo '</div>';
                                        } else {
                                            echo '<div class="img-item thumb-nail-item item-'.($key + 1).'">';
                                            echo '<img src="'. $value['url'] .'">';
                                            echo '</div>';
                                        }
                                    } ?>
                                </div>
                                <!-- Main image column - END -->

                                <!-- Main image column -->
                                <div class="image-view__main-img col-md-10">
                                    <div class="img-item main-img-item">
                                        <img src="<?php echo $imageArray[0]['url']; ?>">
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

    <!-- Modal Order Form -->
    <div class="modal order-product-modal" tabindex="-1" role="dialog" id="orderModal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Đặt mua sản phẩm</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form method="post" action="<?php echo esc_url( admin_url('admin-post.php') ); ?>">
                    <div class="modal-body">
                        <div class="row product-simple-content">
                            <div class="col-sm-4 product-img">
                                <?php
                                if(has_post_thumbnail()){
                                    echo '<img src="'.get_the_post_thumbnail_url().'">';
                                } else {
                                    if(count($imageArray) >0){
                                        echo '<img src="'.$imageArray[0]['url'].'">';
                                    } else {
                                        echo '<img src="' . get_theme_file_uri('assets/img/img_not_available.jpg') . '">';
                                    }
                                }
                                ?>
                                <img src="<?php echo get_the_post_thumbnail_url(); ?>">
                            </div>
                            <div class="col-sm-8 product-content">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <h3 class="product-name"><?php the_title(); ?></h3>
                                    </div>
                                    <div class="col-md-6 left-side">
                                        <?php if( $product_sale > 0 ) {
                                            $new_price = $product_price - ($product_price) * $product_sale / 100;
                                            echo '<p class="old-price">'.number_format( $product_price, 0,'', ',' ).' VNĐ</p>';
                                            echo '<p class="new-price">'.number_format(  $new_price, 0,'', ',' ).' VNĐ</p>';
                                        } else {
                                            echo '<p class="new-price">'.process_price( $product_price ).'</p>';
                                        } ?>
                                        <div class="form-row">
                                            <label for="quantity" class="col-sm-6 col-form-label">Số lượng: </label>
                                            <div class="col-sm-6">
                                                <input type="number"
                                                       name="quantity"
                                                       id="quantity-input"
                                                       value = 1
                                                       min="1" max="99"
                                                       class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <p class="extra-list-head">Chi tiết</p>
                                        <ul class="extra-content">
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
                                </div>
                            </div>
                        </div>
                        <input type="hidden" name="action" value="process_order_form">
                        <input type="hidden" name="target_order" value=<?php echo get_the_ID(); ?>>
                        <input type="hidden" name="target_link" value=<?php echo get_the_permalink(); ?>>
                        <div class="form-row">
                            <label for="name" class="col-sm-4 col-form-label">Name:</label>
                            <div class="col-sm-8">
                                <input type="text"
                                       name="name"
                                       id="name-input"
                                       class="form-control">
                            </div>
                        </div>
                        <div class="form-row">
                            <label for="email" class="col-sm-4 col-form-label">Email:</label>
                            <div class="col-sm-8">
                                <input type="text"
                                       class="form-control"
                                       name="email"
                                       id="email-input">
                            </div>
                        </div>
                        <div class="form-row">
                            <label for="phone" class="col-sm-4 col-form-label">Phone Number: </label>
                            <div class="col-sm-8">
                                <input type="text"
                                       class="form-control"
                                       name="phone"
                                       id="phone-input">
                            </div>
                        </div>
                        <p class="txt-italic">
                            <small>
                                Chúng tôi sẽ liên lạc trực tiếp với bạn theo thông tin liên hệ
                                để xác nhận thông tin đặt hàng. Saric Shop chân thành cám ơn
                                khách hàng đã tin tưởng ủng hộ.
                            </small>
                        </p>
                    </div>
                    <div class="modal-footer">
                        <input type="submit"
                               name="submit"
                               class="btn btn--custom btn--orange btn--square"
                               value="ĐẶT MUA NGAY">
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Modal Order Form - END -->

    <?php } ?>

<?php
    get_footer()
?>