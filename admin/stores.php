<?php
/*
  $Id: multipickup,v 1.0 2003/03/23 20:10:58 ednique Exp $

  FieldMitr, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2003 Edwin Bekaert (edwin@ednique.com)

  Released under the GNU General Public License

  http://forums.oscommerce.com/viewtopic.php?p=134821
*/

  require('includes/application_top.php');

  if ($HTTP_GET_VARS['action']) {
    switch ($HTTP_GET_VARS['action']) {
      case 'update':
        $customers_id = 0;
        $stores_id = tep_db_prepare_input($HTTP_GET_VARS['sID']);
        $stores_title = tep_db_prepare_input($HTTP_POST_VARS['stores_title']);
        if($stores_id>0){
          $bInsert=false;
          tep_db_query("update " . TABLE_STORES . " set stores_title = '".$stores_title."' where stores_id = '" . tep_db_input($stores_id) . "'");
          $default_address_id = tep_db_prepare_input($HTTP_POST_VARS['aID']);
        }else{
          $bInsert=true;
          $max=tep_db_fetch_array(tep_db_query("select max(s.stores_id)+1 as max_stores_id, max(a.address_book_id)+1 as max_address_id FROM " . TABLE_ADDRESS_BOOK . " a, " . TABLE_STORES . " s WHERE s.address_book_id = a.address_book_id and a.customers_id = 0"));
          $stores_id = $max['max_stores_id'];
          $default_address_id = $max['max_address_id'];
          if($stores_id<1) $stores_id=1;
          if($default_address_id<1) $default_address_id=1;
          tep_db_query("insert into " . TABLE_STORES . " values (".$stores_id." , '".$stores_title."', ".$default_address_id.", 0)");
        }
        $customers_firstname = tep_db_prepare_input($HTTP_POST_VARS['customers_firstname']);
        $customers_lastname = tep_db_prepare_input($HTTP_POST_VARS['customers_lastname']);
        $customers_gender = tep_db_prepare_input($HTTP_POST_VARS['customers_gender']);
        $entry_street_address = tep_db_prepare_input($HTTP_POST_VARS['entry_street_address']);
        $entry_suburb = tep_db_prepare_input($HTTP_POST_VARS['entry_suburb']);
        $entry_postcode = tep_db_prepare_input($HTTP_POST_VARS['entry_postcode']);
        $entry_city = tep_db_prepare_input($HTTP_POST_VARS['entry_city']);
        $entry_country_id = tep_db_prepare_input($HTTP_POST_VARS['entry_country_id']);
        $entry_company = tep_db_prepare_input($HTTP_POST_VARS['entry_company']);
        $entry_state = tep_db_prepare_input($HTTP_POST_VARS['entry_state']);
        $entry_zone_id = tep_db_prepare_input($HTTP_POST_VARS['entry_zone_id']);
        if ($entry_zone_id > 0) $entry_state = '';
        if($bInsert){
          $sql_data_array = array('entry_firstname' => $customers_firstname,
                                  'entry_lastname' => $customers_lastname,
                                  'entry_street_address' => $entry_street_address,
                                  'entry_postcode' => $entry_postcode,
                                  'entry_city' => $entry_city,
                                  'entry_country_id' => $entry_country_id,
                                  'entry_company' => $entry_company,
                                  'entry_suburb' => $entry_suburb,
                                  'entry_state' => $entry_state,
                                  'entry_zone_id' => $entry_zone_id,
                                  'customers_id' => 0,
                                  'address_book_id' => $default_address_id);
          tep_db_perform(TABLE_ADDRESS_BOOK, $sql_data_array, 'insert');
        }else{
          $sql_data_array = array('entry_firstname' => $customers_firstname,
                                  'entry_lastname' => $customers_lastname,
                                  'entry_street_address' => $entry_street_address,
                                  'entry_postcode' => $entry_postcode,
                                  'entry_city' => $entry_city,
                                  'entry_country_id' => $entry_country_id,
                                  'entry_company' => $entry_company,
                                  'entry_suburb' => $entry_suburb,
                                  'entry_state' => $entry_state,
                                  'entry_zone_id' => $entry_zone_id);
          tep_db_perform(TABLE_ADDRESS_BOOK, $sql_data_array, 'update', "customers_id = '" . tep_db_input($customers_id) . "' and address_book_id = '" . tep_db_input($default_address_id) . "'");
        }
        tep_redirect(tep_href_link(FILENAME_STORES, tep_get_all_get_params(array('sID', 'action')) . 'sID=' . $stores_id));
        break;
      case 'deleteconfirm':
        $customers_id = 0;
        $stores_id = tep_db_prepare_input($HTTP_GET_VARS['sID']);
        tep_db_query("delete from " . TABLE_STORES . " where stores_id = '" . tep_db_input($stores_id) . "'");
        $default_address_id = tep_db_prepare_input($HTTP_GET_VARS['aID']);
        tep_db_query("delete from " . TABLE_ADDRESS_BOOK . " where customers_id = '" . tep_db_input($customers_id) . "' and address_book_id = '" . tep_db_input($default_address_id) . "'");

        tep_redirect(tep_href_link(FILENAME_STORES, tep_get_all_get_params(array('sID', 'action'))));
        break;
    }
  }
