<?php
  /*
  $Id: restore_order.php, v3.0 2003/05/09 14:14:14 waza04_ Exp $

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
if ($HTTP_GET_VARS['action']) {
    switch ($HTTP_GET_VARS['action']) {
      case 'cancel':

/*
*********************
// CANCEL ACTION //
*********************
*/
  require('includes/application_top.php');
  require(DIR_WS_LANGUAGES . $language . '/' . FILENAME_RESTORE_ORDER);

  $oID = tep_db_input($HTTP_GET_VARS['oID']);

  require(DIR_FS_CATALOG . DIR_WS_CLASSES . 'order.php');
  $restore_order = new order($oID);
  
  $check_status_query = tep_db_query("select orders_status from " . TABLE_ORDERS . " where orders_id = '" . $oID . "'");
  $check_status = tep_db_fetch_array($check_status_query);
  if (($check_status['orders_status'] == ORDER_RESTORE_CUSTOMER) || ($check_status['orders_status'] == ORDER_RESTORE_STORE) || ($check_status['orders_status'] == ORDER_CANCEL_CUSTOMER) || ($check_status['orders_status'] == ORDER_CANCEL_STORE)) {
    tep_redirect(tep_href_link(FILENAME_ORDERS, 'error_message=' . urlencode(FAIL_ORDER_RECANCEL), 'SSL'));
  }
 
  $customer_query = tep_db_query("select customers_id from " . TABLE_ORDERS . " where orders_id = '" . $oID . "'");
  $customer = tep_db_fetch_array($customer_query);
  $customer_id = $customer['customers_id'];
  tep_session_register('customer_id');
  

  for ($i=0, $n=sizeof($restore_order->products); $i<$n; $i++) {
    $pID = $restore_order->products[$i]['id'];
	$qty = $restore_order->products[$i]['qty'];

    if (ORDER_CANCEL_RESTOCK == 'True') {
      tep_db_query("update " . TABLE_PRODUCTS . " set products_quantity = products_quantity + " . $qty . ", products_ordered = products_ordered - " . $qty . " where products_id = '" . $pID . "'");
    }
  }

  if (ORDER_CANCEL_DELETE == 'True') {
    tep_db_query("delete from " . TABLE_ORDERS . " where orders_id = '" . $oID . "'");
    tep_db_query("delete from " . TABLE_ORDERS_PRODUCTS . " where orders_id = '" . $oID . "'");
    tep_db_query("delete from " . TABLE_ORDERS_PRODUCTS_ATTRIBUTES . " where orders_id = '" . $oID . "'");
    tep_db_query("delete from " . TABLE_ORDERS_STATUS_HISTORY . " where orders_id = '" . $oID . "'");
    tep_db_query("delete from " . TABLE_ORDERS_TOTAL . " where orders_id = '" . $oID . "'");
  } else {
    tep_db_query("update " . TABLE_ORDERS . " set orders_status = '" . ORDER_CANCEL_STORE . "' where orders_id = '" . $oID . "'");
  
    $customer_notification = (SEND_EMAILS == 'true') ? '1' : '0';
    $sql_data_array = array('orders_id' => $oID,
                            'orders_status_id' => ORDER_CANCEL_STORE,
                            'date_added' => 'now()',
                            'customer_notified' => $customer_notification,
                            'comments' => COMMENTS_DB_CANCEL);
    tep_db_perform(TABLE_ORDERS_STATUS_HISTORY, $sql_data_array);
  }

  $email_order = sprintf(EMAIL_TEXT_ORDER_CANCELLED, $oID) . "\n";
  tep_mail($restore_order->customer['firstname'] . ' ' . $restore_order->customer['lastname'], $restore_order->customer['email_address'], sprintf(EMAIL_CANCEL_TEXT_SUBJECT, $oID), nl2br($email_order), STORE_NAME, STORE_OWNER_EMAIL_ADDRESS);

