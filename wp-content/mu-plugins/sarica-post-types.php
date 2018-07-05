<?php
add_action('init', 'sarica_post_type');

function sarica_post_type(){
    // Watch Post Type
    register_post_type('watch', array(
        'public' => true,
        // Labels assign
        'labels' => array(
            'name' => 'watches',
            'add_new_item' => 'Add new watch',
            'edit_item' => 'Edit watch',
            'all_items' => 'All watches',
            'singular_name' => 'watch',
        ),

        //Supports Feature
        'supports' => array('excerpt', 'thumbnail', 'title', 'editor'),

        // Rewrite Slugs
        'rewrite' => array('slugs' => 'watches'),

        // Has Archive Page For All Watches
        'has_archive' => true,

        // Watch Menu Icon
        'menu_icon' => 'dashicons-clock',
    ));

    // Glass Post Type
    register_post_type('glass', array(
        'public' => true,
        // Labels assign
        'labels' => array(
            'name' => 'glasses',
            'add_new_item' => 'Add new glass',
            'edit_item' => 'Edit glass',
            'all_items' => 'All glasses',
            'singular_name' => 'glass',
        ),

        //Supports Feature
        'supports' => array('excerpt', 'title', 'editor', 'thumbnail'),

        // Rewrite Slugs
        'rewrite' => array('slugs' => 'glasses'),

        // Has Archive Page For All Watches
        'has_archive' => true,

        // Watch Menu Icon
        'menu_icon' => 'dashicons-image-filter',
    ));
}

?>