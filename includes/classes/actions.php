<?php
/*
  $Id$

  FieldMitr, Open Source E-Commerce Solutions
  http://www.FieldMitr.com

  Copyright (c) 2018 FieldMitr

  Released under the GNU General Public License
*/

  class osC_Actions {
    public static function parse($module) {
      $module = basename($module);

      if ( !empty($module) && file_exists('includes/actions/' . $module . '.php') ) {
        include('includes/actions/' . $module . '.php');

        call_user_func(array('osC_Actions_' . $module, 'execute'));
      }
    }
  }
  