?>
<!doctype html public "-//W3C//DTD HTML 4.01 Transitional//EN">
<html <?php echo HTML_PARAMS; ?>>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo CHARSET; ?>">
<title><?php echo TITLE; ?></title>
<link rel="stylesheet" type="text/css" href="includes/stylesheet.css">
<script language="javascript" src="includes/general.js"></script>
<?php
  if ($HTTP_GET_VARS['action'] == 'edit') {
?>
<script language="javascript"><!--
function resetStateText(theForm) {
  theForm.entry_state.value = '';
  if (theForm.entry_zone_id.options.length > 1) {
    theForm.entry_state.value = '<?php echo JS_STATE_SELECT; ?>';
  }
}

function resetZoneSelected(theForm) {
  if (theForm.entry_state.value != '') {
    theForm.entry_zone_id.selectedIndex = '0';
    if (theForm.entry_zone_id.options.length > 1) {
      theForm.entry_state.value = '<?php echo JS_STATE_SELECT; ?>';
    }
  }
}

function update_zone(theForm) {
  var NumState = theForm.entry_zone_id.options.length;
  var SelectedCountry = '';

  while(NumState > 0) {
    NumState--;
    theForm.entry_zone_id.options[NumState] = null;
  }

  SelectedCountry = theForm.entry_country_id.options[theForm.entry_country_id.selectedIndex].value;

<?php echo tep_js_zone_list('SelectedCountry', 'theForm', 'entry_zone_id'); ?>

  resetStateText(theForm);
}

function check_form() {
  var error = 0;
  var error_message = "<?php echo JS_ERROR; ?>";

  var customers_firstname = document.customers.customers_firstname.value;
  var customers_lastname = document.customers.customers_lastname.value;
  var entry_company = document.customers.entry_company.value;
  var entry_street_address = document.customers.entry_street_address.value;
  var entry_postcode = document.customers.entry_postcode.value;
  var entry_city = document.customers.entry_city.value;
  if (customers_firstname == "" || customers_firstname.length < <?php echo ENTRY_FIRST_NAME_MIN_LENGTH; ?>) {
    error_message = error_message + "<?php echo JS_FIRST_NAME; ?>";
    error = 1;
  }
  if (customers_lastname == "" || customers_lastname.length < <?php echo ENTRY_LAST_NAME_MIN_LENGTH; ?>) {
    error_message = error_message + "<?php echo JS_LAST_NAME; ?>";
    error = 1;
  }
  if (entry_street_address == "" || entry_street_address.length < <?php echo ENTRY_STREET_ADDRESS_MIN_LENGTH; ?>) {
    error_message = error_message + "<?php echo JS_ADDRESS; ?>";
    error = 1;
  }
  if (entry_postcode == "" || entry_postcode.length < <?php echo ENTRY_POSTCODE_MIN_LENGTH; ?>) {
    error_message = error_message + "<?php echo JS_POST_CODE; ?>";
    error = 1;
  }
  if (entry_city == "" || entry_city.length < <?php echo ENTRY_CITY_MIN_LENGTH; ?>) {
    error_message = error_message + "<?php echo JS_CITY; ?>";
    error = 1;
  }
  if (document.customers.entry_zone_id.options.length <= 1) {
    if (document.customers.entry_state.value == "" || document.customers.entry_state.length < 4 ) {
       error_message = error_message + "<?php echo JS_STATE; ?>";
       error = 1;
    }
  } else {
    document.customers.entry_state.value = '';
    if (document.customers.entry_zone_id.selectedIndex == 0) {
       error_message = error_message + "<?php echo JS_ZONE; ?>";
       error = 1;
    }
  }
  if (document.customers.entry_country_id.value == 0) {
    error_message = error_message + "<?php echo JS_COUNTRY; ?>";
    error = 1;
  }
  if (error == 1) {
    alert(error_message);
    return false;
  } else {
    return true;
  }
}
//--></script>
<?php
  }
