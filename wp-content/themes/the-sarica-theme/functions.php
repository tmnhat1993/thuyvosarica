<?php

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
?>