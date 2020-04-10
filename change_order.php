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

  Based on the idea of David Howarths at Puddled.co.uk
*/

  require('includes/application_top.php');
  require(DIR_WS_LANGUAGES . $language . '/' . FILENAME_CHANGE_ORDER);

  $oID = tep_db_input($HTTP_GET_VARS['oID']);

  $customer_number_query = tep_db_query("select customers_id from " . TABLE_ORDERS . " where orders_id = '" . $oID . "'");
  $customer_number = tep_db_fetch_array($customer_number_query);
  if ($customer_number['customers_id'] != $customer_id) {
    tep_redirect(tep_href_link(FILENAME_ACCOUNT_HISTORY, 'error_message=' . urlencode(FAIL_ORDER_RESTORE), 'SSL'));
  }

  $check_status_query = tep_db_query("select orders_status from " . TABLE_ORDERS . " where orders_id = '" . $oID . "'");
  $check_status = tep_db_fetch_array($check_status_query);
  if (($check_status['orders_status'] == ORDER_RESTORE_CUSTOMER) || ($check_status['orders_status'] == ORDER_RESTORE_STORE) || ($check_status['orders_status'] == ORDER_CANCEL_CUSTOMER) || ($check_status['orders_status'] == ORDER_CANCEL_STORE)) {
    tep_redirect(tep_href_link(FILENAME_ACCOUNT_HISTORY, 'error_message=' . urlencode(FAIL_ORDER_RECANCEL), 'SSL'));
  }

  require(DIR_WS_CLASSES . 'order.php');
  $restore_order = new order($oID);


  for ($i=0, $n=sizeof($restore_order->products); $i<$n; $i++) {
    $pID = $restore_order->products[$i]['id'];
	$qty = $restore_order->products[$i]['qty'];

    $attributes = array();
    if ( (isset($restore_order->products[$i]['attributes'])) && (sizeof($restore_order->products[$i]['attributes']) > 0) ) {
      for ($j=0, $n2=sizeof($restore_order->products[$i]['attributes']); $j<$n2; $j++) {
        $attribute_options_id_query = tep_db_query("select products_options_name, products_options_id from " . TABLE_PRODUCTS_OPTIONS . " where products_options_name = '" . $restore_order->products[$i]['attributes'][$j]['option'] . "'");
        $attribute_options_id = tep_db_fetch_array($attribute_options_id_query);

        $attribute_options_values_id_query = tep_db_query("select products_options_values_id from " . TABLE_PRODUCTS_OPTIONS_VALUES . " where products_options_values_name = '" . $restore_order->products[$i]['attributes'][$j]['value'] . "'");
        $attribute_options_values_id = tep_db_fetch_array($attribute_options_values_id_query);

        $attributes[$attribute_options_id['products_options_name']] = '{' . $attribute_options_id['products_options_id'] . '}' . $attribute_options_values_id['products_options_values_id'];
      }
    }
    $cart->add_cart($pID, ($cart->get_quantity(tep_get_uprid($pID, $attributes))) + $qty, $attributes, false);

    if (ORDER_RESTORE_RESTOCK == 'True') {
      tep_db_query("update " . TABLE_PRODUCTS . " set products_quantity = products_quantity + " . $qty . ", products_ordered = products_ordered - " . $qty . " where products_id = '" . $pID . "'");
    }
  }

  if (ORDER_RESTORE_DELETE == 'True') {
    tep_db_query("delete from " . TABLE_ORDERS . " where orders_id = '" . $oID . "'");
    tep_db_query("delete from " . TABLE_ORDERS_PRODUCTS . " where orders_id = '" . $oID . "'");
    tep_db_query("delete from " . TABLE_ORDERS_PRODUCTS_ATTRIBUTES . " where orders_id = '" . $oID . "'");
    tep_db_query("delete from " . TABLE_ORDERS_STATUS_HISTORY . " where orders_id = '" . $oID . "'");
    tep_db_query("delete from " . TABLE_ORDERS_TOTAL . " where orders_id = '" . $oID . "'");
  } else {
    tep_db_query("update " . TABLE_ORDERS . " set orders_status = '" . ORDER_RESTORE_CUSTOMER . "' where orders_id = '" . $oID . "'");
  
    $customer_notification = (SEND_EMAILS == 'true') ? '1' : '0';
    $sql_data_array = array('orders_id' => $oID,
                            'orders_status_id' => ORDER_RESTORE_CUSTOMER,
                            'date_added' => 'now()',
                            'customer_notified' => $customer_notification,
                            'comments' => COMMENTS_DB);
    tep_db_perform(TABLE_ORDERS_STATUS_HISTORY, $sql_data_array);
  }

  $email_order = sprintf(EMAIL_TEXT_ORDER, $oID) . "\n";
  tep_mail($restore_order->customer['firstname'] . ' ' . $restore_order->customer['lastname'], $restore_order->customer['email_address'], sprintf(EMAIL_TEXT_SUBJECT, $oID), nl2br($email_order), STORE_NAME, STORE_OWNER_EMAIL_ADDRESS);

