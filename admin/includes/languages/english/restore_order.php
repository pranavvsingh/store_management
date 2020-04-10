<?php
  /*
  $Id: restore_order.php, v3.0 2003/05/09 14:14:14 waza04_ Exp $

  FieldMitr, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2003 FieldMitr / Warren Ashcroft

  Support:
  oscdev@ukcomputersystems.com
  waza04@hotmail.com (MSN Messenger)

  Paypal Donations:
  paypal@ukcomputersystems.com

  Web:
  http://www.ukcomputersystems.com/

  Released under the GNU General Public License
  
  Based on the idea of David Howarths at Puddled.co.uk
*/


define('SUCCESS_ORDER_UPDATED', 'The order has successfully updated with the options:');
define('SUCCESS_ORDER_RESTORE', '-> Order has been marked as \'Restored\'');
define('SUCCESS_ORDER_CANCEL', '-> Order has been marked as \'Cancelled\'');
define('SUCCESS_ORDER_RESTOCK', '-> Products have successfully been added back to stock');
define('SUCCESS_ORDER_DELETE', '-> Order has now been removed from the system');
define('SUCCESS_CUSTOMER_INFORMED', '-> Customer has been informed of the update');

define('EMAIL_TEXT_ORDER_RESTORED', 'Your order (<b>%s</b>) has been restored at your request or ' . STORE_NAME . ' has encounted a problem with the processing of this order. The items have been placed back into your cart for you to edit and ammend. They will not be processed until you resubmit the order by checking out.' . "\n\n" . 'If payment has already been processed for this order then please contact the billing department to arrange for a refund, or checkout coupon.' . "\n\n" . 'If you have any quieres or you feel that you have receieved this e-mail in error - please do not hesitate to contact us at ' . STORE_OWNER_EMAIL_ADDRESS);
define('EMAIL_TEXT_ORDER_CANCELLED', 'Your order (<b>%s</b>) has been cancelled at your request or ' . STORE_NAME . ' has encounted a problem with the processing of this order.' . "\n\n" . 'If payment has already been processed for this order then please contact the billing department to arrange for a refund, or checkout coupon.' . "\n\n" . 'If you have any quieres or you feel that you have receieved this e-mail in error - please do not hesitate to contact us at ' . STORE_OWNER_EMAIL_ADDRESS);
define('EMAIL_CANCEL_TEXT_SUBJECT', 'Order (%s) Cancelled');
define('EMAIL_RESTORE_TEXT_SUBJECT', 'Order (%s) Restored');

define('FAIL_ORDER_RECANCEL', 'This order has already been restored/cancelled by either the customer or the store admin. Check the order status for more info...');

define('COMMENTS_DB_CANCEL', 'This order will not be processed, it has been cancelled at your request or other informed reason. (Admin Action)');
define('COMMENTS_DB_RESTORE', 'This order will not be processed, it has been restored to your cart for you to edit and ammend. You may resubmit the order at a later date when you are happy with the contents of your cart. (Admin Action)');
?>
