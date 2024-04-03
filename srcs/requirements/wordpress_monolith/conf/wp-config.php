<?php

/**
 * Datenbankverbindung
 */
define('DB_NAME', 'wordpress');
define('DB_USER', 'wordpress');
define('DB_PASSWORD', 'password');
define('DB_HOST', 'mysql');
define('DB_CHARSET', 'utf8mb4');

/**
 * Tabellenpräfix
 */
$table_prefix = 'wp_';

/**
 * Sicherheitsschlüssel
 */
define('AUTH_KEY', 'put your unique phrase here');
define('SECURE_AUTH_KEY', 'put your unique phrase here');
define('LOGGED_IN_KEY', 'put your unique phrase here');
define('NONCE_KEY', 'put your unique phrase here');
define('AUTH_SALT', 'put your unique phrase here');
define('SECURE_AUTH_SALT', 'put your unique phrase here');
define('LOGGED_IN_SALT', 'put your unique phrase here');
define('NONCE_SALT', 'put your unique phrase here');

/**
 * WordPress-Einstellungen
 */
define('WP_DEBUG', false);
define('WP_SITEURL', 'http://localhost:8080');
define('WP_HOME', 'http://localhost:8080');

/**
 * Automatische Updates
 */
define('AUTOMATIC_UPDATER_DISABLED', true);

?>
