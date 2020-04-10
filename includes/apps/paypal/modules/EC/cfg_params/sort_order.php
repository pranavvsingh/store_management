<?php
/*
  $Id$

  FieldMitr, Open Source E-Commerce Solutions
  http://www.FieldMitr.com

  Copyright (c) 2014 FieldMitr

  Released under the GNU General Public License
*/

  class OSCOM_PayPal_EC_Cfg_sort_order {
    var $default = '0';
    var $title;
    var $description;
    var $app_configured = false;

    function __construct() {
      global $OSCOM_PayPal;

      $this->title = $OSCOM_PayPal->getDef('cfg_ec_sort_order_title');
      $this->description = $OSCOM_PayPal->getDef('cfg_ec_sort_order_desc');
    }

    function getSetField() {
      $input = tep_draw_input_field('sort_order', OSCOM_APP_PAYPAL_EC_SORT_ORDER, 'id="inputEcSortOrder"');

      $result = <<<EOT
<div>
  <p>
    <label for="inputEcSortOrder">{$this->title}</label>

    {$this->description}
  </p>

  <div>
    {$input}
  </div>
</div>
EOT;

      return $result;
    }
  }
?>
