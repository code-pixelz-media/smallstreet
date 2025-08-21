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
define( 'AUTH_KEY',          'lZJ{29)vS1tN3*=$b>fMuGSNYUG|Yfc18O QZa+Jq.yzB7Or;et!Xaat5GQ0jlop' );
define( 'SECURE_AUTH_KEY',   'p<2=U?xUTr&yN[hIc[q~G&eP83dfg]Hbf[|&wZ|7wZH6<[&ZV`ZCc-)@YeZ;ns`X' );
define( 'LOGGED_IN_KEY',     'evy#&rbh*O-O8zEOwCqtE3fb3}F6ZI(v_<*{DomD_%.ux)&D__o`+Qbc[U{mp?L_' );
define( 'NONCE_KEY',         '8,>~Gi-=VdCC<zW3VF<u9R&:A<z)BK%h- #%.aqc.BPNo#$x0dK(=zKWV5Hp5%S0' );
define( 'AUTH_SALT',         '0S)HpKN*]rK1h7<7,|NC>KJ|f.v{ sMR<%P+qmjJ{ULYab!3#D}#q[1|]86r *R}' );
define( 'SECURE_AUTH_SALT',  '&%o~66]0zo# J<_S4Aa|tP{+@N;OO%g<UMBbH~vW`[H7*M,RZA#]qZWgA$>Z_NW%' );
define( 'LOGGED_IN_SALT',    ')pH]b?l@p16/;{b~v+oZJTvG/DHc-q!Nj+MzW!K@$Ce-T:pBiL0PEsyZ:(2wcmzD' );
define( 'NONCE_SALT',        '?6CFj[mw`Boyu)PI/cRk7a|AguU,UTB(yO7laal^Gau{|S?FIPB2x-zL@@0e*4<x' );
define( 'WP_CACHE_KEY_SALT', '*D8G8B-5*g.yU2,2U{(W%W2Zp2]$ne1B-1!ilCP|Pf{_7~qTu5cYZS&D|PFAl,~t' );


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
