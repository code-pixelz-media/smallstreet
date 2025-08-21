<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'Y.MF 1urHk2V|vZz3YDU<UQ0xFr4b:Yy=Tgj6:e)d2pDo26a]vE$0t2<RD;_E?#y' );
define( 'SECURE_AUTH_KEY',   'k4r{7N &81UXL ,4zGzFP&^mr;=zvgw{lwE)w-kB1CvK]0TT~OQg*#lr(GO,D_V.' );
define( 'LOGGED_IN_KEY',     '(CN)pYy%/{ fz?|L[VkfK2,Ew5?pV*+iAk[R}Y:JN!*xnbtY9+FtvpO`N,O;!j]}' );
define( 'NONCE_KEY',         'v(Z<,4>R{7Hd9#b>>iRfOcC<aYW>NMe?Id_s?ut19MfC_X+`c0CfyP$8!nDro2nk' );
define( 'AUTH_SALT',         'LGMB+7/C[b5*a: XSZS/aB34I7Y#KCk(icXl_0?p%;Y?^]_>F!cn5=~]|7mkb?76' );
define( 'SECURE_AUTH_SALT',  'CLDkW7dx5orToKF7!@ZUM0WB&j?>3CC:=seU=f1*.E8$9a=-OCRY9fydGRMh7&3-' );
define( 'LOGGED_IN_SALT',    'b<>OkTt?jZgfy%^-`r|+,gE6QOD~+nhx0`o2[R2]ne&W=Gy}0p0gAbk)x7aiS(Hh' );
define( 'NONCE_SALT',        'aOqnqrM<vHN:+T0TA33Q<<0M#D2:S6K#{IcSmG#v;mk_@(=Vm8n6wiqUBcT}+:(Z' );
define( 'WP_CACHE_KEY_SALT', '7XXkS!DID~j yK(b4v@%Zm&^*f>?A/Z).QJvT%o@~mhVvsv/6|95Ok);W~=+<Qo;' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
