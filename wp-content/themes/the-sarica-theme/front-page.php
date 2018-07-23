<?php
get_header();

$showType = get_field('home_page_news');
$youtubeClip = get_field('youtube_clip');
?>

    <!-- Banner -->
    <div id="banner">
        <div class="container">
            <div class="banner">
                <!-- Banner image -->
                <div class="banner__main-img">

                </div>
                <!-- Banner image -->

                <!-- Banner content -->
                <div class="banner__content text-center">
                    <h1><?php echo get_field('home_banner_title'); ?></h1>
                    <?php if(get_field('home_sub_banner_title') != ''){
                        echo '<p>'.get_field('home_sub_banner_title').'</p>';
                    } else {
                        echo '<p>'.get_the_content().'</p>';
                    } ?>

                    <div class="banner__call-to-action">
                        <a href="<?php echo site_url('/products'); ?>"
                           class="btn btn--custom btn--orange btn--lg btn--square">
                            KHÁM PHÁ NGAY
                        </a>
                    </div>
                </div>
                <!-- Banner Content -->
            </div>
        </div>
    </div>
    <!-- Banner -->



    <!-- Sub banner -->
    <div class="section mag-top-0">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-lg-6">
                    <a href="<?php echo get_post_type_archive_link('watch'); ?>">
                        <div class="card-highlight">
                            <div class="card-highlight__img-holder">
                                <img src="<?php echo get_theme_file_uri('assets/img/watch.jpg'); ?>">
                            </div>
                            <div class="card-highlight__content-holder">
                                <h3 class="title">ĐỒNG HỒ</h3>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-12 col-md-6">

                    <div class="card-highlight">
                        <a href="<?php echo get_post_type_archive_link('glass');?>">

                            <div class="card-highlight__img-holder">
                                <img src="<?php echo get_theme_file_uri('assets/img/glasses.jpg'); ?>">
                            </div>

                            <div class="card-highlight__content-holder">
                                <h3 class="title">MẮT KIẾNG</h3>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Sub banner -->


    <!-- New Product -->
    <?php
    $newProduct = new WP_Query(array(
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

    if($newProduct->have_posts()){ ?>
        <div class="products-group section">

            <div class="container">

                <div class="row">
                    <div class="col-md-12">
                        <div class="custom-heading all-prod">
                            <h3>
                                KHUYẾN MÃI
                            </h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <?php
                    while($newProduct->have_posts()){
                        $newProduct->the_post();

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

                <div class="product-cta text-center">
                    <a href="<?php echo site_url('/products');?>">Xem Toàn Bộ</a>
                </div>
            </div><!-- Container -->
        </div>
        <!-- Product List -->

    <?php }

    wp_reset_postdata();
    ?>
    <!-- New Product -->

    <?php
    /* Query for 4 new watches */
    $newWatches = new WP_Query(array(
        'post_type'=>'watch',
        'posts_per_page' => 4,
    ));
    if($newWatches->have_posts()){ ?>
        <div class="products-group section">

            <div class="container">

                <div class="row">
                    <div class="col-md-12">
                        <div class="custom-heading all-prod">
                            <h3>
                                ĐỒNG HỒ MỚI
                            </h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <?php
                    while($newWatches->have_posts()){
                        $newWatches->the_post();

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

                <div class="product-cta text-center">
                    <a href="<?php echo get_post_type_archive_link('watch');?>">Xem Toàn Bộ</a>
                </div>
            </div><!-- Container -->
        </div>
        <!-- Product List -->

    <?php }

    wp_reset_postdata();
    ?>

    <?php
    /* Query for 4 new watches */
    $newWatches = new WP_Query(array(
        'post_type'=>'glass',
        'posts_per_page' => 4,
    ));
    if($newWatches->have_posts()){ ?>
        <div class="products-group section">

            <div class="container">

                <div class="row">
                    <div class="col-md-12">
                        <div class="custom-heading all-prod">
                            <h3>
                                MẮT KÍNH MỚI
                            </h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <?php
                    while($newWatches->have_posts()){
                        $newWatches->the_post();

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
                                        <!-- Product main content -->
                                        <p class="product-item__content__sub-content">
                                                <span class="strikethrough">
                                                    &nbsp;
                                                </span>
                                        </p><!-- Product main content -->
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

                <div class="product-cta text-center">
                    <a href="<?php echo get_post_type_archive_link('glass');?>">Xem Toàn Bộ</a>
                </div>
            </div><!-- Container -->
        </div>
        <!-- Product List -->

    <?php }

    wp_reset_postdata();
    ?>


    <div class="news-section jumbotron jumbotron-fluid section mag-bot-0 no-pad-top">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-lg-9 news-col">

                    <!-- News Section -->
                    <?php
                    $newPosts = new WP_Query(array(
                        'post_type'=>'post',
                        'post_per_page'=> 3
                    ));

                    if($newPosts->have_posts() && $showType == 'news'){
                        ?>
                        <!-- News Col Heading -->
                        <div class="custom-heading no-dash disabled-border text-left full-width">
                            <h3>Tin tức </h3>
                        </div>
                        <!-- News Col Heading - END -->

                        <!-- News Container -->
                        <div class="news-container">
                            <?php
                            while($newPosts->have_posts()) {
                                $newPosts->the_post();

                                if (has_post_thumbnail()) {
                                    ?>
                                    <!-- News row -->
                                    <div class="row news-item">
                                        <!-- Image Holder -->
                                        <div class="col-sm-4 img-holder">
                                            <a href="<?php echo get_permalink(); ?>">
                                                <img src="<?php echo get_the_post_thumbnail_url(); ?>"
                                                     class="img-fluid" alt="Responsive image">
                                            </a>
                                        </div>
                                        <!-- Image Holder - END -->

                                        <!-- News Content -->
                                        <div class="col-sm-8 content-holder">
                                            <h4>
                                                <a href ="<?php echo get_permalink();?>">
                                                    <?php the_title(); ?>
                                                </a>
                                            </h4>
                                            <p class="excerpt">
                                                <?php
                                                echo wp_trim_words(70, get_the_content());
                                                ?>
                                            </p>
                                        </div>
                                        <!-- News Content - END -->
                                    </div><!-- News row - END -->

                                <?php } else {
                                    ?>

                                    <!-- News row -->
                                    <div class="row news-item">
                                        <!-- News Content -->
                                        <div class="col-sm-12 content-holder">
                                            <h4>
                                                <a href ="<?php echo get_permalink();?>">
                                                    <?php the_title(); ?>
                                                </a>
                                            </h4>
                                            <p class="excerpt">
                                                <?php
                                                echo wp_trim_words(get_the_content(), 50);
                                                ?>
                                            </p>
                                        </div>
                                        <!-- News Content - END -->
                                    </div><!-- News row - END -->

                                    <?php
                                }
                            } ?>
                            <!-- Call To Action -->
                            <div class="col-xs-12 mag-top-30 no-pad">
                                <a href="<?php echo site_url('/blog');?>"
                                   class="btn btn--custom btn-block btn--orange btn--square">
                                    Xem thêm
                                </a>
                            </div>

                        </div>
                        <!-- News Container - END -->
                        <?php
                    } else { ?>
                        <!-- News Col Heading -->
                        <div class="custom-heading no-dash disabled-border text-left full-width">
                            <h3>Giới thiệu The Saric Shop</h3>
                        </div>
                        <!-- News Container -->
                        <div class="news-container">
                            <iframe width="100%"
                                    height="550"
                                    src="https://www.youtube.com/embed/<?php echo $youtubeClip ?>"
                                    frameborder="0" allow="autoplay; encrypted-media" allowfullscreen>

                            </iframe>
                        </div>
                        <!-- News Col Heading - END -->
                    <?php }
                    wp_reset_postdata();
                    ?>
                </div>
                <div class="col-sm-12 col-lg-3 sale-col">
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
                </div>
            </div><!-- Row -->
        </div><!-- Container -->
    </div>
    <!-- News Section -->

<?php
get_footer();
?>