?>
</head>
<body marginwidth="0" marginheight="0" topmargin="0" bottommargin="0" leftmargin="0" rightmargin="0" bgcolor="#FFFFFF" onload="SetFocus();">
<!-- header //-->
<!-- header_eof //-->

<!-- body //-->
<table border="0" width="100%" cellspacing="2" cellpadding="2">
  <tr>
    <td width="<?php echo BOX_WIDTH; ?>" valign="top"><table border="0" width="<?php echo BOX_WIDTH; ?>" cellspacing="1" cellpadding="1" class="columnLeft">
<!-- left_navigation //-->
<!-- left_navigation_eof //-->
    </table></td>
<!-- body_text //-->
    <td width="100%" valign="top"><table border="0" width="100%" cellspacing="0" cellpadding="2">
<?php
  if ($HTTP_GET_VARS['action'] == 'edit') {
    $store_query = tep_db_query("SELECT a.*, s.* FROM " . TABLE_ADDRESS_BOOK . " a, " . TABLE_STORES . " s WHERE s.address_book_id = a.address_book_id and a.customers_id = 0 and s.stores_id =".$HTTP_GET_VARS['sID']);
    if(tep_db_num_rows($store_query)){
      $store = tep_db_fetch_array($store_query);
      $cInfo = new objectInfo($store);
    }
?>
      <tr>
        <td><table border="0" width="100%" cellspacing="0" cellpadding="0">
          <tr>
            <td class="pageHeading"><?php echo HEADING_TITLE; ?></td>
            <td class="pageHeading" align="right"><?php echo tep_draw_separator('pixel_trans.gif', HEADING_IMAGE_WIDTH, HEADING_IMAGE_HEIGHT); ?></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '1', '10'); ?></td>
      </tr>
      <tr><?php echo tep_draw_form('customers', FILENAME_STORES, tep_get_all_get_params(array('action')) . 'action=update', 'post', 'onSubmit="return check_form();"'); ?>
        <td class="formAreaTitle"><?php echo CATEGORY_CONTACT; ?></td>
      </tr>
      <tr>
        <td class="formArea"><table border="0" cellspacing="2" cellpadding="2">
          <tr>
            <td class="main"><?php echo ENTRY_STORE_TITLE; ?></td>
            <td class="main"><?php echo tep_draw_input_field('stores_title', $cInfo->stores_title, 'maxlength="255"', true); ?></td>
          </tr>
          <tr>
            <td class="main"><?php echo ENTRY_FIRST_NAME; ?></td>
            <td class="main"><?php echo tep_draw_input_field('customers_firstname', $cInfo->entry_firstname, 'maxlength="32"', false); ?></td>
          </tr>
          <tr>
            <td class="main"><?php echo ENTRY_LAST_NAME; ?></td>
            <td class="main"><?php echo tep_draw_input_field('customers_lastname', $cInfo->entry_lastname, 'maxlength="32"', false); ?></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '1', '10'); ?></td>
      </tr>
      <tr>
        <td class="formAreaTitle"><?php echo CATEGORY_COMPANY; ?></td>
      </tr>
      <tr>
        <td class="formArea"><table border="0" cellspacing="2" cellpadding="2">
          <tr>
            <td class="main"><?php echo ENTRY_COMPANY; ?></td>
            <td class="main"><?php echo tep_draw_input_field('entry_company', $cInfo->entry_company, 'maxlength="32"'). tep_draw_hidden_field('aID', $cInfo->address_book_id);; ?></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '1', '10'); ?></td>
      </tr>
      <tr>
        <td class="formAreaTitle"><?php echo CATEGORY_ADDRESS; ?></td>
      </tr>
      <tr>
        <td class="formArea"><table border="0" cellspacing="2" cellpadding="2">
          <tr>
            <td class="main"><?php echo ENTRY_STREET_ADDRESS; ?></td>
            <td class="main"><?php echo tep_draw_input_field('entry_street_address', $cInfo->entry_street_address, 'maxlength="64"', true); ?></td>
          </tr>
          <tr>
            <td class="main"><?php echo ENTRY_SUBURB; ?></td>
            <td class="main"><?php echo tep_draw_input_field('entry_suburb', $cInfo->entry_suburb, 'maxlength="32"'); ?></td>
          </tr>
          <tr>
            <td class="main"><?php echo ENTRY_POST_CODE; ?></td>
            <td class="main"><?php echo tep_draw_input_field('entry_postcode', $cInfo->entry_postcode, 'maxlength="8"', true); ?></td>
          </tr>
          <tr>
            <td class="main"><?php echo ENTRY_CITY; ?></td>
            <td class="main"><?php echo tep_draw_input_field('entry_city', $cInfo->entry_city, 'maxlength="32"', true); ?></td>
          </tr>
          <tr>
            <td class="main"><?php echo ENTRY_COUNTRY; ?></td>
            <td class="main"><?php echo tep_draw_pull_down_menu('entry_country_id', tep_get_countries(), $cInfo->entry_country_id, 'onChange="update_zone(this.form);"'); ?></td>
          </tr>
          <tr>
            <td class="main"><?php echo ENTRY_ZONE; ?></td>
            <td class="main"><?php echo tep_draw_pull_down_menu('entry_zone_id', tep_prepare_country_zones_pull_down($cInfo->entry_country_id), $cInfo->entry_zone_id, 'onChange="resetStateText(this.form);"'); ?></td>
          </tr>
          <tr>
            <td class="main">&nbsp;</td>
            <td class="main"><?php echo tep_draw_input_field('entry_state', $cInfo->entry_state, 'maxlength="32" onChange="resetZoneSelected(this.form);"'); ?></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '1', '10'); ?></td>
      </tr>
      <tr>
        <td align="right" class="main"><?php echo tep_image_submit('button_update.gif', IMAGE_UPDATE) . ' <a href="' . tep_href_link(FILENAME_STORES, tep_get_all_get_params(array('action'))) .'">' . tep_image_button('button_cancel.gif', IMAGE_CANCEL) . '</a>'; ?></td>
      </tr></form>