// send emails to other people
  if (SEND_EXTRA_ORDER_EMAILS_TO != '') {
    tep_mail('', SEND_EXTRA_ORDER_EMAILS_TO, sprintf(EMAIL_CANCEL_TEXT_SUBJECT, $oID), nl2br($email_order), STORE_NAME, STORE_OWNER_EMAIL_ADDRESS);
  }

  tep_session_unregister('customer_id');

  $messageStack->add_session(SUCCESS_ORDER_UPDATED, 'success');
  $messageStack->add_session(SUCCESS_ORDER_CANCEL, 'success');
  
  if (ORDER_CANCEL_DELETE == 'True') {
    $messageStack->add_session(SUCCESS_ORDER_DELETE, 'success');
  }
  if (ORDER_CANCEL_RESTOCK == 'True') {
    $messageStack->add_session(SUCCESS_ORDER_RESTOCK, 'success');
  }
  if (SEND_EMAILS == 'true') {
    $messageStack->add_session(SUCCESS_CUSTOMER_INFORMED, 'success');
  }
  
  tep_redirect(tep_href_link(FILENAME_ORDERS));

  require(DIR_WS_INCLUDES . 'application_bottom.php');
  
  break;
    case 'restore':

/*
*********************
// RESTORE ACTION //
*********************
*/
  require('includes/application_top.php');
  require(DIR_WS_LANGUAGES . $language . '/' . FILENAME_RESTORE_ORDER);

  $oID = tep_db_input($HTTP_GET_VARS['oID']);

  require(DIR_FS_CATALOG . DIR_WS_CLASSES . 'order.php');
  $restore_order = new order($oID);
  
  $check_status_query = tep_db_query("select orders_status from " . TABLE_ORDERS . " where orders_id = '" . $oID . "'");
  $check_status = tep_db_fetch_array($check_status_query);
  if (($check_status['orders_status'] == ORDER_RESTORE_CUSTOMER) || ($check_status['orders_status'] == ORDER_RESTORE_STORE) || ($check_status['orders_status'] == ORDER_CANCEL_CUSTOMER) || ($check_status['orders_status'] == ORDER_CANCEL_STORE)) {
    tep_redirect(tep_href_link(FILENAME_ORDERS, 'error_message=' . urlencode(FAIL_ORDER_RECANCEL), 'SSL'));
  }

  $customer_query = tep_db_query("select customers_id from " . TABLE_ORDERS . " where orders_id = '" . $oID . "'");
  $customer = tep_db_fetch_array($customer_query);
  $customer_id = $customer['customers_id'];
  tep_session_register('customer_id');

  $cart = new shoppingCart;
  $cart->restore_contents();

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
    tep_db_query("update " . TABLE_ORDERS . " set orders_status = '" . ORDER_RESTORE_STORE . "' where orders_id = '" . $oID . "'");

    $customer_notification = (SEND_EMAILS == 'true') ? '1' : '0';
    $sql_data_array = array('orders_id' => $oID,
                            'orders_status_id' => ORDER_RESTORE_STORE,
                            'date_added' => 'now()',
                            'customer_notified' => $customer_notification,
                            'comments' => COMMENTS_DB_RESTORE);
    tep_db_perform(TABLE_ORDERS_STATUS_HISTORY, $sql_data_array);
  }

  $email_order = sprintf(EMAIL_TEXT_ORDER_RESTORED, $oID) . "\n";
  tep_mail($restore_order->customer['firstname'] . ' ' . $restore_order->customer['lastname'], $restore_order->customer['email_address'], sprintf(EMAIL_RESTORE_TEXT_SUBJECT, $oID), nl2br($email_order), STORE_NAME, STORE_OWNER_EMAIL_ADDRESS);

// send emails to other people
  if (SEND_EXTRA_ORDER_EMAILS_TO != '') {
    tep_mail('', SEND_EXTRA_ORDER_EMAILS_TO, sprintf(EMAIL_RESTORE_TEXT_SUBJECT, $oID), nl2br($email_order), STORE_NAME, STORE_OWNER_EMAIL_ADDRESS);
  }

  tep_session_unregister('customer_id');

  $messageStack->add_session(SUCCESS_ORDER_UPDATED, 'success');
  $messageStack->add_session(SUCCESS_ORDER_RESTORE, 'success');

  if (ORDER_RESTORE_DELETE == 'True') {
    $messageStack->add_session(SUCCESS_ORDER_DELETE, 'success');
  }
  if (ORDER_RESTORE_RESTOCK == 'True') {
    $messageStack->add_session(SUCCESS_ORDER_RESTOCK, 'success');
  }
  if (SEND_EMAILS == 'true') {
    $messageStack->add_session(SUCCESS_CUSTOMER_INFORMED, 'success');
  }

  tep_redirect(tep_href_link(FILENAME_ORDERS));

  require(DIR_WS_INCLUDES . 'application_bottom.php');
  

break;
}
}
?>

