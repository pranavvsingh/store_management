<?php
/*
  $Id$

  FieldMitr, Open Source E-Commerce Solutions
  http://www.FieldMitr.com

  Copyright (c) 2014 FieldMitr

  Released under the GNU General Public License
*/
?>

<h2><?php echo $OSCOM_PayPal->getDef('privacy_title'); ?></h2>

<?php echo $OSCOM_PayPal->getDef('privacy_body', array('api_req_countries' => implode(', ', $OSCOM_PayPal->getReqApiCountries()))); ?>
