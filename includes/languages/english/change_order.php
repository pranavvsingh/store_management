<?php
  /*
  $Id: change_order.php, v3.0 2003/05/09 14:14:14 waza04_ Exp $

  FieldMitr, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2003 FieldMitr / Warren Ashcroft
  
  Thanks to: Marcel van Lieshout

  Support:
  oscdev@ukcomputersystems.com
  waza04@hotmail.com (MSN Messenger)

  Paypal Donations:
  paypal@ukcomputersystems.com

  Web:
  http://www.ukcomputersystems.com/

  Released under the GNU General Public License
*/

define('NAVBAR_TITLE_1', 'My Account');
define('NAVBAR_TITLE_2', 'History');
define('NAVBAR_TITLE_3', 'Restore Order');

define('HEADING_TITLE', 'Order Restored');
define('TEXT_SUCCESS', 'Your order (<b>%s</b>) has been restored and marked for editing.<br><br>The items have been placed back into your cart for you to edit and ammend. They will not be processed until you resubmit the order by checking out.<br><br>The order may have been removed from the \'My Account\' section of the website whilst changes are made. If the order has been removed, you wont be able to track it\'s changes other than those issued by the admin.<br><br>If payment has already been processed for this order then please contact the billing department to arrange for a refund, or checkout coupon.');

define('FAIL_ORDER_RESTORE', 'Sorry, Your restore was not successfull...');
define('EMAIL_TEXT_ORDER', 'Your order (<b>%s</b>) has been restored.' . "\n\n" . 'The items have been placed back into your cart for you to edit and ammend. They will not be processed until you resubmit the order by checking out.' . "\n\n" . 'If payment has already been processed for this order then please contact the billing department to arrange for a refund, or checkout coupon.' . "\n\n" . 'NOTE: The order may have been removed from the \'My Account\' section of the website whilst changes are made. If the order has been removed, you wont be able to track it\'s changes other than those issued by the admin.' . "\n\n" . 'If you have any quieres or you feel that you have receieved this e-mail in error - please do not hesitate to contact us at ' . STORE_OWNER_EMAIL_ADDRESS);
define('EMAIL_TEXT_SUBJECT', 'Order (%s) Restored');
define('FAIL_ORDER_RECANCEL', 'This order has already been restored/cancelled...');
define('COMMENTS_DB', 'This order will not be processed, it has been restored to your cart for you to change and resubmit at a later date. (Customer Action)');
?>


