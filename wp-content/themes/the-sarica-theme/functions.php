<?php

//<editor-fold desc="Enqueue Scripts Files">
add_action('wp_enqueue_scripts', 'the_sarica_files');
function the_sarica_files() {

    wp_enqueue_script('bootstrap',
        get_theme_file_uri('assets/js/bootstrap.min.js'),
        array('jq'), '1.0', true);

    wp_enqueue_script('jq',
        get_theme_file_uri('assets/js/jquery.min.js'),
        NULL, '1.0', true);

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
    wp_insert_post(array(
        'post_type'=>'order',
        'post_title'=>'Order From Random Client',
        'post_content'=> (string)$_POST['target_order'] ,
    ), true);
    wp_redirect(site_url('/'));
    exit;
    //request handlers should die() when they complete their task
}
?>