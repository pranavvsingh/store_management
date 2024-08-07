<?php
/*
  $Id$

  FieldMitr, Open Source E-Commerce Solutions 
  http://www.FieldMitr.com

  Copyright (c) 2016 FieldMitr

  Released under the GNU General Public License
*/

  class nb_currencies {
    var $code = 'nb_currencies';
    var $group = 'navbar_modules_right';
    var $title;
    var $description;
    var $sort_order;
    var $enabled = false;    
    
    function __construct() {
      $this->title = MODULE_NAVBAR_CURRENCIES_TITLE;
      $this->description = MODULE_NAVBAR_CURRENCIES_DESCRIPTION;

      if ( defined('MODULE_NAVBAR_CURRENCIES_STATUS') ) {
        $this->sort_order = MODULE_NAVBAR_CURRENCIES_SORT_ORDER;
        $this->enabled = (MODULE_NAVBAR_CURRENCIES_STATUS == 'True');
        
        switch (MODULE_NAVBAR_CURRENCIES_CONTENT_PLACEMENT) {
          case 'Home':
          $this->group = 'navbar_modules_home';
          break;
          case 'Left':
          $this->group = 'navbar_modules_left';
          break;
          case 'Right':
          $this->group = 'navbar_modules_right';
          break;
        } 
      }
    }

    function getOutput() {
      global $oscTemplate, $cart, $currencies, $PHP_SELF, $request_type, $currency;
      
      if (substr(basename($PHP_SELF), 0, 8) != 'checkout') {
        ob_start();
        require('includes/modules/navbar_modules/templates/currencies.php');
        $data = ob_get_clean();

        $oscTemplate->addBlock($data, $this->group);
      }
    }

    function isEnabled() {
      return $this->enabled;
    }

    function check() {
      return defined('MODULE_NAVBAR_CURRENCIES_STATUS');
    }

    function install() {
      tep_db_query("insert into configuration (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, set_function, date_added) values ('Enable Currencies Module', 'MODULE_NAVBAR_CURRENCIES_STATUS', 'True', 'Do you want to add the module to your Navbar?', '6', '1', 'tep_cfg_select_option(array(\'True\', \'False\'), ', now())");
      tep_db_query("insert into configuration (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, set_function, date_added) values ('Content Placement', 'MODULE_NAVBAR_CURRENCIES_CONTENT_PLACEMENT', 'Right', 'Should the module be loaded in the Left or Right or the Home area of the Navbar?', '6', '1', 'tep_cfg_select_option(array(\'Left\', \'Right\', \'Home\'), ', now())");
      tep_db_query("insert into configuration (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added) values ('Sort Order', 'MODULE_NAVBAR_CURRENCIES_SORT_ORDER', '530', 'Sort order of display. Lowest is displayed first.', '6', '0', now())");
    }

    function remove() {
      tep_db_query("delete from configuration where configuration_key in ('" . implode("', '", $this->keys()) . "')");
    }

    function keys() {
      return array('MODULE_NAVBAR_CURRENCIES_STATUS', 'MODULE_NAVBAR_CURRENCIES_CONTENT_PLACEMENT', 'MODULE_NAVBAR_CURRENCIES_SORT_ORDER');
    }
  }
  