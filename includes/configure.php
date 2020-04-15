<?php
$env = "prod";
if($env == "local"){
  define('HTTP_SERVER', 'http://localhost/');
  define('HTTPS_SERVER', 'http://localhost/');
  define('ENABLE_SSL', false);
  define('HTTP_COOKIE_DOMAIN', '');
  define('HTTPS_COOKIE_DOMAIN', '');
  define('HTTP_COOKIE_PATH', '/stores/AshokProvision/');
  define('HTTPS_COOKIE_PATH', '/stores/AshokProvision/');
  define('DIR_WS_HTTP_CATALOG', '/stores/AshokProvision/');
  define('DIR_WS_HTTPS_CATALOG', '/stores/AshokProvision/');

  define('DIR_FS_CATALOG', '/opt/lampp/htdocs/stores/AshokProvision/');
  define('DIR_FS_DOWNLOAD', DIR_FS_CATALOG . 'download/');
  define('DIR_FS_DOWNLOAD_PUBLIC', DIR_FS_CATALOG . 'pub/');

  define('DB_SERVER', '127.0.0.1');
  define('DB_SERVER_USERNAME', 'root');
  define('DB_SERVER_PASSWORD', 'root');
  define('DB_DATABASE', 'AshokProvision');
  define('USE_PCONNECT', 'false');
  define('STORE_SESSIONS', 'mysql');
  define('CFG_TIME_ZONE', 'Asia/Kolkata');
}else if($env == "prod"){
  define('HTTP_SERVER', 'http://a9b01b95.ngrok.io/');
  define('HTTPS_SERVER', 'https://a9b01b95.ngrok.io/');
  define('ENABLE_SSL', false);
  define('HTTP_COOKIE_DOMAIN', '');
  define('HTTPS_COOKIE_DOMAIN', '');
  define('HTTP_COOKIE_PATH', '/stores/AshokProvision/');
  define('HTTPS_COOKIE_PATH', '/stores/AshokProvision/');
  define('DIR_WS_HTTP_CATALOG', '/stores/AshokProvision/');
  define('DIR_WS_HTTPS_CATALOG', '/stores/AshokProvision/');

  define('DIR_FS_CATALOG', '/var/www/html/stores/AshokProvision/');
  define('DIR_FS_DOWNLOAD', DIR_FS_CATALOG . 'download/');
  define('DIR_FS_DOWNLOAD_PUBLIC', DIR_FS_CATALOG . 'pub/');

  define('DB_SERVER', '127.0.0.1');
  define('DB_SERVER_USERNAME', 'root');
  define('DB_SERVER_PASSWORD', 'Seamless@123');
  define('DB_DATABASE', 'AshokProvision');
  define('USE_PCONNECT', 'false');
  define('STORE_SESSIONS', 'mysql');
  define('CFG_TIME_ZONE', 'Asia/Kolkata');
}
?>
