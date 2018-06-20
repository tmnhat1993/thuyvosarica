<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'thuyvo');

/** MySQL database username */
define('DB_USER', 'nhat');

/** MySQL database password */
define('DB_PASSWORD', '123456');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         ';])!m]?IE>hT2~=F( hiD3=u5WLT@g2WQ@!_t@-cW3iKFCuC553n e?fH&#b.u]_');
define('SECURE_AUTH_KEY',  'LPo,^B,<o(yVn>`7p(^g(zMKx_Vr0).,p.TuFk+*GGHuB4eogtNVqxdHmOUO+Q$}');
define('LOGGED_IN_KEY',    'KAUaSZWU,hf$:7Hn(m*F@ o^t&>%^ivU=?d#AdAZ}i7Z]lxadDczL1w*Rx3J(@>_');
define('NONCE_KEY',        'P&}:b{9nJ0]Nux20:!LlKTy^+-Aps2{5QsX0QB:j|{ErDi>CWu).R?603PM].E3q');
define('AUTH_SALT',        '`2-F+#P#s<r[o6-oS2I~xB(deC[<W<#I^*.,PJyG(KU$qv$<C`&,<b4ct/}fYl_}');
define('SECURE_AUTH_SALT', 'dcwZx+GRDsCW@$]MtY_R:3r_[=IFGnAKj!(7_h~J-/c7~8PJJx%ke+sEg?Rnc_y6');
define('LOGGED_IN_SALT',   'TEym4W]$%pYhk>EmS|rwY*B)pUZ_40N<ReH;?KvB#Y3rtP8%6!Uh`JCD$mn+:R>Y');
define('NONCE_SALT',       '*nlo@zS<,{p#HNls~Md?Se*+C0te~kDZKzc8/QeU5MMOw}j%#(Q -ICE}njDb2$b');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
