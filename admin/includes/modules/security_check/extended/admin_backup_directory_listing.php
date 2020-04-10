<?php
/*
  $Id$

  FieldMitr, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2014 FieldMitr

  Released under the GNU General Public License
*/

  class securityCheckExtended_admin_backup_directory_listing {
    var $type = 'error';
    var $has_doc = true;

    function __construct() {
      global $language;

      include(DIR_FS_ADMIN . 'includes/languages/' . $language . '/modules/security_check/extended/admin_backup_directory_listing.php');

      $this->title = MODULE_SECURITY_CHECK_EXTENDED_ADMIN_BACKUP_DIRECTORY_LISTING_TITLE;
    }

    function pass() {
      $request = $this->getHttpRequest(tep_href_link('backups/'));

      return $request['http_code'] != 200;
    }

    function getMessage() {
      return MODULE_SECURITY_CHECK_EXTENDED_ADMIN_BACKUP_DIRECTORY_LISTING_HTTP_200;
    }

    function getHttpRequest($url) {
      $server = parse_url($url);

      if (isset($server['port']) === false) {
        $server['port'] = ($server['scheme'] == 'https') ? 443 : 80;
      }

      if (isset($server['path']) === false) {
        $server['path'] = '/';
      }

      $curl = curl_init($server['scheme'] . '://' . $server['host'] . $server['path'] . (isset($server['query']) ? '?' . $server['query'] : ''));
      curl_setopt($curl, CURLOPT_PORT, $server['port']);
      curl_setopt($curl, CURLOPT_HEADER, false);
      curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
      curl_setopt($curl, CURLOPT_FORBID_REUSE, true);
      curl_setopt($curl, CURLOPT_FRESH_CONNECT, true);
      curl_setopt($curl, CURLOPT_CUSTOMREQUEST, 'HEAD');
      curl_setopt($curl, CURLOPT_NOBODY, true);

      if ( isset($_SERVER['PHP_AUTH_USER']) && isset($_SERVER['PHP_AUTH_PW']) ) {
        curl_setopt($curl, CURLOPT_USERPWD, $_SERVER['PHP_AUTH_USER'] . ':' . $_SERVER['PHP_AUTH_PW']);

        $this->type = 'warning';
      }

      $result = curl_exec($curl);

      $info = curl_getinfo($curl);

      curl_close($curl);

      return $info;
    }
  }
?>
