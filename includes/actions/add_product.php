<?php
/*
  $Id$

  FieldMitr, Open Source E-Commerce Solutions
  http://www.FieldMitr.com

  Copyright (c) 2018 FieldMitr

  Released under the GNU General Public License
*/
	
	class osC_Actions_add_product {
		public static function execute() {
			global $PHP_SELF, $messageStack, $cart, $goto, $parameters;
      
      if (isset($_POST['products_id'])) {       
        $pid = (int)$_POST['products_id'];        
        $attributes = isset($_POST['id']) ? $_POST['id'] : '';
        
        $cart->add_cart($_POST['products_id'], $cart->get_quantity(tep_get_uprid($pid, $attributes))+1, $attributes);
        
        $messageStack->add_session('product_action', sprintf(PRODUCT_ADDED, tep_get_products_name((int)$_POST['products_id'])), 'success');
      }
      
      tep_redirect(tep_href_link($goto, tep_get_all_get_params($parameters)));      
		}
	}
