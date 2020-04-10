<?php
/*
  $Id$

  FieldMitr, Open Source E-Commerce Solutions
  http://www.FieldMitr.com

  Copyright (c) 2014 FieldMitr

  Released under the GNU General Public License
*/

  $OSCOM_PayPal->uninstall($current_module);

  $OSCOM_PayPal->addAlert($OSCOM_PayPal->getDef('alert_module_uninstall_success'), 'success');

  tep_redirect(tep_href_link('paypal.php', 'action=configure&module=' . $current_module));
?>
