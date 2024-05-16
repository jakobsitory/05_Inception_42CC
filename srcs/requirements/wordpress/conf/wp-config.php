<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', '${MARIADB_DATABASE}' );

/** Database username */
define( 'DB_USER', '${MARIADB_USER}' );

/** Database password */
define( 'DB_PASSWORD', '${MARIADB_PASSWORD}' );

/** Database hostname */
define( 'DB_HOST', 'mariadb-inception:3306' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define( 'AUTH_KEY',         ' V~7;P5ND,=q K[l@?pQ61c{vB<-;e3d)osZOfTOqW>oJ843B>DYV.;1tlyY{PG+' );
define( 'SECURE_AUTH_KEY',  '1+T Z8(sATd8y_kV?YFW@0{^TvFxlyp;RBxBsJob^eKO#8WEJncT$TdcBi5:N,,f' );
define( 'LOGGED_IN_KEY',    'M3_DPT@Zj*Wt9#_@QGgDi4?Z0t{5HoB-!i!,lKV*PmS%7r6Vhgn;t^XhT;#UU9pm' );
define( 'NONCE_KEY',        'SjP{HzPi*;n_~hYa?3 rkVr|4.IIaa3_B:i=_7 y,?^IZr>}:.MG!s%.XMS/)Uk*' );
define( 'AUTH_SALT',        'I_@j~#O1jR)8)v~&}leLd%TZ!i^8>VxRcF#>C,1f~`>ln1Iume0+@b/nZ7(VN8y4' );
define( 'SECURE_AUTH_SALT', '%;.(3+y_=Dl3_t]~4d@$;]kc:0vifCKL[(3YT&Lyt)e&uz)05g(-LDtkbSO(JIiI' );
define( 'LOGGED_IN_SALT',   '<BIFuF1@3{UNu+R))%`TIJ&^1lWQoda~4Y:Br7:8R[+^Q{9@R.{z%rzyKF/7A,LY' );
define( 'NONCE_SALT',       'Eu,|XC^F[*}w2I=v9QgU-X[DVi5ZmT~J$wjnJ9DG;>:,]_3;[: k&iJ;_RwADSM:' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
