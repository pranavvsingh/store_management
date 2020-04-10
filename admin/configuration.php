<?php
/*
  $Id$
  FieldMitr, Open Source E-Commerce Solutions
  http://www.oscommerce.com
  Copyright (c) 2010 FieldMitr
  Released under the GNU General Public License
*/
  require('includes/application_top.php');
  $action = (isset($_GET['action']) ? $_GET['action'] : '');
  if (tep_not_null($action)) {
    switch ($action) {
      case 'save':
        $configuration_value = tep_db_prepare_input($_POST['configuration_value']);
        $cID = tep_db_prepare_input($_GET['cID']);
        tep_db_query("update " . TABLE_CONFIGURATION . " set configuration_value = '" . tep_db_input($configuration_value) . "', last_modified = now() where configuration_id = '" . (int)$cID . "'");
        tep_redirect(tep_href_link('configuration.php', 'gID=' . $_GET['gID'] . '&cID=' . $cID));
        break;
    }
  }
  $gID = (isset($_GET['gID'])) ? $_GET['gID'] : 1;
  $cfg_group_query = tep_db_query("select configuration_group_title from " . TABLE_CONFIGURATION_GROUP . " where configuration_group_id = '" . (int)$gID . "'");
  $cfg_group = tep_db_fetch_array($cfg_group_query);
  require('includes/template_top.php');
?>
    <div class="row">
      <div class="col-sm-9">
            <div class="card mb-3">
										<div class="card-header">
											<h3><i class="fa fa-cog"></i> <?php echo $cfg_group['configuration_group_title']; ?></h3>
										</div>
										<div class="card-body">  
            <table class="table table-striped table-sm table-hover">
            <thead>
              <tr>
                <th scope="col"><?php echo TABLE_HEADING_CONFIGURATION_TITLE; ?></th>
                <th scope="col"><?php echo TABLE_HEADING_CONFIGURATION_VALUE; ?></th>
                <th scope="col"><?php echo TABLE_HEADING_ACTION; ?></th>
              </tr>
            </thead>
            <tbody>
<?php
  $configuration_query = tep_db_query("select configuration_id, configuration_title, configuration_value, use_function from " . TABLE_CONFIGURATION . " where configuration_group_id = '" . (int)$gID . "' order by sort_order");
  while ($configuration = tep_db_fetch_array($configuration_query)) {
    if (tep_not_null($configuration['use_function'])) {
      $use_function = $configuration['use_function'];
      if (preg_match('/->/', $use_function)) {
        $class_method = explode('->', $use_function);
        if (!is_object(${$class_method[0]})) {
          include('includes/classes/' . $class_method[0] . '.php');
          ${$class_method[0]} = new $class_method[0]();
        }
        $cfgValue = tep_call_function($class_method[1], $configuration['configuration_value'], ${$class_method[0]});
      } else {
        $cfgValue = tep_call_function($use_function, $configuration['configuration_value']);
      }
    } else {
      $cfgValue = $configuration['configuration_value'];
    }
    if ((!isset($_GET['cID']) || (isset($_GET['cID']) && ($_GET['cID'] == $configuration['configuration_id']))) && !isset($cInfo) && (substr($action, 0, 3) != 'new')) {
      $cfg_extra_query = tep_db_query("select configuration_key, configuration_description, date_added, last_modified, use_function, set_function from " . TABLE_CONFIGURATION . " where configuration_id = '" . (int)$configuration['configuration_id'] . "'");
      $cfg_extra = tep_db_fetch_array($cfg_extra_query);
      $cInfo_array = array_merge($configuration, $cfg_extra);
      $cInfo = new objectInfo($cInfo_array);
    }
    if ( (isset($cInfo) && is_object($cInfo)) && ($configuration['configuration_id'] == $cInfo->configuration_id) ) {
      echo '                  <tr id="defaultSelected" class="dataTableRowSelected" onmouseover="rowOverEffect(this)" onmouseout="rowOutEffect(this)" onclick="document.location.href=\'' . tep_href_link('configuration.php', 'gID=' . $_GET['gID'] . '&cID=' . $cInfo->configuration_id . '&action=edit') . '\'">' . "\n";
    } else {
      echo '                  <tr class="dataTableRow" onmouseover="rowOverEffect(this)" onmouseout="rowOutEffect(this)" onclick="document.location.href=\'' . tep_href_link('configuration.php', 'gID=' . $_GET['gID'] . '&cID=' . $configuration['configuration_id']) . '\'">' . "\n";
    }
?>
                <td class="dataTableContent"><?php echo $configuration['configuration_title']; ?></td>
                <td class="dataTableContent"><?php echo htmlspecialchars($cfgValue); ?></td>
                <td class="dataTableContent" align="right"><?php if ( (isset($cInfo) && is_object($cInfo)) && ($configuration['configuration_id'] == $cInfo->configuration_id) ) { echo '<i class="fa fa-chevron-circle-right"></i>'; } else { echo '<a href="' . tep_href_link('configuration.php', 'gID=' . $_GET['gID'] . '&cID=' . $configuration['configuration_id']) . '">' . '<i class="fa fa-info-circle" aria-hidden="true"></i>' . '</a>'; } ?>&nbsp;</td>
              </tr>
<?php
  }
