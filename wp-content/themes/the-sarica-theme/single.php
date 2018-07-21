<?php get_header(); ?>
<!-- Product Detail Content -->
<div class="blogs-post">

    <!-- Main Product Sub Content -->
    <div class="container product-detail__sub-content">

        <!-- Row -->
        <div class="row ">
            <!-- Product Description -->
            <div class="col-sm-9 sub-content__des">
                <?php
                while(have_posts()){
                the_post();?>
                    <!-- News Col Heading -->
                    <div class="custom-heading post-heading disabled-border text-left full-width">
                        <h3>
                        <?php
                            the_title();
                        ?>
                        </h3>
                    </div>
                    <!-- News Col Heading -->

                    <ul class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="<?php echo site_url('/blog') ?>">
                                Bài Viết
                            </a>
                        </li>
                        <li class="breadcrumb-item">
                            <?php the_title(); ?>
                        </li>
                    </ul>

                    <!-- Main Content -->
                    <div class="main-content">
                        <?php
                        if(has_post_thumbnail(get_the_ID())){
                            echo '<div class="post-featured-image">';
                            echo '<img src ="'.get_the_post_thumbnail_url().'">';
                            echo '</div>';
                        }

                        if(has_excerpt()){
                            echo '<p class ="excerpt">'.get_the_excerpt().'</p>';
                        }
                        the_content();
                        ?>
                    </div>
                    <!-- Main Content - END -->
                <?php
                } ?>
            </div>
            <!-- Product Description - END -->

            <!-- Sidebar -->
            <div class="col-sm-3">
                <?php
                $extraNews = new WP_Query(array(
                    'post_type' => 'post',
                    'posts_per_page' => 3
                ));

                if($extraNews->have_posts()){
                    ?>
                    <!-- News Col Heading -->
                    <div class="custom-heading no-dash disabled-border text-left full-width">
                        <h3>Bài viết mới</h3>
                    </div>
                    <!-- News Col Heading -->
                    <!-- Related Post -->
                    <div class="related-post-holder">

                        <?php
                            while ($extraNews->have_posts()){
                                $extraNews->the_post();?>
                                <!-- Post item -->
                                <div class="post-item">

                                    <!-- Post item thumbnail -->
                                    <?php if(has_post_thumbnail(get_the_ID())){?>
                                    <div class="post-item__thumbnail">
                                        <img src="<?php echo get_the_post_thumbnail_url() ?>"
                                             class="img-fluid">
                                    </div>
                                    <?php }?>
                                    <!-- Post item thumbnail - END -->

                                    <!-- Post item content -->
                                    <div class="post-item__content">
                                        <h3 class="post-item__content__title">
                                            <a href="<?php echo get_permalink(); ?>">
                                            <?php echo wp_trim_words(get_the_title(), 20); ?>
                                            </a>
                                        </h3>
                                        <p class="post-item__content__excerpt">
                                            <?php if(has_excerpt()){
                                                echo wp_trim_words(get_the_excerpt(), 30);
                                            } else {
                                                echo wp_trim_words(get_the_content(), 30);
                                            }
                                            ?>
                                        </p>
                                        <a class="post-item__content__cta"
                                           href="<?php echo get_permalink(); ?>">
                                            Tìm hiểu ngay
                                        </a>
                                    </div>
                                    <!-- Post item content - END -->
                                </div>
                                <!-- Post item - END -->
                            <?php }
                        }
                        ?>
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
            </div>
            <!-- Sidebar - END -->
        </div>
        <!-- Row - END -->

    </div>


    <!-- Main Product Sub Content - END -->
</div>
<!-- Product Detail Content - END -->

<?php get_footer();?>