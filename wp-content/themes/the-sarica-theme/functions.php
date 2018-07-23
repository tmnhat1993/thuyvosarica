<?php

//<editor-fold desc="Enqueue Scripts Files">
add_action('wp_enqueue_scripts', 'the_sarica_files');
function the_sarica_files() {

    wp_enqueue_script('bootstrap',
        get_theme_file_uri('assets/js/bootstrap.min.js'),
        array('jq'), '1.0', true);

    wp_enqueue_script('jq',
        get_theme_file_uri('assets/js/jquery.min.js'),
        NULL, '1.0', false);

    wp_enqueue_script('main_script',
        get_theme_file_uri('assets/js/scripts-bundled.js'),
        array('jq', 'bootstrap', 'slickslider' ), microtime() , true);

    wp_enqueue_script('slickslider',
        get_theme_file_uri('assets/js/slick.min.js'),
        array('jq'), microtime() , true);


    /* Bootstrap file */
    wp_enqueue_style(
        'bootstrap',
        get_theme_file_uri('./assets/css/bootstrap.min.css'));

    /* Font Awesome Files */
    wp_enqueue_style(
        'font_awesome',
        '//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css');

    /* Slick Slider */
    wp_enqueue_style(
        'slick_slider',
        get_theme_file_uri('assets/css/slick.css'));

    /* Slick Slider Theme */
    wp_enqueue_style('slick_slider_theme',
       get_theme_file_uri( 'assets/css/slick-theme.css'));

    /* Custom Main Stylesheet */
    wp_enqueue_style('main_custom_stylesheet',
        get_theme_file_uri('assets/css/styles.css'),
        NULL, microtime());

    wp_localize_script( 'jq' , 'siteDetail', array(
        'root_url' => get_site_url()
    ) );
}
//</editor-fold>

//<editor-fold desc="Theme Feature">
add_action('after_setup_theme', 'sarica_theme_feature');
function sarica_theme_feature(){
    add_theme_support('title-tag');
    add_theme_support('post-thumbnails');
}
//</editor-fold>

add_action( 'admin_post_nopriv_process_order_form', 'process_form_data' );
add_action( 'admin_post_process_order_form', 'process_form_data' );
function process_form_data() {
    status_header(200);

    $result = '';
    $result = $result.'Mã Hàng: '.$_POST['target_order'].'<br>';
    $result = $result.'Đường dẫn liên hệ: http:'.$_POST['target_link'].'<br>';
    $result = $result.'Số lượng: '.$_POST['quantity'].'<br>';
    $result = $result.'Tên khách hàng: '.$_POST['name'].'<br>';
    $result = $result.'Số điện thoại: '.$_POST['phone'].'<br>';
    $result = $result.'Email liên hệ: '.$_POST['email'].'<br>';

    wp_insert_post(array(
        'post_type'=>'order',
        'post_title'=>'Đơn đặt hàng từ KH'.$_POST['name'],
        'post_content'=> $result,
    ), true);
    wp_redirect(site_url('/success'));
    exit;
    //request handlers should die() when they complete their task
}
?>