?>
    </tbody>         </table>
    </div>														
									</div><!-- end card-->	
 </div>
<?php
  $heading = array();
  $contents = array();
  switch ($action) {
    case 'edit':
      //$heading[] = array('text' => '<strong>' . $cInfo->configuration_title . '</strong>');
      $heading[] = array('text' => '');
      if ($cInfo->set_function) {
        eval('$value_field = ' . $cInfo->set_function . '"' . htmlspecialchars($cInfo->configuration_value) . '");');
      } else {
        $value_field = tep_draw_input_field('configuration_value', $cInfo->configuration_value);
      }
      $contents = array('form' => tep_draw_form('configuration', 'configuration.php', 'gID=' . $_GET['gID'] . '&cID=' . $cInfo->configuration_id . '&action=save'));
      //$contents[] = array('text' => TEXT_INFO_EDIT_INTRO);
      //$contents[] = array('text' => '<br /><strong>' . $cInfo->configuration_title . '</strong><br />' . $cInfo->configuration_description . '<br />' . $value_field);
      $contents[] = array('text' => '' . $cInfo->configuration_description . '<br />' . $value_field);
      $contents[] = array('align' => 'center', 'text' => '<br />' . tep_draw_button(IMAGE_SAVE, 'disk', null, 'primary', null, 'secondary') . ' ' . tep_draw_button(IMAGE_CANCEL, 'close', tep_href_link('configuration.php', 'gID=' . $_GET['gID'] . '&cID=' . $cInfo->configuration_id)));
      break;
    default:
      if (isset($cInfo) && is_object($cInfo)) {
        //$heading[] = array('text' => '<strong>' . $cInfo->configuration_title . '</strong>');
        $heading[] = array('text' => '');
        $contents[] = array('align' => 'center', 'text' => tep_draw_button(IMAGE_EDIT, 'document', tep_href_link('configuration.php', 'gID=' . $_GET['gID'] . '&cID=' . $cInfo->configuration_id . '&action=edit')));
        $contents[] = array('text' => '<br />' . $cInfo->configuration_description);
        $contents[] = array('text' => '<br />' . TEXT_INFO_DATE_ADDED . ' ' . tep_date_short($cInfo->date_added));
        if (tep_not_null($cInfo->last_modified)) $contents[] = array('text' => TEXT_INFO_LAST_MODIFIED . ' ' . tep_date_short($cInfo->last_modified));
      }
      break;
  }
  if ( (tep_not_null($heading)) && (tep_not_null($contents)) ) {
    //echo '<div class="col-sm-3">';
    ?>
<div class="col-sm-3">
    <div class="card mb-3">
        <div class="card-header">
          <h3><?php echo $cInfo->configuration_title; ?></h3>
          <?php echo TEXT_INFO_EDIT_INTRO; ?>
        </div>
        <div class="card-body card-bg">  
        <?php
        $box = new box;
        echo $box->infoBox($heading, $contents);
        ?>
        </div>
      </div>
<?php
    //echo '</div>';
  }
?>
    </div>    
  </div>
<?php
  require('includes/template_bottom.php');
  require('includes/application_bottom.php');
?>