<?php
  } else {
?>
      <tr>
        <td><table border="0" width="100%" cellspacing="0" cellpadding="0">
          <tr><?php echo tep_draw_form('search', FILENAME_STORES, '', 'get'); ?>
            <td class="pageHeading"><?php echo HEADING_TITLE; ?></td>
            <td class="pageHeading" align="right"><?php echo tep_draw_separator('pixel_trans.gif', 1, HEADING_IMAGE_HEIGHT); ?></td>
            <td class="smallText" align="right">&nbsp;</td>
          </form></tr>
        </table></td>
      </tr>
      <tr>
        <td><table border="0" width="100%" cellspacing="0" cellpadding="0">
          <tr>
            <td valign="top"><table border="0" width="100%" cellspacing="0" cellpadding="2">
              <tr class="dataTableHeadingRow">
                <td class="dataTableHeadingContent"><?php echo TABLE_HEADING_TITLE; ?></td>
                <td class="dataTableHeadingContent" align="right"><?php echo TABLE_HEADING_ACTION; ?>&nbsp;</td>
              </tr>
<?php
    $stores_query_count=" FROM " . TABLE_STORES;
    $stores_query_raw = "SELECT a.*, s.* FROM " . TABLE_ADDRESS_BOOK . " a, " . TABLE_STORES . " s WHERE s.address_book_id = a.address_book_id and a.customers_id = 0";
    $stores_split = new splitPageResults($HTTP_GET_VARS['page'], MAX_DISPLAY_SEARCH_RESULTS, $stores_query_count, $stores_query_numrows);

    $stores_query = tep_db_query($stores_query_raw);
    while ($stores = tep_db_fetch_array($stores_query)) {
      if (((!$HTTP_GET_VARS['sID']) || (@$HTTP_GET_VARS['sID'] == $stores['stores_id'])) && (!$cInfo)) {
        $cInfo = new objectInfo($stores);
      }
      if ( (is_object($cInfo)) && ($stores['stores_id'] == $cInfo->stores_id) ) {
        echo '          <tr class="dataTableRowSelected" onmouseover="this.style.cursor=\'hand\'" onclick="document.location.href=\'' . tep_href_link(FILENAME_STORES, tep_get_all_get_params(array('sID', 'action')) . 'sID=' . $cInfo->stores_id . '&action=edit') . '\'">' . "\n";
      } else {
        echo '          <tr class="dataTableRow" onmouseover="this.className=\'dataTableRowOver\';this.style.cursor=\'hand\'" onmouseout="this.className=\'dataTableRow\'" onclick="document.location.href=\'' . tep_href_link(FILENAME_STORES, tep_get_all_get_params(array('sID')) . 'sID=' . $stores['stores_id']) . '\'">' . "\n";
      }
?>
                <td class="dataTableContent"><?php echo $stores['stores_title']; ?></td>
                <td class="dataTableContent" align="right"><?php if ( (is_object($cInfo)) && ($stores['stores_id'] == $cInfo->stores_id) ) { echo tep_image(DIR_WS_IMAGES . 'icon_arrow_right.gif', ''); } else { echo '<a href="' . tep_href_link(FILENAME_STORES, tep_get_all_get_params(array('sID')) . 'sID=' . $stores['stores_id']) . '">' . tep_image(DIR_WS_IMAGES . 'icon_info.gif', IMAGE_ICON_INFO) . '</a>'; } ?>&nbsp;</td>
              </tr>
<?php
    }
?>
              <tr>
                <td colspan="2"><table border="0" width="100%" cellspacing="0" cellpadding="2">
                  <tr>
                    <td class="smallText" valign="top"><?php echo $stores_split->display_count($stores_query_numrows, MAX_DISPLAY_SEARCH_RESULTS, $HTTP_GET_VARS['page'], TEXT_DISPLAY_NUMBER_OF_STORES); ?></td>
                    <td class="smallText" align="right"><?php echo $stores_split->display_links($stores_query_numrows, MAX_DISPLAY_SEARCH_RESULTS, MAX_DISPLAY_PAGE_LINKS, $HTTP_GET_VARS['page'], tep_get_all_get_params(array('page', 'info', 'x', 'y', 'sID'))); ?></td>
                  </tr>
                  <tr>
                    <td colspan="2" class="smallText" align="right">
                      <?php echo '<a href="' . tep_href_link(FILENAME_STORES, tep_get_all_get_params(array('sID', 'action')) . 'sID=0&action=edit') . '">' . tep_image_button('button_insert.gif', IMAGE_INSERT) . '</a>';?>
                    </td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
<?php
  $heading = array();
  $contents = array();
  switch ($HTTP_GET_VARS['action']) {
    case 'confirm':
      $heading[] = array('text' => '<b>' . TEXT_INFO_HEADING_DELETE_STORE . '</b>');
      $contents = array('form' => tep_draw_form('stores', FILENAME_STORES, tep_get_all_get_params(array('sID', 'action')) . 'sID=' . $cInfo->stores_id . '&aID='.$cInfo->address_book_id.'&action=deleteconfirm'));
      $contents[] = array('text' => TEXT_DELETE_INTRO . '<br><br><b>' . $cInfo->stores_title . '</b>');
      $contents[] = array('align' => 'center', 'text' => '<br>' . tep_image_submit('button_delete.gif', IMAGE_DELETE) . ' <a href="' . tep_href_link(FILENAME_STORES, tep_get_all_get_params(array('sID', 'action')) . 'sID=' . $cInfo->stores_id) . '">' . tep_image_button('button_cancel.gif', IMAGE_CANCEL) . '</a>');
      break;
    default:
      if (is_object($cInfo)) {
        $heading[] = array('text' => '<b>' . $cInfo->stores_title . '</b>');
        $contents[] = array('align' => 'center', 'text' => '<a href="' . tep_href_link(FILENAME_STORES, tep_get_all_get_params(array('sID', 'action')) . 'sID=' . $cInfo->stores_id . '&action=edit') . '">' . tep_image_button('button_edit.gif', IMAGE_EDIT) . '</a> <a href="' . tep_href_link(FILENAME_STORES, tep_get_all_get_params(array('sID', 'action')) . 'sID=' . $cInfo->stores_id . '&action=confirm') . '">' . tep_image_button('button_delete.gif', IMAGE_DELETE) . '</a>');
      }
      break;
  }

  if ( (tep_not_null($heading)) && (tep_not_null($contents)) ) {
    echo '            <td width="25%" valign="top">' . "\n";

    $box = new box;
    echo $box->infoBox($heading, $contents);

    echo '            </td>' . "\n";
  }
?>
          </tr>
        </table></td>
      </tr>
<?php
  }
?>
    </table></td>
<!-- body_text_eof //-->
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
