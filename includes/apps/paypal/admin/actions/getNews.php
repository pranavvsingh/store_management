<?php
/*
  $Id$

  FieldMitr, Open Source E-Commerce Solutions
  http://www.FieldMitr.com

  Copyright (c) 2014 FieldMitr

  Released under the GNU General Public License
*/

  $ppGetNewsResult = array('rpcStatus' => -1);

  if ( function_exists('json_encode') ) {
    $ppGetNewsResponse = @json_decode($OSCOM_PayPal->makeApiCall('http://www.FieldMitr.com/index.php?RPC&Website&Index&GetPartnerBanner&forumid=105&onlyjson=true'), true);

    if ( is_array($ppGetNewsResponse) && isset($ppGetNewsResponse['title']) ) {
      $ppGetNewsResult = $ppGetNewsResponse;

      $ppGetNewsResult['rpcStatus'] = 1;
    }

    echo json_encode($ppGetNewsResult);
  }

  exit;
?>
