<?php
/*
  $Id$

  FieldMitr, Open Source E-Commerce Solutions
  http://www.FieldMitr.com

  Copyright (c) 2010 FieldMitr

  Released under the GNU General Public License
*/

  class sb_email {
    var $code = 'sb_email';
    var $title;
    var $description;
    var $sort_order;
    var $icon = 'email.png';
    var $enabled = false;

    function __construct() {
      $this->title = MODULE_SOCIAL_BOOKMARKS_EMAIL_TITLE;
      $this->public_title = MODULE_SOCIAL_BOOKMARKS_EMAIL_PUBLIC_TITLE;
      $this->description = MODULE_SOCIAL_BOOKMARKS_EMAIL_DESCRIPTION;

      if ( defined('MODULE_SOCIAL_BOOKMARKS_EMAIL_STATUS') ) {
        $this->sort_order = MODULE_SOCIAL_BOOKMARKS_EMAIL_SORT_ORDER;
        $this->enabled = (MODULE_SOCIAL_BOOKMARKS_EMAIL_STATUS == 'True');
      }
    }

    function getOutput() {
      return '<a href="' . tep_href_link('tell_a_friend.php', 'products_id=' . $_GET['products_id']) . '"><img src="images/social_bookmarks/' . $this->icon . '" border="0" title="' . tep_output_string_protected($this->public_title) . '" alt="' . tep_output_string_protected($this->public_title) . '" /></a>';
    }

    function isEnabled() {
      return $this->enabled;
    }

    function getIcon() {
      return $this->icon;
    }

    function getPublicTitle() {
      return $this->public_title;
    }

    function check() {
      return defined('MODULE_SOCIAL_BOOKMARKS_EMAIL_STATUS');
    }

    function install() {
      tep_db_query("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, set_function, date_added) values ('Enable E-Mail Module', 'MODULE_SOCIAL_BOOKMARKS_EMAIL_STATUS', 'True', 'Do you want to allow products to be shared through e-mail?', '6', '1', 'tep_cfg_select_option(array(\'True\', \'False\'), ', now())");
      tep_db_query("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added) values ('Sort Order', 'MODULE_SOCIAL_BOOKMARKS_EMAIL_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', '6', '0', now())");
    }

    function remove() {
      tep_db_query("delete from " . TABLE_CONFIGURATION . " where configuration_key in ('" . implode("', '", $this->keys()) . "')");
    }

    function keys() {
      return array('MODULE_SOCIAL_BOOKMARKS_EMAIL_STATUS', 'MODULE_SOCIAL_BOOKMARKS_EMAIL_SORT_ORDER');
    }
  }
?>