// send emails to other people
  if (SEND_EXTRA_ORDER_EMAILS_TO != '') {
    tep_mail('', SEND_EXTRA_ORDER_EMAILS_TO, sprintf(EMAIL_TEXT_SUBJECT, $oID), nl2br($email_order), STORE_NAME, STORE_OWNER_EMAIL_ADDRESS);
  }

  $breadcrumb->add(NAVBAR_TITLE_1, tep_href_link(FILENAME_ACCOUNT, '', 'SSL'));
  $breadcrumb->add(NAVBAR_TITLE_2, tep_href_link(FILENAME_ACCOUNT_HISTORY, '', 'SSL'));
  $breadcrumb->add(NAVBAR_TITLE_3, tep_href_link(FILENAME_CHANGE_ORDER, 'oID=' . $oID, 'SSL'));

?>
<!doctype html public "-//W3C//DTD HTML 4.01 Transitional//EN">
<html <?php echo HTML_PARAMS; ?>>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo CHARSET; ?>">
<title><?php echo TITLE ?></title>
<base href="<?php echo (($request_type == 'SSL') ? HTTPS_SERVER : HTTP_SERVER) . DIR_WS_CATALOG; ?>">
<link rel="stylesheet" type="text/css" href="<? echo THEMA_STYLE;?>">
</head>
<body marginwidth="0" marginheight="0" topmargin="0" bottommargin="0" leftmargin="0" rightmargin="0">
<!-- header //-->
<?php require(DIR_WS_INCLUDES . 'header.php'); ?>
<!-- header_eof //-->

<!-- body //-->
<table border="0" width="100%" cellspacing="3" cellpadding="3">
  <tr>
    <td width="<?php echo BOX_WIDTH; ?>" valign="top"><table border="0" width="<?php echo BOX_WIDTH; ?>" cellspacing="0" cellpadding="2">
<!-- left_navigation //-->
<?php require(DIR_WS_INCLUDES . 'column_left.php'); ?>
<!-- left_navigation_eof //-->
    </table></td>
<!-- body_text //-->
    <td width="100%" valign="top"><table border="0" width="100%" cellspacing="0" cellpadding="0">
      <tr>
        <td><table border="0" width="100%" cellspacing="4" cellpadding="2">
          <tr>
            <td valign="top"><?php echo tep_image(DIR_WS_IMAGES . 'table_background_man_on_board.gif', HEADING_TITLE); ?></td>
            <td valign="top" class="main"><?php echo tep_draw_separator('pixel_trans.gif', '1', '10'); ?><div align="left" class="pageHeading"><?php echo HEADING_TITLE; ?></div><br><?php echo sprintf(TEXT_SUCCESS, $oID); ?></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '100%', '10'); ?></td>
      </tr>
      <tr>
        <td align="right" class="main"><a href="<?php echo tep_href_link(FILENAME_ACCOUNT_HISTORY, '', 'SSL') . '">' . tep_image_button('button_continue.gif', IMAGE_BUTTON_CONTINUE); ?></a></td>
      </tr>
    </table></td>
<!-- body_text_eof //-->
    <td width="<?php echo BOX_WIDTH; ?>" valign="top"><table border="0" width="<?php echo BOX_WIDTH; ?>" cellspacing="0" cellpadding="2">
<!-- right_navigation //-->
<?php require(DIR_WS_INCLUDES . 'column_right.php'); ?>
<!-- right_navigation_eof //-->
    </table></td>
  </tr>
</table>
<!-- body_eof //-->

<!-- footer //-->
<?php require(DIR_WS_INCLUDES . 'footer.php'); ?>
<!-- footer_eof //-->
<br>
</body>
</html>
<?php require(DIR_WS_INCLUDES . 'application_bottom.php'); ?>
