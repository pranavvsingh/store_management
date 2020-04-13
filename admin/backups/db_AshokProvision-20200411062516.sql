# FieldMitr, Open Source E-Commerce Solutions
# http://www.oscommerce.com
#
# Database Backup For Ashok Provision Store
# Copyright (c) 2020 Kailash Bhai
#
# Database: AshokProvision
# Database Server: 127.0.0.1
#
# Backup Date: 04/11/2020 06:25:16

drop table if exists action_recorder;
create table action_recorder (
  id int(11) not null auto_increment,
  module varchar(255) not null ,
  user_id int(11) ,
  user_name varchar(255) ,
  identifier varchar(255) not null ,
  success char(1) ,
  date_added datetime not null ,
  PRIMARY KEY (id),
  KEY idx_action_recorder_module (module),
  KEY idx_action_recorder_user_id (user_id),
  KEY idx_action_recorder_identifier (identifier),
  KEY idx_action_recorder_date_added (date_added)
);

insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('1', 'ar_admin_login', '1', 'demo', '127.0.0.1', '1', '2020-04-06 13:14:07');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('2', 'ar_admin_login', '1', 'demo', '127.0.0.1', '1', '2020-04-06 15:07:01');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('3', 'ar_admin_login', '1', 'demo', '127.0.0.1', '1', '2020-04-06 15:07:46');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('4', 'ar_admin_login', '1', 'demo', '127.0.0.1', '1', '2020-04-07 16:02:11');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('5', 'ar_admin_login', '1', 'demo', '127.0.0.1', '1', '2020-04-08 01:24:59');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('6', 'ar_admin_login', '1', 'demo', '127.0.0.1', '1', '2020-04-08 03:19:45');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('7', 'ar_reset_password', '2', 'pranavvsingh46@gmail.com', '127.0.0.1', '1', '2020-04-08 03:40:18');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('8', 'ar_admin_login', '1', 'demo', '127.0.0.1', '1', '2020-04-08 03:46:09');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('9', 'ar_admin_login', '1', 'demo', '127.0.0.1', '1', '2020-04-08 13:36:37');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('10', 'ar_admin_login', '1', 'demo', '127.0.0.1', '1', '2020-04-08 14:30:51');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('11', 'ar_admin_login', '1', 'demo', '127.0.0.1', '1', '2020-04-08 20:08:44');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('12', 'ar_admin_login', '1', 'demo', '127.0.0.1', '1', '2020-04-08 20:50:15');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('13', 'ar_admin_login', '1', 'demo', '127.0.0.1', '1', '2020-04-08 21:33:27');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('14', 'ar_admin_login', '1', 'demo', '127.0.0.1', '1', '2020-04-08 21:37:09');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('15', 'ar_admin_login', '1', 'demo', '127.0.0.1', '1', '2020-04-08 22:29:13');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('16', 'ar_admin_login', '1', 'demo', '127.0.0.1', '1', '2020-04-09 01:28:43');
insert into action_recorder (id, module, user_id, user_name, identifier, success, date_added) values ('17', 'ar_admin_login', '1', 'demo', '127.0.0.1', '1', '2020-04-11 01:55:05');
drop table if exists address_book;
create table address_book (
  address_book_id int(11) not null auto_increment,
  customers_id int(11) not null ,
  entry_gender char(1) ,
  entry_company varchar(255) ,
  entry_firstname varchar(255) not null ,
  entry_lastname varchar(255) not null ,
  entry_street_address varchar(255) not null ,
  entry_suburb varchar(255) ,
  entry_postcode varchar(255) not null ,
  entry_city varchar(255) not null ,
  entry_state varchar(255) ,
  entry_country_id int(11) default '0' not null ,
  entry_zone_id int(11) default '0' not null ,
  PRIMARY KEY (address_book_id),
  KEY idx_address_book_customers_id (customers_id)
);

insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id) values ('1', '1', 'm', 'xyz', 'Demo', 'User', '1234fdfdsfdsf', 'adadsadsfds', '451011', 'pune', 'Maharastra', '99', '0');
insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id) values ('2', '2', 'm', 'abc', 'Demo', 'user', 'abcer4567', NULL, '451011', 'pune', 'Maharastra', '99', '0');
insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id) values ('3', '3', 'm', '123abc', 'Pranav', 'Singh', '123 yard-45', NULL, '411018', 'vadodara', '', '99', '182');
insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id) values ('4', '3', 'm', '123abc', 'Pranav', 'SIngh', 'abc123', NULL, '451011', 'pune', 'Maharastra', '99', '0');
drop table if exists address_format;
create table address_format (
  address_format_id int(11) not null auto_increment,
  address_format varchar(128) not null ,
  address_summary varchar(48) not null ,
  PRIMARY KEY (address_format_id)
);

insert into address_format (address_format_id, address_format, address_summary) values ('1', '$firstname $lastname$cr$streets$cr$city, $postcode$cr$statecomma$country', '$city / $country');
insert into address_format (address_format_id, address_format, address_summary) values ('2', '$firstname $lastname$cr$streets$cr$city, $state    $postcode$cr$country', '$city, $state / $country');
insert into address_format (address_format_id, address_format, address_summary) values ('3', '$firstname $lastname$cr$streets$cr$city$cr$postcode - $statecomma$country', '$state / $country');
insert into address_format (address_format_id, address_format, address_summary) values ('4', '$firstname $lastname$cr$streets$cr$city ($postcode)$cr$country', '$postcode / $country');
insert into address_format (address_format_id, address_format, address_summary) values ('5', '$firstname $lastname$cr$streets$cr$postcode $city$cr$country', '$city / $country');
drop table if exists administrators;
create table administrators (
  id int(11) not null auto_increment,
  user_name varchar(255) not null ,
  user_password varchar(60) not null ,
  PRIMARY KEY (id)
);

insert into administrators (id, user_name, user_password) values ('1', 'demo', '$P$DvMUsTDSDyPTgZwV/FSdZomGyqWxYE/');
drop table if exists banners;
create table banners (
  banners_id int(11) not null auto_increment,
  banners_title varchar(64) not null ,
  banners_url varchar(255) not null ,
  banners_image varchar(64) not null ,
  banners_group varchar(10) not null ,
  banners_html_text text ,
  expires_impressions int(7) default '0' ,
  expires_date datetime ,
  date_scheduled datetime ,
  date_added datetime not null ,
  date_status_change datetime ,
  status int(1) default '1' not null ,
  PRIMARY KEY (banners_id),
  KEY idx_banners_group (banners_group)
);

insert into banners (banners_id, banners_title, banners_url, banners_image, banners_group, banners_html_text, expires_impressions, expires_date, date_scheduled, date_added, date_status_change, status) values ('1', 'osCommerce', 'http://www.oscommerce.com', 'banners/oscommerce.gif', 'footer', '', '0', NULL, NULL, '2020-04-06 13:12:13', NULL, '1');
drop table if exists banners_history;
create table banners_history (
  banners_history_id int(11) not null auto_increment,
  banners_id int(11) not null ,
  banners_shown int(5) default '0' not null ,
  banners_clicked int(5) default '0' not null ,
  banners_history_date datetime not null ,
  PRIMARY KEY (banners_history_id),
  KEY idx_banners_history_banners_id (banners_id)
);

insert into banners_history (banners_history_id, banners_id, banners_shown, banners_clicked, banners_history_date) values ('1', '1', '10', '0', '2020-04-08 12:59:59');
drop table if exists categories;
create table categories (
  categories_id int(11) not null auto_increment,
  categories_image varchar(64) ,
  parent_id int(11) default '0' not null ,
  sort_order int(3) ,
  date_added datetime ,
  last_modified datetime ,
  PRIMARY KEY (categories_id),
  KEY idx_categories_parent_id (parent_id)
);

insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('24', NULL, '0', '0', '2020-04-06 21:05:51', NULL);
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('25', NULL, '24', '0', '2020-04-06 21:06:08', NULL);
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('26', NULL, '24', '0', '2020-04-06 21:21:13', NULL);
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('27', NULL, '24', '0', '2020-04-06 22:31:01', NULL);
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('28', NULL, '24', '0', '2020-04-06 22:39:22', NULL);
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('29', NULL, '24', '0', '2020-04-06 22:46:25', NULL);
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('30', NULL, '0', '0', '2020-04-06 22:54:39', NULL);
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('31', NULL, '0', '0', '2020-04-06 23:15:40', NULL);
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('32', NULL, '0', '0', '2020-04-06 23:25:32', NULL);
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('33', NULL, '0', '0', '2020-04-06 23:34:01', NULL);
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('34', NULL, '0', '0', '2020-04-06 23:41:59', NULL);
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('35', NULL, '34', '0', '2020-04-06 23:51:31', NULL);
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('36', NULL, '35', '0', '2020-04-06 23:58:16', NULL);
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('37', NULL, '0', '0', '2020-04-07 00:10:57', NULL);
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('38', NULL, '0', '0', '2020-04-07 00:16:51', NULL);
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('39', NULL, '0', '0', '2020-04-07 00:26:40', NULL);
drop table if exists categories_description;
create table categories_description (
  categories_id int(11) default '0' not null ,
  language_id int(11) default '1' not null ,
  categories_name varchar(32) not null ,
  categories_description text ,
  categories_seo_description text ,
  categories_seo_keywords varchar(128) ,
  categories_seo_title varchar(128) ,
  PRIMARY KEY (categories_id, language_id),
  KEY idx_categories_name (categories_name)
);

insert into categories_description (categories_id, language_id, categories_name, categories_description, categories_seo_description, categories_seo_keywords, categories_seo_title) values ('24', '1', 'Mixes', '', '', '', '');
insert into categories_description (categories_id, language_id, categories_name, categories_description, categories_seo_description, categories_seo_keywords, categories_seo_title) values ('25', '1', 'Breakfast Mixes', '', '', '', '');
insert into categories_description (categories_id, language_id, categories_name, categories_description, categories_seo_description, categories_seo_keywords, categories_seo_title) values ('26', '1', 'Sweet Mixes', '', '', '', '');
insert into categories_description (categories_id, language_id, categories_name, categories_description, categories_seo_description, categories_seo_keywords, categories_seo_title) values ('27', '1', 'Snacks Mixes', '', '', '', '');
insert into categories_description (categories_id, language_id, categories_name, categories_description, categories_seo_description, categories_seo_keywords, categories_seo_title) values ('28', '1', 'Meal Mixes', '', '', '', '');
insert into categories_description (categories_id, language_id, categories_name, categories_description, categories_seo_description, categories_seo_keywords, categories_seo_title) values ('29', '1', 'Health Drink Mix', '', '', '', '');
insert into categories_description (categories_id, language_id, categories_name, categories_description, categories_seo_description, categories_seo_keywords, categories_seo_title) values ('30', '1', 'Curries', '', '', '', '');
insert into categories_description (categories_id, language_id, categories_name, categories_description, categories_seo_description, categories_seo_keywords, categories_seo_title) values ('31', '1', 'Rice', '', '', '', '');
insert into categories_description (categories_id, language_id, categories_name, categories_description, categories_seo_description, categories_seo_keywords, categories_seo_title) values ('32', '1', 'Soups', '', '', '', '');
insert into categories_description (categories_id, language_id, categories_name, categories_description, categories_seo_description, categories_seo_keywords, categories_seo_title) values ('33', '1', 'Others', '', '', '', '');
insert into categories_description (categories_id, language_id, categories_name, categories_description, categories_seo_description, categories_seo_keywords, categories_seo_title) values ('34', '1', 'Masalas', '', '', '', '');
insert into categories_description (categories_id, language_id, categories_name, categories_description, categories_seo_description, categories_seo_keywords, categories_seo_title) values ('35', '1', 'Pure Spices', '', '', '', '');
insert into categories_description (categories_id, language_id, categories_name, categories_description, categories_seo_description, categories_seo_keywords, categories_seo_title) values ('36', '1', 'Masala paste', '', '', '', '');
insert into categories_description (categories_id, language_id, categories_name, categories_description, categories_seo_description, categories_seo_keywords, categories_seo_title) values ('37', '1', 'Beverages', '', '', '', '');
insert into categories_description (categories_id, language_id, categories_name, categories_description, categories_seo_description, categories_seo_keywords, categories_seo_title) values ('38', '1', 'Vermicelli', '', '', '', '');
insert into categories_description (categories_id, language_id, categories_name, categories_description, categories_seo_description, categories_seo_keywords, categories_seo_title) values ('39', '1', 'Pickles and Papads', '', '', '', '');
drop table if exists configuration;
create table configuration (
  configuration_id int(11) not null auto_increment,
  configuration_title varchar(255) not null ,
  configuration_key varchar(255) not null ,
  configuration_value text not null ,
  configuration_description varchar(255) not null ,
  configuration_group_id int(11) not null ,
  sort_order int(5) ,
  last_modified datetime ,
  date_added datetime not null ,
  use_function varchar(255) ,
  set_function varchar(255) ,
  PRIMARY KEY (configuration_id)
);

insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('1', 'Store Name', 'STORE_NAME', 'Ashok Provision Store', 'The name of my store', '1', '1', '2020-04-11 01:59:54', '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('2', 'Store Owner', 'STORE_OWNER', 'Kailash Bhai', 'The name of my store owner', '1', '2', '2020-04-11 02:00:26', '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('3', 'E-Mail Address', 'STORE_OWNER_EMAIL_ADDRESS', '', 'The e-mail address of my store owner', '1', '3', '2020-04-11 02:01:46', '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('4', 'E-Mail From', 'EMAIL_FROM', '', 'The e-mail address used in (sent) e-mails', '1', '4', '2020-04-11 02:01:54', '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('5', 'Country', 'STORE_COUNTRY', '99', 'The country my store is located in <br /><br /><strong>Note: Please remember to update the store zone.</strong>', '1', '6', '2020-04-08 19:07:03', '2020-04-06 13:12:13', 'tep_get_country_name', 'tep_cfg_pull_down_country_list(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('6', 'Zone', 'STORE_ZONE', '182', 'The zone my store is located in', '1', '7', '2020-04-09 01:50:01', '2020-04-06 13:12:13', 'tep_cfg_get_zone_name', 'tep_cfg_pull_down_zone_list(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('7', 'Switch To Default Language Currency', 'USE_DEFAULT_LANGUAGE_CURRENCY', 'false', 'Automatically switch to the language\'s currency when it is changed', '1', '10', NULL, '2020-04-06 13:12:13', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('8', 'Send Extra Order Emails To', 'SEND_EXTRA_ORDER_EMAILS_TO', '', 'Send extra order emails to the following email addresses, in this format: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;', '1', '11', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('9', 'Use Search-Engine Safe URLs', 'SEARCH_ENGINE_FRIENDLY_URLS', 'false', 'Use search-engine safe urls for all site links', '1', '12', NULL, '2020-04-06 13:12:13', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('10', 'Display Cart After Adding Product', 'DISPLAY_CART', 'true', 'Display the shopping cart after adding a product (or return back to their origin)', '1', '14', NULL, '2020-04-06 13:12:13', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('11', 'Allow Guest To Tell A Friend', 'ALLOW_GUEST_TO_TELL_A_FRIEND', 'false', 'Allow guests to tell a friend about a product', '1', '15', NULL, '2020-04-06 13:12:13', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('12', 'Default Search Operator', 'ADVANCED_SEARCH_DEFAULT_OPERATOR', 'and', 'Default search operators', '1', '17', NULL, '2020-04-06 13:12:13', NULL, 'tep_cfg_select_option(array(\'and\', \'or\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('13', 'Store Address', 'STORE_ADDRESS', '12,
Talati Khadki,
Chhipwad,
Padra, Vadodara - 391440, Near JAY Ambe Photo Studio', 'This is the Address of my store used on printable documents and displayed online', '1', '18', '2020-04-11 02:01:04', '2020-04-06 13:12:13', NULL, 'tep_cfg_textarea(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('14', 'Store Phone', 'STORE_PHONE', '8651556589', 'This is the phone number of my store used on printable documents and displayed online', '1', '19', '2020-04-11 02:01:22', '2020-04-06 13:12:13', NULL, 'tep_cfg_textarea(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('15', 'Tax Decimal Places', 'TAX_DECIMAL_PLACES', '0', 'Pad the tax value this amount of decimal places', '1', '20', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('16', 'Display Prices with Tax', 'DISPLAY_PRICE_WITH_TAX', 'false', 'Display prices with tax included (true) or add the tax at the end (false)', '1', '21', NULL, '2020-04-06 13:12:13', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('17', 'First Name', 'ENTRY_FIRST_NAME_MIN_LENGTH', '2', 'Minimum length of first name', '2', '1', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('18', 'Last Name', 'ENTRY_LAST_NAME_MIN_LENGTH', '2', 'Minimum length of last name', '2', '2', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('19', 'Date of Birth', 'ENTRY_DOB_MIN_LENGTH', '10', 'Minimum length of date of birth', '2', '3', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('20', 'E-Mail Address', 'ENTRY_EMAIL_ADDRESS_MIN_LENGTH', '6', 'Minimum length of e-mail address', '2', '4', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('21', 'Street Address', 'ENTRY_STREET_ADDRESS_MIN_LENGTH', '5', 'Minimum length of street address', '2', '5', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('22', 'Company', 'ENTRY_COMPANY_MIN_LENGTH', '2', 'Minimum length of company name', '2', '6', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('23', 'Post Code', 'ENTRY_POSTCODE_MIN_LENGTH', '4', 'Minimum length of post code', '2', '7', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('24', 'City', 'ENTRY_CITY_MIN_LENGTH', '3', 'Minimum length of city', '2', '8', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('25', 'State', 'ENTRY_STATE_MIN_LENGTH', '2', 'Minimum length of state', '2', '9', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('26', 'Mobile Number', 'ENTRY_TELEPHONE_MIN_LENGTH', '3', 'Minimum length of Mobile Number', '2', '10', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('27', 'Password', 'ENTRY_PASSWORD_MIN_LENGTH', '5', 'Minimum length of password', '2', '11', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('28', 'Credit Card Owner Name', 'CC_OWNER_MIN_LENGTH', '3', 'Minimum length of credit card owner name', '2', '12', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('29', 'Credit Card Number', 'CC_NUMBER_MIN_LENGTH', '10', 'Minimum length of credit card number', '2', '13', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('30', 'Review Text', 'REVIEW_TEXT_MIN_LENGTH', '50', 'Minimum length of review text', '2', '14', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('31', 'Best Sellers', 'MIN_DISPLAY_BESTSELLERS', '1', 'Minimum number of best sellers to display', '2', '15', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('32', 'Also Purchased', 'MIN_DISPLAY_ALSO_PURCHASED', '1', 'Minimum number of products to display in the \'This Customer Also Purchased\' box', '2', '16', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('33', 'Address Book Entries', 'MAX_ADDRESS_BOOK_ENTRIES', '5', 'Maximum address book entries a customer is allowed to have', '3', '1', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('34', 'Search Results', 'MAX_DISPLAY_SEARCH_RESULTS', '20', 'Amount of products to list', '3', '2', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('35', 'Page Links', 'MAX_DISPLAY_PAGE_LINKS', '5', 'Number of \'number\' links use for page-sets', '3', '3', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('36', 'Special Products', 'MAX_DISPLAY_SPECIAL_PRODUCTS', '9', 'Maximum number of products on special to display', '3', '4', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('37', 'Manufacturers List', 'MAX_DISPLAY_MANUFACTURERS_IN_A_LIST', '0', 'Used in manufacturers box; when the number of manufacturers exceeds this number, a drop-down list will be displayed instead of the default list', '3', '7', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('38', 'Manufacturers Select Size', 'MAX_MANUFACTURERS_LIST', '1', 'Used in manufacturers box; when this value is \'1\' the classic drop-down list will be used for the manufacturers box. Otherwise, a list-box with the specified number of rows will be displayed.', '3', '7', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('39', 'Length of Manufacturers Name', 'MAX_DISPLAY_MANUFACTURER_NAME_LEN', '15', 'Used in manufacturers box; maximum length of manufacturers name to display', '3', '8', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('40', 'New Reviews', 'MAX_DISPLAY_NEW_REVIEWS', '6', 'Maximum number of new reviews to display', '3', '9', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('41', 'Selection of Random Reviews', 'MAX_RANDOM_SELECT_REVIEWS', '10', 'How many records to select from to choose one random product review', '3', '10', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('42', 'Selection of Random New Products', 'MAX_RANDOM_SELECT_NEW', '10', 'How many records to select from to choose one random new product to display', '3', '11', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('43', 'Selection of Products on Special', 'MAX_RANDOM_SELECT_SPECIALS', '10', 'How many records to select from to choose one random product special to display', '3', '12', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('44', 'Categories To List Per Row', 'MAX_DISPLAY_CATEGORIES_PER_ROW', '3', 'How many categories to list per row', '3', '13', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('45', 'New Products Listing', 'MAX_DISPLAY_PRODUCTS_NEW', '10', 'Maximum number of new products to display in new products page', '3', '14', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('46', 'Best Sellers', 'MAX_DISPLAY_BESTSELLERS', '10', 'Maximum number of best sellers to display', '3', '15', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('47', 'Also Purchased', 'MAX_DISPLAY_ALSO_PURCHASED', '6', 'Maximum number of products to display in the \'This Customer Also Purchased\' box', '3', '16', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('48', 'Customer Order History Box', 'MAX_DISPLAY_PRODUCTS_IN_ORDER_HISTORY_BOX', '6', 'Maximum number of products to display in the customer order history box', '3', '17', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('49', 'Order History', 'MAX_DISPLAY_ORDER_HISTORY', '10', 'Maximum number of orders to display in the order history page', '3', '18', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('50', 'Product Quantities In Shopping Cart', 'MAX_QTY_IN_CART', '9999', 'Maximum number of product quantities that can be added to the shopping cart (0 for no limit)', '3', '19', '2020-04-08 01:39:31', '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('51', 'Small Image Width', 'SMALL_IMAGE_WIDTH', '100', 'The pixel width of small images', '4', '1', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('52', 'Small Image Height', 'SMALL_IMAGE_HEIGHT', '80', 'The pixel height of small images', '4', '2', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('53', 'Heading Image Width', 'HEADING_IMAGE_WIDTH', '57', 'The pixel width of heading images', '4', '3', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('54', 'Heading Image Height', 'HEADING_IMAGE_HEIGHT', '40', 'The pixel height of heading images', '4', '4', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('55', 'Subcategory Image Width', 'SUBCATEGORY_IMAGE_WIDTH', '100', 'The pixel width of subcategory images', '4', '5', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('56', 'Subcategory Image Height', 'SUBCATEGORY_IMAGE_HEIGHT', '57', 'The pixel height of subcategory images', '4', '6', NULL, '2020-04-06 13:12:13', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('57', 'Calculate Image Size', 'CONFIG_CALCULATE_IMAGE_SIZE', 'true', 'Calculate the size of images?', '4', '7', NULL, '2020-04-06 13:12:13', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('58', 'Image Required', 'IMAGE_REQUIRED', 'true', 'Enable to display broken images. Good for development.', '4', '8', NULL, '2020-04-06 13:12:13', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('59', 'Gender', 'ACCOUNT_GENDER', 'true', 'Display gender in the customers account', '5', '1', NULL, '2020-04-06 13:12:13', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('60', 'Date of Birth', 'ACCOUNT_DOB', 'true', 'Display date of birth in the customers account', '5', '2', NULL, '2020-04-06 13:12:13', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('61', 'Company', 'ACCOUNT_COMPANY', 'false', 'Display company in the customers account', '5', '3', '2020-04-11 02:04:55', '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('62', 'Suburb', 'ACCOUNT_SUBURB', 'false', 'Display suburb in the customers account', '5', '4', '2020-04-07 00:46:53', '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('63', 'State', 'ACCOUNT_STATE', 'true', 'Display state in the customers account', '5', '5', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('64', 'Installed Modules', 'MODULE_PAYMENT_INSTALLED', 'cod.php', 'List of payment module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: cod.php;paypal_express.php)', '6', '0', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('65', 'Installed Modules', 'MODULE_ORDER_TOTAL_INSTALLED', 'ot_subtotal.php;ot_shipping.php;ot_tax.php;ot_total.php', 'List of order_total module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_total.php)', '6', '0', '2020-04-07 00:58:21', '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('66', 'Installed Modules', 'MODULE_SHIPPING_INSTALLED', 'flat.php;spu.php', 'List of shipping module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: ups.php;flat.php;item.php)', '6', '0', '2020-04-08 22:54:54', '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('67', 'Installed Modules', 'MODULE_ACTION_RECORDER_INSTALLED', 'ar_admin_login.php;ar_contact_us.php;ar_reset_password.php;ar_tell_a_friend.php', 'List of action recorder module filenames separated by a semi-colon. This is automatically updated. No need to edit.', '6', '0', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('68', 'Installed Modules', 'MODULE_SOCIAL_BOOKMARKS_INSTALLED', 'sb_email.php;sb_google_plus_share.php;sb_facebook.php;sb_twitter.php;sb_pinterest.php', 'List of social bookmark module filenames separated by a semi-colon. This is automatically updated. No need to edit.', '6', '0', '2020-04-07 00:58:25', '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('69', 'Installed Modules', 'MODULE_CONTENT_NAVBAR_INSTALLED', 'nb_hamburger_button.php;nb_brand.php;nb_shopping_cart.php', 'List of navbar module filenames separated by a semi-colon. This is automatically updated. No need to edit.', '6', '0', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('70', 'Enable Cash On Delivery Module', 'MODULE_PAYMENT_COD_STATUS', 'True', 'Do you want to accept Cash On Delevery payments?', '6', '1', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('71', 'Payment Zone', 'MODULE_PAYMENT_COD_ZONE', '0', 'If a zone is selected, only enable this payment method for that zone.', '6', '2', NULL, '2020-04-06 13:12:14', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('72', 'Sort order of display.', 'MODULE_PAYMENT_COD_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('73', 'Set Order Status', 'MODULE_PAYMENT_COD_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', '6', '0', NULL, '2020-04-06 13:12:14', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('79', 'Default Currency', 'DEFAULT_CURRENCY', 'INR', 'Default Currency', '6', '0', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('80', 'Default Language', 'DEFAULT_LANGUAGE', 'en', 'Default Language', '6', '0', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('81', 'Default Order Status For New Orders', 'DEFAULT_ORDERS_STATUS_ID', '1', 'When a new order is created, this order status will be assigned to it.', '6', '0', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('82', 'Display Shipping', 'MODULE_ORDER_TOTAL_SHIPPING_STATUS', 'true', 'Do you want to display the order shipping cost?', '6', '1', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('83', 'Sort Order', 'MODULE_ORDER_TOTAL_SHIPPING_SORT_ORDER', '2', 'Sort order of display.', '6', '2', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('84', 'Allow Free Shipping', 'MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING', 'false', 'Do you want to allow free shipping?', '6', '3', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('85', 'Free Shipping For Orders Over', 'MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING_OVER', '50', 'Provide free shipping for orders over the set amount.', '6', '4', NULL, '2020-04-06 13:12:14', 'currencies->format', NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('86', 'Provide Free Shipping For Orders Made', 'MODULE_ORDER_TOTAL_SHIPPING_DESTINATION', 'national', 'Provide free shipping for orders sent to the set destination.', '6', '5', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'national\', \'international\', \'both\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('87', 'Display Sub-Total', 'MODULE_ORDER_TOTAL_SUBTOTAL_STATUS', 'true', 'Do you want to display the order sub-total cost?', '6', '1', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('88', 'Sort Order', 'MODULE_ORDER_TOTAL_SUBTOTAL_SORT_ORDER', '1', 'Sort order of display.', '6', '2', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('89', 'Display Tax', 'MODULE_ORDER_TOTAL_TAX_STATUS', 'true', 'Do you want to display the order tax value?', '6', '1', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('90', 'Sort Order', 'MODULE_ORDER_TOTAL_TAX_SORT_ORDER', '3', 'Sort order of display.', '6', '2', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('91', 'Display Total', 'MODULE_ORDER_TOTAL_TOTAL_STATUS', 'true', 'Do you want to display the total order value?', '6', '1', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('92', 'Sort Order', 'MODULE_ORDER_TOTAL_TOTAL_SORT_ORDER', '4', 'Sort order of display.', '6', '2', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('93', 'Minimum Minutes Per E-Mail', 'MODULE_ACTION_RECORDER_CONTACT_US_EMAIL_MINUTES', '15', 'Minimum number of minutes to allow 1 e-mail to be sent (eg, 15 for 1 e-mail every 15 minutes)', '6', '0', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('94', 'Minimum Minutes Per E-Mail', 'MODULE_ACTION_RECORDER_TELL_A_FRIEND_EMAIL_MINUTES', '15', 'Minimum number of minutes to allow 1 e-mail to be sent (eg, 15 for 1 e-mail every 15 minutes)', '6', '0', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('95', 'Allowed Minutes', 'MODULE_ACTION_RECORDER_ADMIN_LOGIN_MINUTES', '5', 'Number of minutes to allow login attempts to occur.', '6', '0', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('96', 'Allowed Attempts', 'MODULE_ACTION_RECORDER_ADMIN_LOGIN_ATTEMPTS', '3', 'Number of login attempts to allow within the specified period.', '6', '0', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('97', 'Allowed Minutes', 'MODULE_ACTION_RECORDER_RESET_PASSWORD_MINUTES', '5', 'Number of minutes to allow password resets to occur.', '6', '0', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('98', 'Allowed Attempts', 'MODULE_ACTION_RECORDER_RESET_PASSWORD_ATTEMPTS', '1', 'Number of password reset attempts to allow within the specified period.', '6', '0', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('99', 'Enable E-Mail Module', 'MODULE_SOCIAL_BOOKMARKS_EMAIL_STATUS', 'True', 'Do you want to allow products to be shared through e-mail?', '6', '1', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('100', 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_EMAIL_SORT_ORDER', '10', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('101', 'Enable Google+ Share Module', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_STATUS', 'True', 'Do you want to allow products to be shared through Google+?', '6', '1', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('102', 'Annotation', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_ANNOTATION', 'None', 'The annotation to display next to the button.', '6', '1', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'Inline\', \'Bubble\', \'Vertical-Bubble\', \'None\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('103', 'Width', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_WIDTH', '', 'The maximum width of the button.', '6', '0', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('104', 'Height', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_HEIGHT', '15', 'Sets the height of the button.', '6', '1', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'15\', \'20\', \'24\', \'60\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('105', 'Alignment', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_ALIGN', 'Left', 'The alignment of the button assets.', '6', '1', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'Left\', \'Right\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('106', 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_GOOGLE_PLUS_SHARE_SORT_ORDER', '20', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('107', 'Enable Facebook Module', 'MODULE_SOCIAL_BOOKMARKS_FACEBOOK_STATUS', 'True', 'Do you want to allow products to be shared through Facebook?', '6', '1', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('108', 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_FACEBOOK_SORT_ORDER', '30', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('109', 'Enable Twitter Module', 'MODULE_SOCIAL_BOOKMARKS_TWITTER_STATUS', 'True', 'Do you want to allow products to be shared through Twitter?', '6', '1', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('110', 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_TWITTER_SORT_ORDER', '40', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('111', 'Enable Pinterest Module', 'MODULE_SOCIAL_BOOKMARKS_PINTEREST_STATUS', 'True', 'Do you want to allow Pinterest Button?', '6', '1', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('112', 'Layout Position', 'MODULE_SOCIAL_BOOKMARKS_PINTEREST_BUTTON_COUNT_POSITION', 'None', 'Horizontal or Vertical or None', '6', '2', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'Horizontal\', \'Vertical\', \'None\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('113', 'Sort Order', 'MODULE_SOCIAL_BOOKMARKS_PINTEREST_SORT_ORDER', '50', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('114', 'Country of Origin', 'SHIPPING_ORIGIN_COUNTRY', '99', 'Select the country of origin to be used in shipping quotes.', '7', '1', '2020-04-09 01:49:33', '2020-04-06 13:12:14', 'tep_get_country_name', 'tep_cfg_pull_down_country_list(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('115', 'Postal Code', 'SHIPPING_ORIGIN_ZIP', '391440', 'Enter the Postal Code (ZIP) of the Store to be used in shipping quotes.', '7', '2', '2020-04-11 02:04:20', '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('116', 'Enter the Maximum Package Weight you will ship', 'SHIPPING_MAX_WEIGHT', '9999', 'Carriers have a max weight limit for a single package. This is a common one for all.', '7', '3', '2020-04-11 02:04:36', '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('117', 'Package Tare weight.', 'SHIPPING_BOX_WEIGHT', '3', 'What is the weight of typical packaging of small to medium packages?', '7', '4', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('118', 'Larger packages - percentage increase.', 'SHIPPING_BOX_PADDING', '10', 'For 10% enter 10', '7', '5', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('119', 'Allow Orders Not Matching Defined Shipping Zones ', 'SHIPPING_ALLOW_UNDEFINED_ZONES', 'False', 'Should orders be allowed to shipping addresses not matching defined shipping module shipping zones?', '7', '5', '2020-04-09 01:36:06', '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('120', 'Display Product Image (0=disable; 1=enable)', 'PRODUCT_LIST_IMAGE', '0', 'Do you want to display the Product Image?', '8', '1', '2020-04-07 00:47:53', '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('121', 'Display Product Manufacturer Name (0=disable; 1=enable)', 'PRODUCT_LIST_MANUFACTURER', '0', 'Do you want to display the Product Manufacturer Name?', '8', '2', '2020-04-11 03:15:00', '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('122', 'Display Product Model (0=disable; 1=enable)', 'PRODUCT_LIST_MODEL', '0', 'Do you want to display the Product Model?', '8', '3', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('123', 'Display Product Name (0=disable; 1=enable)', 'PRODUCT_LIST_NAME', '1', 'Do you want to display the Product Name?', '8', '4', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('124', 'Display Product Price (0=disable; 1=enable)', 'PRODUCT_LIST_PRICE', '0', 'Do you want to display the Product Price', '8', '5', '2020-04-11 02:05:32', '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('125', 'Display Product Quantity (0=disable; 1=enable)', 'PRODUCT_LIST_QUANTITY', '0', 'Do you want to display the Product Quantity?', '8', '6', '2020-04-11 03:14:36', '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('126', 'Display Product Weight (0=disable; 1=enable)', 'PRODUCT_LIST_WEIGHT', '0', 'Do you want to display the Product Weight?', '8', '7', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('127', 'Display Buy Now column (0=disable; 1=enable)', 'PRODUCT_LIST_BUY_NOW', '1', 'Do you want to display the Buy Now column?', '8', '8', '2020-04-07 00:51:09', '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('128', 'Display Category/Manufacturer Filter (0=disable; 1=enable)', 'PRODUCT_LIST_FILTER', '1', 'Do you want to display the Category/Manufacturer Filter?', '8', '9', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('129', 'Location of Prev/Next Navigation Bar (1-top, 2-bottom, 3-both)', 'PREV_NEXT_BAR_LOCATION', '2', 'Sets the location of the Prev/Next Navigation Bar (1-top, 2-bottom, 3-both)', '8', '10', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('130', 'Check stock level', 'STOCK_CHECK', 'true', 'Check to see if sufficent stock is available', '9', '1', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('131', 'Subtract stock', 'STOCK_LIMITED', 'true', 'Subtract product in stock by product orders', '9', '2', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('132', 'Allow Checkout', 'STOCK_ALLOW_CHECKOUT', 'false', 'Allow customer to checkout even if there is insufficient stock', '9', '3', '2020-04-08 14:20:41', '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('133', 'Mark product out of stock', 'STOCK_MARK_PRODUCT_OUT_OF_STOCK', 'Not Available', 'Display something on screen so customer can see which product has insufficient stock', '9', '4', '2020-04-08 14:21:24', '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('134', 'Stock Re-order level', 'STOCK_REORDER_LEVEL', '5', 'Define when stock needs to be re-ordered', '9', '5', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('135', 'Store Page Parse Time', 'STORE_PAGE_PARSE_TIME', 'false', 'Store the time it takes to parse a page', '10', '1', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('136', 'Log Destination', 'STORE_PAGE_PARSE_TIME_LOG', '/var/log/www/tep/page_parse_time.log', 'Directory and filename of the page parse time log', '10', '2', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('137', 'Log Date Format', 'STORE_PARSE_DATE_TIME_FORMAT', '%d/%m/%Y %H:%M:%S', 'The date format', '10', '3', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('138', 'Display The Page Parse Time', 'DISPLAY_PAGE_PARSE_TIME', 'true', 'Display the page parse time (store page parse time must be enabled)', '10', '4', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('139', 'Store Database Queries', 'STORE_DB_TRANSACTIONS', 'false', 'Store the database queries in the page parse time log', '10', '5', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('140', 'Use Cache', 'USE_CACHE', 'false', 'Use caching features', '11', '1', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('141', 'Cache Directory', 'DIR_FS_CACHE', '/opt/lampp/htdocs/FieldMItraEcom/includes/work/', 'The directory where the cached files are saved', '11', '2', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('142', 'E-Mail Transport Method', 'EMAIL_TRANSPORT', 'smtp', 'Defines if this server uses a local connection to sendmail or uses an SMTP connection via TCP/IP. Servers running on Windows and MacOS should change this setting to SMTP.', '12', '1', '2020-04-09 02:09:04', '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'sendmail\', \'smtp\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('143', 'E-Mail Linefeeds', 'EMAIL_LINEFEED', 'LF', 'Defines the character sequence used to separate mail headers.', '12', '2', '2020-04-09 01:31:51', '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'LF\', \'CRLF\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('144', 'Use MIME HTML When Sending Emails', 'EMAIL_USE_HTML', 'false', 'Send e-mails in HTML format', '12', '3', '2020-04-09 02:09:25', '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('145', 'Verify E-Mail Addresses Through DNS', 'ENTRY_EMAIL_ADDRESS_CHECK', 'false', 'Verify e-mail address through a DNS server', '12', '4', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('146', 'Send E-Mails', 'SEND_EMAILS', 'true', 'Send out e-mails', '12', '5', '2020-04-09 02:09:52', '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('147', 'Enable download', 'DOWNLOAD_ENABLED', 'false', 'Enable the products download functions.', '13', '1', '2020-04-07 10:25:40', '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('148', 'Download by redirect', 'DOWNLOAD_BY_REDIRECT', 'false', 'Use browser redirection for download. Disable on non-Unix systems.', '13', '2', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('149', 'Expiry delay (days)', 'DOWNLOAD_MAX_DAYS', '7', 'Set number of days before the download link expires. 0 means no limit.', '13', '3', NULL, '2020-04-06 13:12:14', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('150', 'Maximum number of downloads', 'DOWNLOAD_MAX_COUNT', '5', 'Set the maximum number of downloads. 0 means no download authorized.', '13', '4', NULL, '2020-04-06 13:12:14', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('151', 'Enable GZip Compression', 'GZIP_COMPRESSION', 'false', 'Enable HTTP GZip compression.', '14', '1', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('152', 'Compression Level', 'GZIP_LEVEL', '5', 'Use this compression level 0-9 (0 = minimum, 9 = maximum).', '14', '2', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('153', 'Session Directory', 'SESSION_WRITE_DIRECTORY', '/opt/lampp/htdocs/FieldMItraEcom/includes/work/', 'If sessions are file based, store them in this directory.', '15', '1', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('154', 'Force Cookie Use', 'SESSION_FORCE_COOKIE_USE', 'False', 'Force the use of sessions when cookies are only enabled.', '15', '2', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('155', 'Check SSL Session ID', 'SESSION_CHECK_SSL_SESSION_ID', 'False', 'Validate the SSL_SESSION_ID on every secure HTTPS page request.', '15', '3', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('156', 'Check User Agent', 'SESSION_CHECK_USER_AGENT', 'False', 'Validate the clients browser user agent on every page request.', '15', '4', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('157', 'Check IP Address', 'SESSION_CHECK_IP_ADDRESS', 'False', 'Validate the clients IP address on every page request.', '15', '5', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('158', 'Prevent Spider Sessions', 'SESSION_BLOCK_SPIDERS', 'True', 'Prevent known spiders from starting a session.', '15', '6', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('159', 'Recreate Session', 'SESSION_RECREATE', 'True', 'Recreate the session to generate a new session ID when the customer logs on or creates an account (PHP >=4.1 needed).', '15', '7', NULL, '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('160', 'Last Update Check Time', 'LAST_UPDATE_CHECK_TIME', '', 'Last time a check for new versions of osCommerce was run', '6', '0', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('161', 'Store Logo', 'STORE_LOGO', 'store_logo.png', 'This is the filename of your Store Logo.  This should be updated at admin > configuration > Store Logo', '6', '1000', NULL, '2020-04-06 13:12:14', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('162', 'Bootstrap Container', 'BOOTSTRAP_CONTAINER', 'container-fluid', 'What type of container should the page content be shown in? See http://getbootstrap.com/css/#overview-container', '16', '1', '2020-04-11 03:11:53', '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'container-fluid\', \'container\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('163', 'Bootstrap Content', 'BOOTSTRAP_CONTENT', '8', 'What width should the page content default to?  (8 = two thirds width, 6 = half width, 4 = one third width) Note that the Side Column(s) will adjust automatically.', '16', '2', '2020-04-11 03:12:53', '2020-04-06 13:12:14', NULL, 'tep_cfg_select_option(array(\'8\', \'6\', \'4\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('164', 'Installed Modules', 'MODULE_HEADER_TAGS_INSTALLED', 'ht_manufacturer_title.php;ht_category_title.php;ht_product_title.php;ht_canonical.php;ht_robot_noindex.php;ht_datepicker_jquery.php;ht_grid_list_view.php;ht_table_click_jquery.php;ht_breadcrumb_schema.php;ht_product_colorbox.php', 'List of header tag module filenames separated by a semi-colon. This is automatically updated. No need to edit.', '6', '0', '2020-04-07 00:58:17', '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('165', 'Enable Category Title Module', 'MODULE_HEADER_TAGS_CATEGORY_TITLE_STATUS', 'True', 'Do you want to allow category titles to be added to the page title?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('166', 'Sort Order', 'MODULE_HEADER_TAGS_CATEGORY_TITLE_SORT_ORDER', '200', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('167', 'SEO Title Override?', 'MODULE_HEADER_TAGS_CATEGORY_TITLE_SEO_TITLE_OVERRIDE', 'True', 'Do you want to allow category titles to be over-ridden by your SEO Titles (if set)?', '6', '0', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('168', 'SEO Breadcrumb Override?', 'MODULE_HEADER_TAGS_CATEGORY_TITLE_SEO_BREADCRUMB_OVERRIDE', 'True', 'Do you want to allow category names in the breadcrumb to be over-ridden by your SEO Titles (if set)?', '6', '0', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('169', 'Enable Manufacturer Title Module', 'MODULE_HEADER_TAGS_MANUFACTURER_TITLE_STATUS', 'True', 'Do you want to allow manufacturer titles to be added to the page title?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('170', 'Sort Order', 'MODULE_HEADER_TAGS_MANUFACTURER_TITLE_SORT_ORDER', '100', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('171', 'SEO Title Override?', 'MODULE_HEADER_TAGS_MANUFACTURER_TITLE_SEO_TITLE_OVERRIDE', 'True', 'Do you want to allow manufacturer names to be over-ridden by your SEO Titles (if set)?', '6', '0', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('172', 'SEO Breadcrumb Override?', 'MODULE_HEADER_TAGS_MANUFACTURER_TITLE_SEO_BREADCRUMB_OVERRIDE', 'True', 'Do you want to allow manufacturer names in the breadcrumb to be over-ridden by your SEO Titles (if set)?', '6', '0', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('173', 'Enable Product Title Module', 'MODULE_HEADER_TAGS_PRODUCT_TITLE_STATUS', 'True', 'Do you want to allow product titles to be added to the page title?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('174', 'Sort Order', 'MODULE_HEADER_TAGS_PRODUCT_TITLE_SORT_ORDER', '300', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('175', 'SEO Title Override?', 'MODULE_HEADER_TAGS_PRODUCT_TITLE_SEO_TITLE_OVERRIDE', 'True', 'Do you want to allow product titles to be over-ridden by your SEO Titles (if set)?', '6', '0', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('176', 'SEO Breadcrumb Override?', 'MODULE_HEADER_TAGS_PRODUCT_TITLE_SEO_BREADCRUMB_OVERRIDE', 'True', 'Do you want to allow product names in the breadcrumb to be over-ridden by your SEO Titles (if set)?', '6', '0', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('177', 'Enable Canonical Module', 'MODULE_HEADER_TAGS_CANONICAL_STATUS', 'True', 'Do you want to enable the Canonical module?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('178', 'Sort Order', 'MODULE_HEADER_TAGS_CANONICAL_SORT_ORDER', '400', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('179', 'Enable Robot NoIndex Module', 'MODULE_HEADER_TAGS_ROBOT_NOINDEX_STATUS', 'True', 'Do you want to enable the Robot NoIndex module?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('180', 'Pages', 'MODULE_HEADER_TAGS_ROBOT_NOINDEX_PAGES', 'account.php;account_edit.php;account_history.php;account_history_info.php;account_newsletters.php;account_notifications.php;account_password.php;address_book.php;address_book_process.php;checkout_confirmation.php;checkout_payment.php;checkout_payment_address.php;checkout_process.php;checkout_shipping.php;checkout_shipping_address.php;checkout_success.php;cookie_usage.php;create_account.php;create_account_success.php;login.php;logoff.php;password_forgotten.php;password_reset.php;product_reviews_write.php;shopping_cart.php;ssl_check.php;tell_a_friend.php', 'The pages to add the meta robot noindex tag to.', '6', '0', NULL, '2020-04-06 13:12:20', 'ht_robot_noindex_show_pages', 'ht_robot_noindex_edit_pages(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('181', 'Sort Order', 'MODULE_HEADER_TAGS_ROBOT_NOINDEX_SORT_ORDER', '500', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('182', 'Enable Datepicker jQuery Module', 'MODULE_HEADER_TAGS_DATEPICKER_JQUERY_STATUS', 'True', 'Do you want to enable the Datepicker module?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('183', 'Pages', 'MODULE_HEADER_TAGS_DATEPICKER_JQUERY_PAGES', 'advanced_search.php;account_edit.php;create_account.php', 'The pages to add the Datepicker jQuery Scripts to.', '6', '0', NULL, '2020-04-06 13:12:20', 'ht_datepicker_jquery_show_pages', 'ht_datepicker_jquery_edit_pages(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('184', 'Sort Order', 'MODULE_HEADER_TAGS_DATEPICKER_JQUERY_SORT_ORDER', '600', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('185', 'Enable Grid List javascript', 'MODULE_HEADER_TAGS_GRID_LIST_VIEW_STATUS', 'True', 'Do you want to enable the Grid/List Javascript module?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('186', 'Pages', 'MODULE_HEADER_TAGS_GRID_LIST_VIEW_PAGES', 'advanced_search_result.php;index.php;products_new.php;specials.php', 'The pages to add the Grid List JS Scripts to.', '6', '0', NULL, '2020-04-06 13:12:20', 'ht_grid_list_view_show_pages', 'ht_grid_list_view_edit_pages(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('187', 'Sort Order', 'MODULE_HEADER_TAGS_GRID_LIST_VIEW_SORT_ORDER', '700', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('188', 'Enable Clickable Table Rows Module', 'MODULE_HEADER_TAGS_TABLE_CLICK_JQUERY_STATUS', 'True', 'Do you want to enable the Clickable Table Rows module?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('189', 'Pages', 'MODULE_HEADER_TAGS_TABLE_CLICK_JQUERY_PAGES', 'checkout_payment.php;checkout_shipping.php', 'The pages to add the jQuery Scripts to.', '6', '0', NULL, '2020-04-06 13:12:20', 'ht_table_click_jquery_show_pages', 'ht_table_click_jquery_edit_pages(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('190', 'Sort Order', 'MODULE_HEADER_TAGS_TABLE_CLICK_JQUERY_SORT_ORDER', '800', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('191', 'Enable Colorbox Script', 'MODULE_HEADER_TAGS_PRODUCT_COLORBOX_STATUS', 'True', 'Do you want to enable the Colorbox Scripts?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('192', 'Pages', 'MODULE_HEADER_TAGS_PRODUCT_COLORBOX_PAGES', 'product_info.php', 'The pages to add the Colorbox Scripts to.', '6', '0', NULL, '2020-04-06 13:12:20', 'ht_product_colorbox_show_pages', 'ht_product_colorbox_edit_pages(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('193', 'Thumbnail Layout', 'MODULE_HEADER_TAGS_PRODUCT_COLORBOX_LAYOUT', '155', 'Layout of Thumbnails', '6', '0', NULL, '2020-04-06 13:12:20', 'ht_product_colorbox_thumbnail_number', NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('194', 'Sort Order', 'MODULE_HEADER_TAGS_PRODUCT_COLORBOX_SORT_ORDER', '900', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('195', 'Enable Breadcrumb Schema Module', 'MODULE_HEADER_TAGS_BREADCRUMB_SCHEMA_STATUS', 'True', 'Do you want to enable this module?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('196', 'Sort Order', 'MODULE_HEADER_TAGS_BREADCRUMB_SCHEMA_SORT_ORDER', '900', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('197', 'Installed Modules', 'MODULE_ADMIN_DASHBOARD_INSTALLED', 'd_total_revenue.php;d_total_customers.php;d_orders.php;d_customers.php;d_admin_logins.php;d_security_checks.php;d_latest_news.php;d_latest_addons.php;d_partner_news.php;d_version_check.php;d_reviews.php;d_paypal_app.php', 'List of Administration Tool Dashboard module filenames separated by a semi-colon. This is automatically updated. No need to edit.', '6', '0', '2020-04-08 03:23:21', '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('198', 'Enable Administrator Logins Module', 'MODULE_ADMIN_DASHBOARD_ADMIN_LOGINS_STATUS', 'True', 'Do you want to show the latest administrator logins on the dashboard?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('199', 'Sort Order', 'MODULE_ADMIN_DASHBOARD_ADMIN_LOGINS_SORT_ORDER', '500', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('200', 'Enable Customers Module', 'MODULE_ADMIN_DASHBOARD_CUSTOMERS_STATUS', 'True', 'Do you want to show the newest customers on the dashboard?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('201', 'Sort Order', 'MODULE_ADMIN_DASHBOARD_CUSTOMERS_SORT_ORDER', '400', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('202', 'Enable Latest Add-Ons Module', 'MODULE_ADMIN_DASHBOARD_LATEST_ADDONS_STATUS', 'True', 'Do you want to show the latest osCommerce Add-Ons on the dashboard?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('203', 'Sort Order', 'MODULE_ADMIN_DASHBOARD_LATEST_ADDONS_SORT_ORDER', '800', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('204', 'Enable Latest News Module', 'MODULE_ADMIN_DASHBOARD_LATEST_NEWS_STATUS', 'True', 'Do you want to show the latest osCommerce News on the dashboard?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('205', 'Sort Order', 'MODULE_ADMIN_DASHBOARD_LATEST_NEWS_SORT_ORDER', '700', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('206', 'Enable Orders Module', 'MODULE_ADMIN_DASHBOARD_ORDERS_STATUS', 'True', 'Do you want to show the latest orders on the dashboard?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('207', 'Sort Order', 'MODULE_ADMIN_DASHBOARD_ORDERS_SORT_ORDER', '300', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('208', 'Enable Security Checks Module', 'MODULE_ADMIN_DASHBOARD_SECURITY_CHECKS_STATUS', 'False', 'Do you want to run the security checks for this installation?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('209', 'Sort Order', 'MODULE_ADMIN_DASHBOARD_SECURITY_CHECKS_SORT_ORDER', '600', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('210', 'Enable Total Customers Module', 'MODULE_ADMIN_DASHBOARD_TOTAL_CUSTOMERS_STATUS', 'True', 'Do you want to show the total customers chart on the dashboard?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('211', 'Sort Order', 'MODULE_ADMIN_DASHBOARD_TOTAL_CUSTOMERS_SORT_ORDER', '200', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('212', 'Enable Total Revenue Module', 'MODULE_ADMIN_DASHBOARD_TOTAL_REVENUE_STATUS', 'True', 'Do you want to show the total revenue chart on the dashboard?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('213', 'Sort Order', 'MODULE_ADMIN_DASHBOARD_TOTAL_REVENUE_SORT_ORDER', '100', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('214', 'Enable Version Check Module', 'MODULE_ADMIN_DASHBOARD_VERSION_CHECK_STATUS', 'True', 'Do you want to show the version check results on the dashboard?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('215', 'Sort Order', 'MODULE_ADMIN_DASHBOARD_VERSION_CHECK_SORT_ORDER', '900', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('216', 'Enable Latest Reviews Module', 'MODULE_ADMIN_DASHBOARD_REVIEWS_STATUS', 'True', 'Do you want to show the latest reviews on the dashboard?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('217', 'Sort Order', 'MODULE_ADMIN_DASHBOARD_REVIEWS_SORT_ORDER', '1000', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('218', 'Enable Partner News Module', 'MODULE_ADMIN_DASHBOARD_PARTNER_NEWS_STATUS', 'False', 'Do you want to show the latest osCommerce Partner News on the dashboard?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('219', 'Sort Order', 'MODULE_ADMIN_DASHBOARD_PARTNER_NEWS_SORT_ORDER', '820', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('220', 'Installed Modules', 'MODULE_BOXES_INSTALLED', 'bm_categories.php;bm_manufacturers.php;bm_whats_new.php;bm_card_acceptance.php;bm_order_history.php;bm_best_sellers.php', 'List of box module filenames separated by a semi-colon. This is automatically updated. No need to edit.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('221', 'Enable Best Sellers Module', 'MODULE_BOXES_BEST_SELLERS_STATUS', 'True', 'Do you want to add the module to your shop?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('222', 'Content Placement', 'MODULE_BOXES_BEST_SELLERS_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('223', 'Sort Order', 'MODULE_BOXES_BEST_SELLERS_SORT_ORDER', '5030', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('224', 'Enable Categories Module', 'MODULE_BOXES_CATEGORIES_STATUS', 'True', 'Do you want to add the module to your shop?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('225', 'Content Placement', 'MODULE_BOXES_CATEGORIES_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('226', 'Sort Order', 'MODULE_BOXES_CATEGORIES_SORT_ORDER', '1000', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('227', 'Enable Manufacturers Module', 'MODULE_BOXES_MANUFACTURERS_STATUS', 'True', 'Do you want to add the module to your shop?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('228', 'Content Placement', 'MODULE_BOXES_MANUFACTURERS_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('229', 'Sort Order', 'MODULE_BOXES_MANUFACTURERS_SORT_ORDER', '1020', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('230', 'Enable Order History Module', 'MODULE_BOXES_ORDER_HISTORY_STATUS', 'True', 'Do you want to add the module to your shop?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('231', 'Content Placement', 'MODULE_BOXES_ORDER_HISTORY_CONTENT_PLACEMENT', 'Right Column', 'Should the module be loaded in the left or right column?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('232', 'Sort Order', 'MODULE_BOXES_ORDER_HISTORY_SORT_ORDER', '5020', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('233', 'Enable Card Acceptance Module', 'MODULE_BOXES_CARD_ACCEPTANCE_STATUS', 'True', 'Do you want to add the module to your shop?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('234', 'Logos', 'MODULE_BOXES_CARD_ACCEPTANCE_LOGOS', 'paypal_horizontal_large.png;visa.png;mastercard_transparent.png;american_express.png;maestro_transparent.png', 'The card acceptance logos to show.', '6', '0', NULL, '2020-04-06 13:12:20', 'bm_card_acceptance_show_logos', 'bm_card_acceptance_edit_logos(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('235', 'Content Placement', 'MODULE_BOXES_CARD_ACCEPTANCE_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('236', 'Sort Order', 'MODULE_BOXES_CARD_ACCEPTANCE_SORT_ORDER', '1060', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('237', 'Enable What\'s New Module', 'MODULE_BOXES_WHATS_NEW_STATUS', 'True', 'Do you want to add the module to your shop?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('238', 'Content Placement', 'MODULE_BOXES_WHATS_NEW_CONTENT_PLACEMENT', 'Left Column', 'Should the module be loaded in the left or right column?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'Left Column\', \'Right Column\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('239', 'Sort Order', 'MODULE_BOXES_WHATS_NEW_SORT_ORDER', '1040', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('240', 'Installed Template Block Groups', 'TEMPLATE_BLOCK_GROUPS', 'boxes;header_tags', 'This is automatically updated. No need to edit.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('241', 'Installed Modules', 'MODULE_CONTENT_INSTALLED', 'account/cm_account_title;account/cm_account_set_password;checkout_success/cm_cs_title;checkout_success/cm_cs_redirect_old_order;checkout_success/cm_cs_continue_button;checkout_success/cm_cs_thank_you;checkout_success/cm_cs_product_notifications;checkout_success/cm_cs_downloads;footer/cm_footer_information_links;footer_suffix/cm_footer_extra_copyright;footer_suffix/cm_footer_extra_icons;header/cm_header_noscript;header/cm_header_logo;header/cm_header_search;header/cm_header_messagestack;header/cm_header_breadcrumb;index/cm_i_title;index/cm_i_customer_greeting;index/cm_i_text_main;index/cm_i_new_products;index/cm_i_upcoming_products;index_nested/cm_in_title;index_nested/cm_in_category_description;index_nested/cm_in_category_listing;index_nested/cm_in_new_products;index_products/cm_ip_title;index_products/cm_ip_category_manufacturer_description;index_products/cm_ip_product_listing;login/cm_login_title;login/cm_login_form;login/cm_create_account_link;navigation/cm_navbar;product_info/cm_pi_name;product_info/cm_pi_price;product_info/cm_pi_description;product_info/cm_pi_gallery;product_info/cm_pi_date_available;product_info/cm_pi_options_attributes;product_info/cm_pi_review_button;product_info/cm_pi_buy_button;product_info_not_found/cm_pinf_message', 'This is automatically updated. No need to edit.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('242', 'Enable Set Account Password', 'MODULE_CONTENT_ACCOUNT_SET_PASSWORD_STATUS', 'True', 'Do you want to enable the Set Account Password module?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('243', 'Allow Local Passwords', 'MODULE_CONTENT_ACCOUNT_SET_PASSWORD_ALLOW_PASSWORD', 'True', 'Allow local account passwords to be set.', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('244', 'Sort Order', 'MODULE_CONTENT_ACCOUNT_SET_PASSWORD_SORT_ORDER', '100', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('245', 'Enable Redirect Old Order Module', 'MODULE_CONTENT_CHECKOUT_SUCCESS_REDIRECT_OLD_ORDER_STATUS', 'True', 'Should customers be redirected when viewing old checkout success orders?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('246', 'Redirect Minutes', 'MODULE_CONTENT_CHECKOUT_SUCCESS_REDIRECT_OLD_ORDER_MINUTES', '60', 'Redirect customers to the My Account page after an order older than this amount is viewed.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('247', 'Sort Order', 'MODULE_CONTENT_CHECKOUT_SUCCESS_REDIRECT_OLD_ORDER_SORT_ORDER', '500', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('248', 'Enable Thank You Module', 'MODULE_CONTENT_CHECKOUT_SUCCESS_THANK_YOU_STATUS', 'True', 'Should the thank you block be shown on the checkout success page?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('249', 'Sort Order', 'MODULE_CONTENT_CHECKOUT_SUCCESS_THANK_YOU_SORT_ORDER', '1000', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('250', 'Enable Product Notifications Module', 'MODULE_CONTENT_CHECKOUT_SUCCESS_PRODUCT_NOTIFICATIONS_STATUS', 'True', 'Should the product notifications block be shown on the checkout success page?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('251', 'Sort Order', 'MODULE_CONTENT_CHECKOUT_SUCCESS_PRODUCT_NOTIFICATIONS_SORT_ORDER', '2000', 'Sort order of display. Lowest is displayed first.', '6', '3', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('252', 'Enable Product Downloads Module', 'MODULE_CONTENT_CHECKOUT_SUCCESS_DOWNLOADS_STATUS', 'True', 'Should ordered product download links be shown on the checkout success page?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('253', 'Sort Order', 'MODULE_CONTENT_CHECKOUT_SUCCESS_DOWNLOADS_SORT_ORDER', '3000', 'Sort order of display. Lowest is displayed first.', '6', '3', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('254', 'Enable Login Form Module', 'MODULE_CONTENT_LOGIN_FORM_STATUS', 'True', 'Do you want to enable the login form module?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('255', 'Content Width', 'MODULE_CONTENT_LOGIN_FORM_CONTENT_WIDTH', 'Half', 'Should the content be shown in a full or half width container?', '6', '1', NULL, '2020-04-06 13:12:20', NULL, 'tep_cfg_select_option(array(\'Full\', \'Half\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('256', 'Sort Order', 'MODULE_CONTENT_LOGIN_FORM_SORT_ORDER', '1000', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:20', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('257', 'Enable New User Module', 'MODULE_CONTENT_CREATE_ACCOUNT_LINK_STATUS', 'True', 'Do you want to enable the new user module?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('258', 'Content Width', 'MODULE_CONTENT_CREATE_ACCOUNT_LINK_CONTENT_WIDTH', 'Half', 'Should the content be shown in a full or half width container?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'Full\', \'Half\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('259', 'Sort Order', 'MODULE_CONTENT_CREATE_ACCOUNT_LINK_SORT_ORDER', '2000', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('260', 'Enable Hamburger Button Module', 'MODULE_NAVBAR_HAMBURGER_BUTTON_STATUS', 'True', 'Do you want to add the module to your Navbar?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('261', 'Content Placement', 'MODULE_NAVBAR_HAMBURGER_BUTTON_CONTENT_PLACEMENT', 'Home', 'This module must be placed in the Home area of the Navbar.', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'Home\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('262', 'Sort Order', 'MODULE_NAVBAR_HAMBURGER_BUTTON_SORT_ORDER', '500', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('263', 'Enable Brand Module', 'MODULE_NAVBAR_BRAND_STATUS', 'True', 'Do you want to add the module to your Navbar?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('264', 'Content Placement', 'MODULE_NAVBAR_BRAND_CONTENT_PLACEMENT', 'Home', 'This module must be placed in the Home area of the Navbar.', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'Home\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('265', 'Sort Order', 'MODULE_NAVBAR_BRAND_SORT_ORDER', '505', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('266', 'Enable Shopping Cart Module', 'MODULE_NAVBAR_SHOPPING_CART_STATUS', 'True', 'Do you want to add the module to your Navbar?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('267', 'Content Placement', 'MODULE_NAVBAR_SHOPPING_CART_CONTENT_PLACEMENT', 'Right', 'Should the module be loaded in the Left or Right or the Home area of the Navbar?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'Left\', \'Right\', \'Home\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('268', 'Sort Order', 'MODULE_NAVBAR_SHOPPING_CART_SORT_ORDER', '550', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('269', 'Enable Navbar Module', 'MODULE_CONTENT_NAVBAR_STATUS', 'True', 'Should the Navbar be shown? ', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('270', 'Navbar Style', 'MODULE_CONTENT_NAVBAR_STYLE', 'Inverse', 'What style should the Navbar have?  See http://getbootstrap.com/components/#navbar-inverted', '6', '0', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'Default\', \'Inverse\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('271', 'Navbar Corners', 'MODULE_CONTENT_NAVBAR_CORNERS', 'No', 'Should the Navbar have Corners?', '6', '0', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'Yes\', \'No\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('272', 'Navbar Margin', 'MODULE_CONTENT_NAVBAR_MARGIN', 'Yes', 'Should the Navbar have a bottom Margin?', '6', '0', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'Yes\', \'No\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('273', 'Navbar Fixed Position', 'MODULE_CONTENT_NAVBAR_FIXED', 'Floating', 'Should the Navbar stay fixed on Top/Bottom of the page or Floating?', '6', '0', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'Floating\', \'Top\', \'Bottom\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('274', 'Sort Order', 'MODULE_CONTENT_NAVBAR_SORT_ORDER', '10', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('275', 'Enable No Script Module', 'MODULE_CONTENT_HEADER_NOSCRIPT_STATUS', 'True', 'Add message for people with .js turned off?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('276', 'Content Width', 'MODULE_CONTENT_HEADER_NOSCRIPT_CONTENT_WIDTH', '12', 'What width container should the content be shown in?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('277', 'Sort Order', 'MODULE_CONTENT_HEADER_NOSCRIPT_SORT_ORDER', '1', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('278', 'Enable Header Logo Module', 'MODULE_CONTENT_HEADER_LOGO_STATUS', 'True', 'Do you want to enable the Logo content module?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('279', 'Content Width', 'MODULE_CONTENT_HEADER_LOGO_CONTENT_WIDTH', '6', 'What width container should the content be shown in?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('280', 'Sort Order', 'MODULE_CONTENT_HEADER_LOGO_SORT_ORDER', '10', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('281', 'Enable Search Box Module', 'MODULE_CONTENT_HEADER_SEARCH_STATUS', 'True', 'Do you want to enable the Search Box content module?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('282', 'Content Width', 'MODULE_CONTENT_HEADER_SEARCH_CONTENT_WIDTH', '6', 'What width container should the content be shown in?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('283', 'Sort Order', 'MODULE_CONTENT_HEADER_SEARCH_SORT_ORDER', '20', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('284', 'Enable Message Stack Notifications Module', 'MODULE_CONTENT_HEADER_MESSAGESTACK_STATUS', 'True', 'Should the Message Stack Notifications be shown in the header when needed? ', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('285', 'Sort Order', 'MODULE_CONTENT_HEADER_MESSAGESTACK_SORT_ORDER', '30', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('286', 'Enable Header Breadcrumb Module', 'MODULE_CONTENT_HEADER_BREADCRUMB_STATUS', 'True', 'Do you want to enable the Breadcrumb content module?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('287', 'Content Width', 'MODULE_CONTENT_HEADER_BREADCRUMB_CONTENT_WIDTH', '12', 'What width container should the content be shown in?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('288', 'Sort Order', 'MODULE_CONTENT_HEADER_BREADCRUMB_SORT_ORDER', '40', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('289', 'Enable Information Links Footer Module', 'MODULE_CONTENT_FOOTER_INFORMATION_STATUS', 'True', 'Do you want to enable the Information Links content module?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('290', 'Content Width', 'MODULE_CONTENT_FOOTER_INFORMATION_CONTENT_WIDTH', '3', 'What width container should the content be shown in? (12 = full width, 6 = half width).', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('291', 'Sort Order', 'MODULE_CONTENT_FOOTER_INFORMATION_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('292', 'Enable Copyright Details Footer Module', 'MODULE_CONTENT_FOOTER_EXTRA_COPYRIGHT_STATUS', 'True', 'Do you want to enable the Copyright content module?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('293', 'Content Width', 'MODULE_CONTENT_FOOTER_EXTRA_COPYRIGHT_CONTENT_WIDTH', '6', 'What width container should the content be shown in? (12 = full width, 6 = half width).', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('294', 'Sort Order', 'MODULE_CONTENT_FOOTER_EXTRA_COPYRIGHT_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('295', 'Enable Payment Icons Footer Module', 'MODULE_CONTENT_FOOTER_EXTRA_ICONS_STATUS', 'True', 'Do you want to enable the Payment Icons content module?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('296', 'Content Width', 'MODULE_CONTENT_FOOTER_EXTRA_ICONS_CONTENT_WIDTH', '6', 'What width container should the content be shown in? (12 = full width, 6 = half width).', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('297', 'Sort Order', 'MODULE_CONTENT_FOOTER_EXTRA_ICONS_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('298', 'Enable Title Module', 'MODULE_CONTENT_ACCOUNT_TITLE_STATUS', 'True', 'Do you want to enable this module?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('299', 'Content Width', 'MODULE_CONTENT_ACCOUNT_TITLE_CONTENT_WIDTH', '12', 'What width container should the content be shown in? (12 = full width, 6 = half width).', '6', '2', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('300', 'Sort Order', 'MODULE_CONTENT_ACCOUNT_TITLE_SORT_ORDER', '10', 'Sort order of display. Lowest is displayed first.', '6', '5', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('301', 'Enable Title Module', 'MODULE_CONTENT_CHECKOUT_SUCCESS_TITLE_STATUS', 'True', 'Do you want to enable this module?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('302', 'Content Width', 'MODULE_CONTENT_CHECKOUT_SUCCESS_TITLE_CONTENT_WIDTH', '12', 'What width container should the content be shown in? (12 = full width, 6 = half width).', '6', '2', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('303', 'Sort Order', 'MODULE_CONTENT_CHECKOUT_SUCCESS_TITLE_SORT_ORDER', '50', 'Sort order of display. Lowest is displayed first.', '6', '5', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('304', 'Enable Continue Button', 'MODULE_CONTENT_CS_CONTINUE_BUTTON_STATUS', 'True', 'Should this module be shown on the product info page?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('305', 'Content Width', 'MODULE_CONTENT_CS_CONTINUE_BUTTON_CONTENT_WIDTH', '12', 'What width container should the content be shown in?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('306', 'Sort Order', 'MODULE_CONTENT_CS_CONTINUE_BUTTON_SORT_ORDER', '1000', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('307', 'Enable Title Module', 'MODULE_CONTENT_I_TITLE_STATUS', 'True', 'Do you want to enable this module?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('308', 'Content Width', 'MODULE_CONTENT_I_TITLE_CONTENT_WIDTH', '12', 'What width container should the content be shown in? (12 = full width, 6 = half width).', '6', '2', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('309', 'Sort Order', 'MODULE_CONTENT_I_TITLE_SORT_ORDER', '50', 'Sort order of display. Lowest is displayed first.', '6', '5', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('310', 'Enable Customer Greeting Module', 'MODULE_CONTENT_CUSTOMER_GREETING_STATUS', 'True', 'Do you want to enable this module?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('311', 'Content Width', 'MODULE_CONTENT_CUSTOMER_GREETING_CONTENT_WIDTH', '12', 'What width container should the content be shown in? (12 = full width, 6 = half width).', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('312', 'Sort Order', 'MODULE_CONTENT_CUSTOMER_GREETING_SORT_ORDER', '100', 'Sort order of display. Lowest is displayed first.', '6', '4', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('313', 'Enable Main Text Module', 'MODULE_CONTENT_TEXT_MAIN_STATUS', 'True', 'Do you want to enable this module?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('314', 'Content Width', 'MODULE_CONTENT_TEXT_MAIN_CONTENT_WIDTH', '12', 'What width container should the content be shown in? (12 = full width, 6 = half width).', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('315', 'Sort Order', 'MODULE_CONTENT_TEXT_MAIN_SORT_ORDER', '200', 'Sort order of display. Lowest is displayed first.', '6', '4', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('316', 'Enable New Products Module', 'MODULE_CONTENT_NEW_PRODUCTS_STATUS', 'True', 'Do you want to enable this module?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('317', 'Content Width', 'MODULE_CONTENT_NEW_PRODUCTS_CONTENT_WIDTH', '12', 'What width container should the content be shown in? (12 = full width, 6 = half width).', '6', '2', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('318', 'Maximum Display', 'MODULE_CONTENT_NEW_PRODUCTS_MAX_DISPLAY', '6', 'Maximum Number of products that should show in this module?', '6', '3', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('319', 'Product Width', 'MODULE_CONTENT_NEW_PRODUCTS_DISPLAY_EACH', '3', 'What width container should each product be shown in? (12 = full width, 6 = half width).', '6', '4', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('320', 'Sort Order', 'MODULE_CONTENT_NEW_PRODUCTS_SORT_ORDER', '300', 'Sort order of display. Lowest is displayed first.', '6', '5', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('321', 'Enable Upcoming Products Module', 'MODULE_CONTENT_UPCOMING_PRODUCTS_STATUS', 'True', 'Do you want to enable this module?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('322', 'Content Width', 'MODULE_CONTENT_UPCOMING_PRODUCTS_CONTENT_WIDTH', '12', 'What width container should the content be shown in? (12 = full width, 6 = half width).', '6', '2', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('323', 'Maximum Display', 'MODULE_CONTENT_UPCOMING_PRODUCTS_MAX_DISPLAY', '6', 'Maximum Number of products that should show in this module?', '6', '3', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('324', 'Sort Order', 'MODULE_CONTENT_UPCOMING_PRODUCTS_EXPECTED_SORT', 'desc', 'This is the sort order used in the output.', '1', '4', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'asc\', \'desc\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('325', 'Sort Field', 'MODULE_CONTENT_UPCOMING_PRODUCTS_EXPECTED_FIELD', 'date_expected', 'The column to sort by in the output.', '1', '5', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'products_name\', \'date_expected\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('326', 'Sort Order', 'MODULE_CONTENT_UPCOMING_PRODUCTS_SORT_ORDER', '400', 'Sort order of display. Lowest is displayed first.', '6', '5', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('327', 'Enable Title Module', 'MODULE_CONTENT_IN_TITLE_STATUS', 'True', 'Do you want to enable this module?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('328', 'Content Width', 'MODULE_CONTENT_IN_TITLE_CONTENT_WIDTH', '12', 'What width container should the content be shown in? (12 = full width, 6 = half width).', '6', '2', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('329', 'Sort Order', 'MODULE_CONTENT_IN_TITLE_SORT_ORDER', '50', 'Sort order of display. Lowest is displayed first.', '6', '5', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('330', 'Enable Category Description Module', 'MODULE_CONTENT_IN_CATEGORY_DESCRIPTION_STATUS', 'True', 'Should this module be enabled?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('331', 'Content Width', 'MODULE_CONTENT_IN_CATEGORY_DESCRIPTION_CONTENT_WIDTH', '12', 'What width container should the content be shown in?', '6', '3', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('332', 'Sort Order', 'MODULE_CONTENT_IN_CATEGORY_DESCRIPTION_SORT_ORDER', '100', 'Sort order of display. Lowest is displayed first.', '6', '2', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('333', 'Enable Category Listing Module', 'MODULE_CONTENT_IN_CATEGORY_LISTING_STATUS', 'True', 'Should this module be enabled?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('334', 'Content Width', 'MODULE_CONTENT_IN_CATEGORY_LISTING_CONTENT_WIDTH', '12', 'What width container should the content be shown in?', '6', '2', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('335', 'Category Width', 'MODULE_CONTENT_IN_CATEGORY_LISTING_CONTENT_WIDTH_EACH', '4', 'What width container should each Category be shown in?', '6', '3', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('336', 'Sort Order', 'MODULE_CONTENT_IN_CATEGORY_LISTING_SORT_ORDER', '200', 'Sort order of display. Lowest is displayed first.', '6', '4', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('337', 'Enable New Products Module', 'MODULE_CONTENT_IN_NEW_PRODUCTS_STATUS', 'True', 'Do you want to enable this module?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('338', 'Content Width', 'MODULE_CONTENT_IN_NEW_PRODUCTS_CONTENT_WIDTH', '12', 'What width container should the content be shown in? (12 = full width, 6 = half width).', '6', '2', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('339', 'Maximum Display', 'MODULE_CONTENT_IN_NEW_PRODUCTS_MAX_DISPLAY', '6', 'Maximum Number of products that should show in this module?', '6', '3', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('340', 'Product Width', 'MODULE_CONTENT_IN_NEW_PRODUCTS_DISPLAY_EACH', '3', 'What width container should each product be shown in? (12 = full width, 6 = half width).', '6', '4', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('341', 'Sort Order', 'MODULE_CONTENT_IN_NEW_PRODUCTS_SORT_ORDER', '300', 'Sort order of display. Lowest is displayed first.', '6', '5', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('342', 'Enable Title Module', 'MODULE_CONTENT_IP_TITLE_STATUS', 'True', 'Do you want to enable this module?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('343', 'Content Width', 'MODULE_CONTENT_IP_TITLE_CONTENT_WIDTH', '12', 'What width container should the content be shown in? (12 = full width, 6 = half width).', '6', '2', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('344', 'Sort Order', 'MODULE_CONTENT_IP_TITLE_SORT_ORDER', '50', 'Sort order of display. Lowest is displayed first.', '6', '5', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('345', 'Enable Category/Manufacturer Description Module', 'MODULE_CONTENT_IP_CATEGORY_DESCRIPTION_STATUS', 'True', 'Should this module be enabled?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('346', 'Content Width', 'MODULE_CONTENT_IP_CATEGORY_DESCRIPTION_CONTENT_WIDTH', '12', 'What width container should the content be shown in?', '6', '3', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('347', 'Sort Order', 'MODULE_CONTENT_IP_CATEGORY_DESCRIPTION_SORT_ORDER', '100', 'Sort order of display. Lowest is displayed first.', '6', '2', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('348', 'Enable Product Listing Module', 'MODULE_CONTENT_IP_PRODUCT_LISTING_STATUS', 'True', 'Should this module be enabled?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('349', 'Content Width', 'MODULE_CONTENT_IP_PRODUCT_LISTING_CONTENT_WIDTH', '12', 'What width container should the content be shown in?', '6', '2', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('350', 'Item Width', 'MODULE_CONTENT_IP_PRODUCT_LISTING_CONTENT_WIDTH_EACH', '4', 'What width container should each Item be shown in?', '6', '3', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('351', 'Sort Order', 'MODULE_CONTENT_IP_PRODUCT_LISTING_SORT_ORDER', '200', 'Sort order of display. Lowest is displayed first.', '6', '4', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('352', 'Enable Title Module', 'MODULE_CONTENT_LOGIN_TITLE_STATUS', 'True', 'Do you want to enable this module?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('353', 'Content Width', 'MODULE_CONTENT_LOGIN_TITLE_CONTENT_WIDTH', '12', 'What width container should the content be shown in? (12 = full width, 6 = half width).', '6', '2', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('354', 'Sort Order', 'MODULE_CONTENT_LOGIN_TITLE_SORT_ORDER', '100', 'Sort order of display. Lowest is displayed first.', '6', '5', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('355', 'Enable Message Module', 'MODULE_CONTENT_PINF_MESSAGE_STATUS', 'True', 'Should this module be shown on the product info page?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('356', 'Content Width', 'MODULE_CONTENT_PINF_MESSAGE_CONTENT_WIDTH', '12', 'What width container should the content be shown in?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('357', 'Sort Order', 'MODULE_CONTENT_PINF_MESSAGE_SORT_ORDER', '10', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('358', 'Enable Options & Attributes', 'MODULE_CONTENT_PI_OA_STATUS', 'True', 'Should this module be shown on the product info page?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('359', 'Content Width', 'MODULE_CONTENT_PI_OA_CONTENT_WIDTH', '12', 'What width container should the content be shown in?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('360', 'Add Helper Text', 'MODULE_CONTENT_PI_OA_HELPER', 'True', 'Should first option in dropdown be Helper Text?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('361', 'Enforce Selection', 'MODULE_CONTENT_PI_OA_ENFORCE', 'True', 'Should customer be forced to select option(s)?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('362', 'Sort Order', 'MODULE_CONTENT_PI_OA_SORT_ORDER', '80', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('363', 'Enable Name Module', 'MODULE_CONTENT_PI_NAME_STATUS', 'True', 'Should this module be shown on the product info page?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('364', 'Content Width', 'MODULE_CONTENT_PI_NAME_CONTENT_WIDTH', '9', 'What width container should the content be shown in?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('365', 'Sort Order', 'MODULE_CONTENT_PI_NAME_SORT_ORDER', '40', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('366', 'Enable Price Module', 'MODULE_CONTENT_PI_PRICE_STATUS', 'True', 'Should this module be shown on the product info page?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('367', 'Content Width', 'MODULE_CONTENT_PI_PRICE_CONTENT_WIDTH', '3', 'What width container should the content be shown in?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('368', 'Sort Order', 'MODULE_CONTENT_PI_PRICE_SORT_ORDER', '50', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('369', 'Enable Description Module', 'MODULE_CONTENT_PI_DESCRIPTION_STATUS', 'True', 'Should this module be shown on the product info page?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('370', 'Content Width', 'MODULE_CONTENT_PI_DESCRIPTION_CONTENT_WIDTH', '8', 'What width container should the content be shown in?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('371', 'Sort Order', 'MODULE_CONTENT_PI_DESCRIPTION_SORT_ORDER', '60', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('372', 'Enable Gallery Module', 'MODULE_CONTENT_PI_GALLERY_STATUS', 'True', 'Should this module be shown on the product info page?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('373', 'Content Width', 'MODULE_CONTENT_PI_GALLERY_CONTENT_WIDTH', '4', 'What width container should the content be shown in?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('374', 'Sort Order', 'MODULE_CONTENT_PI_GALLERY_SORT_ORDER', '65', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:21', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('375', 'Enable Date Available Module', 'MODULE_CONTENT_PI_DATE_AVAILABLE_STATUS', 'True', 'Should this module be shown on the product info page?', '6', '1', NULL, '2020-04-06 13:12:21', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('376', 'Content Width', 'MODULE_CONTENT_PI_DATE_AVAILABLE_CONTENT_WIDTH', '12', 'What width container should the content be shown in?', '6', '1', NULL, '2020-04-06 13:12:22', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('377', 'Date Style', 'MODULE_CONTENT_PI_DATE_AVAILABLE_STYLE', 'Long', 'How should the date look?', '6', '1', NULL, '2020-04-06 13:12:22', NULL, 'tep_cfg_select_option(array(\'Long\', \'Short\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('378', 'Sort Order', 'MODULE_CONTENT_PI_DATE_AVAILABLE_SORT_ORDER', '70', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('379', 'Enable Review Button', 'MODULE_CONTENT_PI_REVIEW_STATUS', 'True', 'Should this module be shown on the product info page?', '6', '1', NULL, '2020-04-06 13:12:22', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('380', 'Content Width', 'MODULE_CONTENT_PI_REVIEW_CONTENT_WIDTH', '6', 'What width container should the content be shown in?', '6', '1', NULL, '2020-04-06 13:12:22', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('381', 'Sort Order', 'MODULE_CONTENT_PI_REVIEW_SORT_ORDER', '90', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('382', 'Enable Buy Button', 'MODULE_CONTENT_PI_BUY_STATUS', 'True', 'Should this module be shown on the product info page?', '6', '1', NULL, '2020-04-06 13:12:22', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('383', 'Content Width', 'MODULE_CONTENT_PI_BUY_CONTENT_WIDTH', '6', 'What width container should the content be shown in?', '6', '1', NULL, '2020-04-06 13:12:22', NULL, 'tep_cfg_select_option(array(\'12\', \'11\', \'10\', \'9\', \'8\', \'7\', \'6\', \'5\', \'4\', \'3\', \'2\', \'1\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('384', 'Sort Order', 'MODULE_CONTENT_PI_BUY_SORT_ORDER', '100', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-06 13:12:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('385', 'Security Check Extended Last Run', 'MODULE_SECURITY_CHECK_EXTENDED_LAST_RUN_DATETIME', '1586289536', 'The date and time the last extended security check was performed.', '6', NULL, NULL, '2020-04-06 14:03:12', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('386', 'PayPal App Parameter', 'OSCOM_APP_PAYPAL_EC_STATUS', '', 'A parameter for the PayPal Application.', '6', '0', NULL, '2020-04-07 01:00:51', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('387', 'PayPal App Parameter', 'OSCOM_APP_PAYPAL_DP_STATUS', '', 'A parameter for the PayPal Application.', '6', '0', NULL, '2020-04-07 01:00:51', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('388', 'PayPal App Parameter', 'OSCOM_APP_PAYPAL_HS_STATUS', '', 'A parameter for the PayPal Application.', '6', '0', NULL, '2020-04-07 01:00:51', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('389', 'PayPal App Parameter', 'OSCOM_APP_PAYPAL_PS_STATUS', '', 'A parameter for the PayPal Application.', '6', '0', NULL, '2020-04-07 01:00:51', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('390', 'PayPal App Parameter', 'OSCOM_APP_PAYPAL_LOGIN_STATUS', '', 'A parameter for the PayPal Application.', '6', '0', NULL, '2020-04-07 01:00:51', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('391', 'Sort Order', 'MODULE_ADMIN_DASHBOARD_PAYPAL_APP_SORT_ORDER', '5000', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2020-04-07 01:00:51', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('392', 'PayPal App Parameter', 'OSCOM_APP_PAYPAL_VERSION_CHECK', '9', 'A parameter for the PayPal Application.', '6', '0', NULL, '2020-04-07 12:11:51', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('393', 'Enable Customer Pickup', 'MODULE_SHIPPING_PICKUP_STATUS', 'True', 'Do you want to offer customer pickup?', '6', '0', NULL, '2020-04-08 19:24:15', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('394', 'Pickup Fee', 'MODULE_SHIPPING_PICKUP_COST', '0.00', 'The fee for all orders being picked up by the customer. Most likely will be 0.00 but can be changed if needed.', '6', '0', NULL, '2020-04-08 19:24:15', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('395', 'Tax Class', 'MODULE_SHIPPING_PICKUP_TAX_CLASS', '0', 'Use the following tax class on the fee.', '6', '0', NULL, '2020-04-08 19:24:15', 'tep_get_tax_class_title', 'tep_cfg_pull_down_tax_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('396', 'Shipping Zone', 'MODULE_SHIPPING_PICKUP_ZONE', '0', 'If a zone is selected, only enable this shipping method for that zone.', '6', '0', NULL, '2020-04-08 19:24:15', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('397', 'Sort Order', 'MODULE_SHIPPING_PICKUP_SORT_ORDER', '0', 'Sort order of display.', '6', '0', NULL, '2020-04-08 19:24:15', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('440', 'Enable Store Pick Up', 'MODULE_SHIPPING_SPU_STATUS', 'True', 'Do you want to offer Store Pickup?', '6', '0', NULL, '2020-04-08 22:39:01', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('441', 'Store Pickup Cost', 'MODULE_SHIPPING_SPU_COST', '0.00', 'What is the pickup cost? (The Handling fee will NOT be added.)', '6', '0', NULL, '2020-04-08 22:39:01', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('442', 'Shipping Zone', 'MODULE_SHIPPING_SPU_ZONE', '1', 'If a zone is selected, only enable this shipping method for that zone.', '6', '0', NULL, '2020-04-08 22:39:01', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('443', 'Store Pick Up Zip Code Allowed', 'MODULE_SHIPPING_SPU_ZIP', '01,07,26,38,42,69,74', 'Comma separated values. All entries must have the same amount of digits. Example: 07,58,69 or 256,589,789', '6', '0', NULL, '2020-04-08 22:39:01', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('444', 'Sort Order', 'MODULE_SHIPPING_SPU_SORT_ORDER', '0', 'Sort order of display.', '6', '0', NULL, '2020-04-08 22:39:01', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('451', 'Enable Flat Shipping', 'MODULE_SHIPPING_FLAT_STATUS', 'True', 'Do you want to offer flat rate shipping?', '6', '0', NULL, '2020-04-08 22:54:54', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('452', 'Shipping Cost', 'MODULE_SHIPPING_FLAT_COST', '0.00', 'The shipping cost for all orders using this shipping method.', '6', '0', NULL, '2020-04-08 22:54:54', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('453', 'Tax Class', 'MODULE_SHIPPING_FLAT_TAX_CLASS', '0', 'Use the following tax class on the shipping fee.', '6', '0', NULL, '2020-04-08 22:54:54', 'tep_get_tax_class_title', 'tep_cfg_pull_down_tax_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('454', 'Shipping Zone', 'MODULE_SHIPPING_FLAT_ZONE', '1', 'If a zone is selected, only enable this shipping method for that zone.', '6', '0', NULL, '2020-04-08 22:54:54', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('455', 'Sort Order', 'MODULE_SHIPPING_FLAT_SORT_ORDER', '0', 'Sort order of display.', '6', '0', NULL, '2020-04-08 22:54:54', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('456', 'PayPal App Parameter', 'OSCOM_APP_PAYPAL_LIVE_SELLER_EMAIL', '', 'A parameter for the PayPal Application.', '6', '0', NULL, '2020-04-09 01:30:03', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('457', 'PayPal App Parameter', 'OSCOM_APP_PAYPAL_LIVE_SELLER_EMAIL_PRIMARY', '', 'A parameter for the PayPal Application.', '6', '0', NULL, '2020-04-09 01:30:03', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('458', 'PayPal App Parameter', 'OSCOM_APP_PAYPAL_LIVE_API_USERNAME', '', 'A parameter for the PayPal Application.', '6', '0', NULL, '2020-04-09 01:30:03', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('459', 'PayPal App Parameter', 'OSCOM_APP_PAYPAL_LIVE_API_PASSWORD', '', 'A parameter for the PayPal Application.', '6', '0', NULL, '2020-04-09 01:30:03', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('460', 'PayPal App Parameter', 'OSCOM_APP_PAYPAL_LIVE_API_SIGNATURE', '', 'A parameter for the PayPal Application.', '6', '0', NULL, '2020-04-09 01:30:03', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('461', 'PayPal App Parameter', 'OSCOM_APP_PAYPAL_SANDBOX_SELLER_EMAIL', '', 'A parameter for the PayPal Application.', '6', '0', NULL, '2020-04-09 01:30:03', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('462', 'PayPal App Parameter', 'OSCOM_APP_PAYPAL_SANDBOX_SELLER_EMAIL_PRIMARY', '', 'A parameter for the PayPal Application.', '6', '0', NULL, '2020-04-09 01:30:03', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('463', 'PayPal App Parameter', 'OSCOM_APP_PAYPAL_SANDBOX_API_USERNAME', '', 'A parameter for the PayPal Application.', '6', '0', NULL, '2020-04-09 01:30:03', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('464', 'PayPal App Parameter', 'OSCOM_APP_PAYPAL_SANDBOX_API_PASSWORD', '', 'A parameter for the PayPal Application.', '6', '0', NULL, '2020-04-09 01:30:03', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('465', 'PayPal App Parameter', 'OSCOM_APP_PAYPAL_SANDBOX_API_SIGNATURE', '', 'A parameter for the PayPal Application.', '6', '0', NULL, '2020-04-09 01:30:03', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('466', 'PayPal App Parameter', 'OSCOM_APP_PAYPAL_PF_LIVE_PARTNER', '', 'A parameter for the PayPal Application.', '6', '0', NULL, '2020-04-09 01:30:03', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('467', 'PayPal App Parameter', 'OSCOM_APP_PAYPAL_PF_LIVE_VENDOR', '', 'A parameter for the PayPal Application.', '6', '0', NULL, '2020-04-09 01:30:03', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('468', 'PayPal App Parameter', 'OSCOM_APP_PAYPAL_PF_LIVE_USER', '', 'A parameter for the PayPal Application.', '6', '0', NULL, '2020-04-09 01:30:03', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('469', 'PayPal App Parameter', 'OSCOM_APP_PAYPAL_PF_LIVE_PASSWORD', '', 'A parameter for the PayPal Application.', '6', '0', NULL, '2020-04-09 01:30:03', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('470', 'PayPal App Parameter', 'OSCOM_APP_PAYPAL_PF_SANDBOX_PARTNER', '', 'A parameter for the PayPal Application.', '6', '0', NULL, '2020-04-09 01:30:03', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('471', 'PayPal App Parameter', 'OSCOM_APP_PAYPAL_PF_SANDBOX_VENDOR', '', 'A parameter for the PayPal Application.', '6', '0', NULL, '2020-04-09 01:30:03', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('472', 'PayPal App Parameter', 'OSCOM_APP_PAYPAL_PF_SANDBOX_USER', '', 'A parameter for the PayPal Application.', '6', '0', NULL, '2020-04-09 01:30:03', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('473', 'PayPal App Parameter', 'OSCOM_APP_PAYPAL_PF_SANDBOX_PASSWORD', '', 'A parameter for the PayPal Application.', '6', '0', NULL, '2020-04-09 01:30:03', NULL, NULL);
drop table if exists configuration_group;
create table configuration_group (
  configuration_group_id int(11) not null auto_increment,
  configuration_group_title varchar(64) not null ,
  configuration_group_description varchar(255) not null ,
  sort_order int(5) ,
  visible int(1) default '1' ,
  PRIMARY KEY (configuration_group_id)
);

insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('1', 'My Store', 'General information about my store', '1', '1');
-- insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('2', 'Minimum Values', 'The minimum values for functions / data', '2', '1');
-- insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('3', 'Maximum Values', 'The maximum values for functions / data', '3', '1');
-- insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('4', 'Images', 'Image parameters', '4', '1');
-- insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('5', 'Customer Details', 'Customer account configuration', '5', '1');
-- insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('6', 'Module Options', 'Hidden from configuration', '6', '0');
-- insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('7', 'Shipping/Packaging', 'Shipping options available at my store', '7', '1');
-- insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('8', 'Product Listing', 'Product Listing    configuration options', '8', '1');
-- insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('9', 'Stock', 'Stock configuration options', '9', '1');
-- insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('10', 'Logging', 'Logging configuration options', '10', '1');
-- insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('11', 'Cache', 'Caching configuration options', '11', '1');
-- insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('12', 'E-Mail Options', 'General setting for E-Mail transport and HTML E-Mails', '12', '1');
-- insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('13', 'Download', 'Downloadable products options', '13', '1');
-- insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('14', 'GZip Compression', 'GZip compression options', '14', '1');
-- insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('15', 'Sessions', 'Session options', '15', '1');
-- insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('16', 'Bootstrap Setup', 'Basic Bootstrap Options', '16', '1');
drop table if exists counter;
create table counter (
  startdate char(8) ,
  counter int(12)
);

insert into counter (startdate, counter) values ('20200403', '1314');
drop table if exists counter_history;
create table counter_history (
  month char(8) ,
  counter int(12)
);

drop table if exists countries;
create table countries (
  countries_id int(11) not null auto_increment,
  countries_name varchar(255) not null ,
  countries_iso_code_2 char(2) not null ,
  countries_iso_code_3 char(3) not null ,
  address_format_id int(11) not null ,
  PRIMARY KEY (countries_id),
  KEY IDX_COUNTRIES_NAME (countries_name)
);

insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('1', 'Afghanistan', 'AF', 'AFG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('2', 'Albania', 'AL', 'ALB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('3', 'Algeria', 'DZ', 'DZA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('4', 'American Samoa', 'AS', 'ASM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('5', 'Andorra', 'AD', 'AND', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('6', 'Angola', 'AO', 'AGO', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('7', 'Anguilla', 'AI', 'AIA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('8', 'Antarctica', 'AQ', 'ATA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('9', 'Antigua and Barbuda', 'AG', 'ATG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('10', 'Argentina', 'AR', 'ARG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('11', 'Armenia', 'AM', 'ARM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('12', 'Aruba', 'AW', 'ABW', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('13', 'Australia', 'AU', 'AUS', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('14', 'Austria', 'AT', 'AUT', '5');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('15', 'Azerbaijan', 'AZ', 'AZE', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('16', 'Bahamas', 'BS', 'BHS', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('17', 'Bahrain', 'BH', 'BHR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('18', 'Bangladesh', 'BD', 'BGD', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('19', 'Barbados', 'BB', 'BRB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('20', 'Belarus', 'BY', 'BLR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('21', 'Belgium', 'BE', 'BEL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('22', 'Belize', 'BZ', 'BLZ', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('23', 'Benin', 'BJ', 'BEN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('24', 'Bermuda', 'BM', 'BMU', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('25', 'Bhutan', 'BT', 'BTN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('26', 'Bolivia', 'BO', 'BOL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('27', 'Bosnia and Herzegowina', 'BA', 'BIH', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('28', 'Botswana', 'BW', 'BWA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('29', 'Bouvet Island', 'BV', 'BVT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('30', 'Brazil', 'BR', 'BRA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('31', 'British Indian Ocean Territory', 'IO', 'IOT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('32', 'Brunei Darussalam', 'BN', 'BRN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('33', 'Bulgaria', 'BG', 'BGR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('34', 'Burkina Faso', 'BF', 'BFA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('35', 'Burundi', 'BI', 'BDI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('36', 'Cambodia', 'KH', 'KHM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('37', 'Cameroon', 'CM', 'CMR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('38', 'Canada', 'CA', 'CAN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('39', 'Cape Verde', 'CV', 'CPV', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('40', 'Cayman Islands', 'KY', 'CYM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('41', 'Central African Republic', 'CF', 'CAF', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('42', 'Chad', 'TD', 'TCD', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('43', 'Chile', 'CL', 'CHL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('44', 'China', 'CN', 'CHN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('45', 'Christmas Island', 'CX', 'CXR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('46', 'Cocos (Keeling) Islands', 'CC', 'CCK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('47', 'Colombia', 'CO', 'COL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('48', 'Comoros', 'KM', 'COM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('49', 'Congo', 'CG', 'COG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('50', 'Cook Islands', 'CK', 'COK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('51', 'Costa Rica', 'CR', 'CRI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('52', 'Cote D\'Ivoire', 'CI', 'CIV', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('53', 'Croatia', 'HR', 'HRV', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('54', 'Cuba', 'CU', 'CUB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('55', 'Cyprus', 'CY', 'CYP', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('56', 'Czech Republic', 'CZ', 'CZE', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('57', 'Denmark', 'DK', 'DNK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('58', 'Djibouti', 'DJ', 'DJI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('59', 'Dominica', 'DM', 'DMA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('60', 'Dominican Republic', 'DO', 'DOM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('61', 'East Timor', 'TP', 'TMP', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('62', 'Ecuador', 'EC', 'ECU', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('63', 'Egypt', 'EG', 'EGY', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('64', 'El Salvador', 'SV', 'SLV', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('65', 'Equatorial Guinea', 'GQ', 'GNQ', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('66', 'Eritrea', 'ER', 'ERI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('67', 'Estonia', 'EE', 'EST', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('68', 'Ethiopia', 'ET', 'ETH', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('69', 'Falkland Islands (Malvinas)', 'FK', 'FLK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('70', 'Faroe Islands', 'FO', 'FRO', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('71', 'Fiji', 'FJ', 'FJI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('72', 'Finland', 'FI', 'FIN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('73', 'France', 'FR', 'FRA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('74', 'France, Metropolitan', 'FX', 'FXX', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('75', 'French Guiana', 'GF', 'GUF', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('76', 'French Polynesia', 'PF', 'PYF', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('77', 'French Southern Territories', 'TF', 'ATF', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('78', 'Gabon', 'GA', 'GAB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('79', 'Gambia', 'GM', 'GMB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('80', 'Georgia', 'GE', 'GEO', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('81', 'Germany', 'DE', 'DEU', '5');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('82', 'Ghana', 'GH', 'GHA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('83', 'Gibraltar', 'GI', 'GIB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('84', 'Greece', 'GR', 'GRC', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('85', 'Greenland', 'GL', 'GRL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('86', 'Grenada', 'GD', 'GRD', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('87', 'Guadeloupe', 'GP', 'GLP', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('88', 'Guam', 'GU', 'GUM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('89', 'Guatemala', 'GT', 'GTM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('90', 'Guinea', 'GN', 'GIN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('91', 'Guinea-bissau', 'GW', 'GNB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('92', 'Guyana', 'GY', 'GUY', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('93', 'Haiti', 'HT', 'HTI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('94', 'Heard and Mc Donald Islands', 'HM', 'HMD', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('95', 'Honduras', 'HN', 'HND', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('96', 'Hong Kong', 'HK', 'HKG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('97', 'Hungary', 'HU', 'HUN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('98', 'Iceland', 'IS', 'ISL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('99', 'India', 'IN', 'IND', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('100', 'Indonesia', 'ID', 'IDN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('101', 'Iran (Islamic Republic of)', 'IR', 'IRN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('102', 'Iraq', 'IQ', 'IRQ', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('103', 'Ireland', 'IE', 'IRL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('104', 'Israel', 'IL', 'ISR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('105', 'Italy', 'IT', 'ITA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('106', 'Jamaica', 'JM', 'JAM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('107', 'Japan', 'JP', 'JPN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('108', 'Jordan', 'JO', 'JOR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('109', 'Kazakhstan', 'KZ', 'KAZ', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('110', 'Kenya', 'KE', 'KEN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('111', 'Kiribati', 'KI', 'KIR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('112', 'Korea, Democratic People\'s Republic of', 'KP', 'PRK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('113', 'Korea, Republic of', 'KR', 'KOR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('114', 'Kuwait', 'KW', 'KWT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('115', 'Kyrgyzstan', 'KG', 'KGZ', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('116', 'Lao People\'s Democratic Republic', 'LA', 'LAO', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('117', 'Latvia', 'LV', 'LVA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('118', 'Lebanon', 'LB', 'LBN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('119', 'Lesotho', 'LS', 'LSO', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('120', 'Liberia', 'LR', 'LBR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('121', 'Libyan Arab Jamahiriya', 'LY', 'LBY', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('122', 'Liechtenstein', 'LI', 'LIE', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('123', 'Lithuania', 'LT', 'LTU', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('124', 'Luxembourg', 'LU', 'LUX', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('125', 'Macau', 'MO', 'MAC', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('126', 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('127', 'Madagascar', 'MG', 'MDG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('128', 'Malawi', 'MW', 'MWI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('129', 'Malaysia', 'MY', 'MYS', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('130', 'Maldives', 'MV', 'MDV', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('131', 'Mali', 'ML', 'MLI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('132', 'Malta', 'MT', 'MLT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('133', 'Marshall Islands', 'MH', 'MHL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('134', 'Martinique', 'MQ', 'MTQ', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('135', 'Mauritania', 'MR', 'MRT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('136', 'Mauritius', 'MU', 'MUS', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('137', 'Mayotte', 'YT', 'MYT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('138', 'Mexico', 'MX', 'MEX', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('139', 'Micronesia, Federated States of', 'FM', 'FSM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('140', 'Moldova, Republic of', 'MD', 'MDA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('141', 'Monaco', 'MC', 'MCO', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('142', 'Mongolia', 'MN', 'MNG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('143', 'Montserrat', 'MS', 'MSR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('144', 'Morocco', 'MA', 'MAR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('145', 'Mozambique', 'MZ', 'MOZ', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('146', 'Myanmar', 'MM', 'MMR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('147', 'Namibia', 'NA', 'NAM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('148', 'Nauru', 'NR', 'NRU', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('149', 'Nepal', 'NP', 'NPL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('150', 'Netherlands', 'NL', 'NLD', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('151', 'Netherlands Antilles', 'AN', 'ANT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('152', 'New Caledonia', 'NC', 'NCL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('153', 'New Zealand', 'NZ', 'NZL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('154', 'Nicaragua', 'NI', 'NIC', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('155', 'Niger', 'NE', 'NER', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('156', 'Nigeria', 'NG', 'NGA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('157', 'Niue', 'NU', 'NIU', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('158', 'Norfolk Island', 'NF', 'NFK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('159', 'Northern Mariana Islands', 'MP', 'MNP', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('160', 'Norway', 'NO', 'NOR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('161', 'Oman', 'OM', 'OMN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('162', 'Pakistan', 'PK', 'PAK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('163', 'Palau', 'PW', 'PLW', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('164', 'Panama', 'PA', 'PAN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('165', 'Papua New Guinea', 'PG', 'PNG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('166', 'Paraguay', 'PY', 'PRY', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('167', 'Peru', 'PE', 'PER', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('168', 'Philippines', 'PH', 'PHL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('169', 'Pitcairn', 'PN', 'PCN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('170', 'Poland', 'PL', 'POL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('171', 'Portugal', 'PT', 'PRT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('172', 'Puerto Rico', 'PR', 'PRI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('173', 'Qatar', 'QA', 'QAT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('174', 'Reunion', 'RE', 'REU', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('175', 'Romania', 'RO', 'ROM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('176', 'Russian Federation', 'RU', 'RUS', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('177', 'Rwanda', 'RW', 'RWA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('178', 'Saint Kitts and Nevis', 'KN', 'KNA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('179', 'Saint Lucia', 'LC', 'LCA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('180', 'Saint Vincent and the Grenadines', 'VC', 'VCT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('181', 'Samoa', 'WS', 'WSM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('182', 'San Marino', 'SM', 'SMR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('183', 'Sao Tome and Principe', 'ST', 'STP', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('184', 'Saudi Arabia', 'SA', 'SAU', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('185', 'Senegal', 'SN', 'SEN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('186', 'Seychelles', 'SC', 'SYC', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('187', 'Sierra Leone', 'SL', 'SLE', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('188', 'Singapore', 'SG', 'SGP', '4');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('189', 'Slovakia (Slovak Republic)', 'SK', 'SVK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('190', 'Slovenia', 'SI', 'SVN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('191', 'Solomon Islands', 'SB', 'SLB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('192', 'Somalia', 'SO', 'SOM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('193', 'South Africa', 'ZA', 'ZAF', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('194', 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('195', 'Spain', 'ES', 'ESP', '3');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('196', 'Sri Lanka', 'LK', 'LKA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('197', 'St. Helena', 'SH', 'SHN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('198', 'St. Pierre and Miquelon', 'PM', 'SPM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('199', 'Sudan', 'SD', 'SDN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('200', 'Suriname', 'SR', 'SUR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('201', 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('202', 'Swaziland', 'SZ', 'SWZ', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('203', 'Sweden', 'SE', 'SWE', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('204', 'Switzerland', 'CH', 'CHE', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('205', 'Syrian Arab Republic', 'SY', 'SYR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('206', 'Taiwan', 'TW', 'TWN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('207', 'Tajikistan', 'TJ', 'TJK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('208', 'Tanzania, United Republic of', 'TZ', 'TZA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('209', 'Thailand', 'TH', 'THA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('210', 'Togo', 'TG', 'TGO', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('211', 'Tokelau', 'TK', 'TKL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('212', 'Tonga', 'TO', 'TON', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('213', 'Trinidad and Tobago', 'TT', 'TTO', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('214', 'Tunisia', 'TN', 'TUN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('215', 'Turkey', 'TR', 'TUR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('216', 'Turkmenistan', 'TM', 'TKM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('217', 'Turks and Caicos Islands', 'TC', 'TCA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('218', 'Tuvalu', 'TV', 'TUV', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('219', 'Uganda', 'UG', 'UGA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('220', 'Ukraine', 'UA', 'UKR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('221', 'United Arab Emirates', 'AE', 'ARE', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('222', 'United Kingdom', 'GB', 'GBR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('223', 'United States', 'US', 'USA', '2');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('224', 'United States Minor Outlying Islands', 'UM', 'UMI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('225', 'Uruguay', 'UY', 'URY', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('226', 'Uzbekistan', 'UZ', 'UZB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('227', 'Vanuatu', 'VU', 'VUT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('228', 'Vatican City State (Holy See)', 'VA', 'VAT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('229', 'Venezuela', 'VE', 'VEN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('230', 'Viet Nam', 'VN', 'VNM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('231', 'Virgin Islands (British)', 'VG', 'VGB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('232', 'Virgin Islands (U.S.)', 'VI', 'VIR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('233', 'Wallis and Futuna Islands', 'WF', 'WLF', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('234', 'Western Sahara', 'EH', 'ESH', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('235', 'Yemen', 'YE', 'YEM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('236', 'Yugoslavia', 'YU', 'YUG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('237', 'Zaire', 'ZR', 'ZAR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('238', 'Zambia', 'ZM', 'ZMB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('239', 'Zimbabwe', 'ZW', 'ZWE', '1');
drop table if exists currencies;
create table currencies (
  currencies_id int(11) not null auto_increment,
  title varchar(32) not null ,
  code char(3) not null ,
  symbol_left varchar(12) ,
  symbol_right varchar(12) ,
  decimal_point char(1) ,
  thousands_point char(1) ,
  decimal_places char(1) ,
  value float(13,8) ,
  last_updated datetime ,
  PRIMARY KEY (currencies_id),
  KEY idx_currencies_code (code)
);

insert into currencies (currencies_id, title, code, symbol_left, symbol_right, decimal_point, thousands_point, decimal_places, value, last_updated) values ('1', 'U.S. Dollar', 'USD', '$', '', '.', ',', '2', '1.00000000', '2020-04-06 13:12:16');
insert into currencies (currencies_id, title, code, symbol_left, symbol_right, decimal_point, thousands_point, decimal_places, value, last_updated) values ('2', 'Euro', 'EUR', '', '€', '.', ',', '2', '1.00000000', '2020-04-06 13:12:17');
insert into currencies (currencies_id, title, code, symbol_left, symbol_right, decimal_point, thousands_point, decimal_places, value, last_updated) values ('3', 'Indian Rupee', 'INR', 'Rs.', '', '.', ',', '2', '1.00000000', NULL);
drop table if exists customers;
create table customers (
  customers_id int(11) not null auto_increment,
  customers_gender char(1) ,
  customers_firstname varchar(255) not null ,
  customers_lastname varchar(255) not null ,
  customers_dob datetime default '1970-01-01 00:00:01' not null ,
  customers_email_address varchar(255) not null ,
  customers_default_address_id int(11) ,
  customers_telephone varchar(255) not null ,
  customers_fax varchar(255) ,
  customers_password varchar(60) not null ,
  customers_newsletter char(1) ,
  PRIMARY KEY (customers_id),
  KEY idx_customers_email_address (customers_email_address)
);

insert into customers (customers_id, customers_gender, customers_firstname, customers_lastname, customers_dob, customers_email_address, customers_default_address_id, customers_telephone, customers_fax, customers_password, customers_newsletter) values ('1', 'm', 'Demo', 'User', '1997-06-04 00:00:00', 'abc@gmail.com', '1', '7992372914', '', '$P$DzsFtWQqgUiEMxI1RCS6Xbk6NbbB.f0', '0');
insert into customers (customers_id, customers_gender, customers_firstname, customers_lastname, customers_dob, customers_email_address, customers_default_address_id, customers_telephone, customers_fax, customers_password, customers_newsletter) values ('2', 'm', 'Demo', 'user', '1989-07-11 00:00:00', 'pranavvsingh46@gmail.com', '2', '7992372914', '', '$P$Dq6kDz4FNPKEv4A6TKaOh4b9jtnKNa/', '');
insert into customers (customers_id, customers_gender, customers_firstname, customers_lastname, customers_dob, customers_email_address, customers_default_address_id, customers_telephone, customers_fax, customers_password, customers_newsletter) values ('3', 'm', 'Pranav', 'Singh', '1997-07-04 00:00:00', 'pranavvsingh49@gmail.com', '3', '7992372914', '', '$P$DyCembZBSGLk1m25o/3ru9h3biNdbG0', '0');
drop table if exists customers_basket;
create table customers_basket (
  customers_basket_id int(11) not null auto_increment,
  customers_id int(11) not null ,
  products_id tinytext not null ,
  customers_basket_quantity int(2) not null ,
  final_price decimal(15,4) ,
  customers_basket_date_added char(8) ,
  PRIMARY KEY (customers_basket_id),
  KEY idx_customers_basket_customers_id (customers_id)
);

insert into customers_basket (customers_basket_id, customers_id, products_id, customers_basket_quantity, final_price, customers_basket_date_added) values ('16', '1', '48', '1', NULL, '20200407');
drop table if exists customers_basket_attributes;
create table customers_basket_attributes (
  customers_basket_attributes_id int(11) not null auto_increment,
  customers_id int(11) not null ,
  products_id tinytext not null ,
  products_options_id int(11) not null ,
  products_options_value_id int(11) not null ,
  PRIMARY KEY (customers_basket_attributes_id),
  KEY idx_customers_basket_att_customers_id (customers_id)
);

drop table if exists customers_info;
create table customers_info (
  customers_info_id int(11) not null ,
  customers_info_date_of_last_logon datetime ,
  customers_info_number_of_logons int(5) ,
  customers_info_date_account_created datetime ,
  customers_info_date_account_last_modified datetime ,
  global_product_notifications int(1) default '0' ,
  password_reset_key char(40) ,
  password_reset_date datetime ,
  PRIMARY KEY (customers_info_id)
);

insert into customers_info (customers_info_id, customers_info_date_of_last_logon, customers_info_number_of_logons, customers_info_date_account_created, customers_info_date_account_last_modified, global_product_notifications, password_reset_key, password_reset_date) values ('1', NULL, '0', '2020-04-07 00:36:01', '2020-04-07 15:49:52', '0', NULL, NULL);
insert into customers_info (customers_info_id, customers_info_date_of_last_logon, customers_info_number_of_logons, customers_info_date_account_created, customers_info_date_account_last_modified, global_product_notifications, password_reset_key, password_reset_date) values ('2', '2020-04-08 13:50:20', '1', '2020-04-07 16:09:13', NULL, '0', NULL, NULL);
insert into customers_info (customers_info_id, customers_info_date_of_last_logon, customers_info_number_of_logons, customers_info_date_account_created, customers_info_date_account_last_modified, global_product_notifications, password_reset_key, password_reset_date) values ('3', '2020-04-11 03:00:25', '26', '2020-04-08 03:44:08', '2020-04-09 04:09:34', '0', NULL, NULL);
drop table if exists geo_zones;
create table geo_zones (
  geo_zone_id int(11) not null auto_increment,
  geo_zone_name varchar(32) not null ,
  geo_zone_description varchar(255) not null ,
  last_modified datetime ,
  date_added datetime not null ,
  PRIMARY KEY (geo_zone_id)
);

insert into geo_zones (geo_zone_id, geo_zone_name, geo_zone_description, last_modified, date_added) values ('1', 'vadodara', 'vadodara local sales tax zone', '2020-04-09 01:45:11', '2020-04-06 13:12:18');
drop table if exists languages;
create table languages (
  languages_id int(11) not null auto_increment,
  name varchar(32) not null ,
  code char(2) not null ,
  image varchar(64) ,
  directory varchar(32) ,
  sort_order int(3) ,
  PRIMARY KEY (languages_id),
  KEY IDX_LANGUAGES_NAME (name)
);

insert into languages (languages_id, name, code, image, directory, sort_order) values ('1', 'English', 'en', 'icon.gif', 'english', '1');
drop table if exists manufacturers;
create table manufacturers (
  manufacturers_id int(11) not null auto_increment,
  manufacturers_name varchar(32) not null ,
  manufacturers_image varchar(64) ,
  date_added datetime ,
  last_modified datetime ,
  PRIMARY KEY (manufacturers_id),
  KEY IDX_MANUFACTURERS_NAME (manufacturers_name)
);

insert into manufacturers (manufacturers_id, manufacturers_name, manufacturers_image, date_added, last_modified) values ('11', 'MTR', 'index.jpeg', '2020-04-06 22:24:59', NULL);
drop table if exists manufacturers_info;
create table manufacturers_info (
  manufacturers_id int(11) not null ,
  languages_id int(11) not null ,
  manufacturers_url varchar(255) not null ,
  url_clicked int(5) default '0' not null ,
  date_last_click datetime ,
  manufacturers_description text ,
  manufacturers_seo_description text ,
  manufacturers_seo_keywords varchar(128) ,
  manufacturers_seo_title varchar(128) ,
  PRIMARY KEY (manufacturers_id, languages_id)
);

insert into manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click, manufacturers_description, manufacturers_seo_description, manufacturers_seo_keywords, manufacturers_seo_title) values ('11', '1', '', '0', NULL, '', '', '', '');
drop table if exists newsletters;
create table newsletters (
  newsletters_id int(11) not null auto_increment,
  title varchar(255) not null ,
  content text not null ,
  module varchar(255) not null ,
  date_added datetime not null ,
  date_sent datetime ,
  status int(1) ,
  locked int(1) default '0' ,
  PRIMARY KEY (newsletters_id)
);

drop table if exists orders;
create table orders (
  orders_id int(11) not null auto_increment,
  customers_id int(11) not null ,
  customers_name varchar(255) not null ,
  customers_company varchar(255) ,
  customers_street_address varchar(255) not null ,
  customers_suburb varchar(255) ,
  customers_city varchar(255) not null ,
  customers_postcode varchar(255) not null ,
  customers_state varchar(255) ,
  customers_country varchar(255) not null ,
  customers_telephone varchar(255) not null ,
  customers_email_address varchar(255) not null ,
  customers_address_format_id int(5) not null ,
  delivery_name varchar(255) not null ,
  delivery_company varchar(255) ,
  delivery_street_address varchar(255) not null ,
  delivery_suburb varchar(255) ,
  delivery_city varchar(255) not null ,
  delivery_postcode varchar(255) not null ,
  delivery_state varchar(255) ,
  delivery_country varchar(255) not null ,
  delivery_address_format_id int(5) not null ,
  billing_name varchar(255) not null ,
  billing_company varchar(255) ,
  billing_street_address varchar(255) not null ,
  billing_suburb varchar(255) ,
  billing_city varchar(255) not null ,
  billing_postcode varchar(255) not null ,
  billing_state varchar(255) ,
  billing_country varchar(255) not null ,
  billing_address_format_id int(5) not null ,
  payment_method varchar(255) not null ,
  cc_type varchar(20) ,
  cc_owner varchar(255) ,
  cc_number varchar(32) ,
  cc_expires varchar(4) ,
  last_modified datetime ,
  date_purchased datetime ,
  orders_status int(5) not null ,
  orders_date_finished datetime ,
  currency char(3) ,
  currency_value decimal(14,6) ,
  PRIMARY KEY (orders_id),
  KEY idx_orders_customers_id (customers_id)
);

insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('9', '3', 'Pranav SIngh', '123abc', 'sfsgdsgfd', '', 'Pune', 'gshjhgjsbd', 'Maharastra', 'India', 'wrgewyrhsdbdbvds', 'pranavvsingh49@gmail.com', '1', 'Pranav SIngh', '123abc', 'sfsgdsgfd', '', 'Pune', 'gshjhgjsbd', 'Maharastra', 'India', '1', 'Pranav SIngh', '123abc', 'sfsgdsgfd', '', 'Pune', 'gshjhgjsbd', 'Maharastra', 'India', '1', 'Cash on Delivery', '', '', '', '', NULL, '2020-04-08 19:09:33', '0', NULL, 'INR', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('10', '3', 'Pranav SIngh', '123abc', 'sfsgdsgfd', '', 'Pune', 'gshjhgjsbd', 'Maharastra', 'India', 'wrgewyrhsdbdbvds', 'pranavvsingh49@gmail.com', '1', 'Pranav SIngh', '123abc', 'sfsgdsgfd', '', 'Pune', 'gshjhgjsbd', 'Maharastra', 'India', '1', 'Pranav SIngh', '123abc', 'sfsgdsgfd', '', 'Pune', 'gshjhgjsbd', 'Maharastra', 'India', '1', 'Cash on Delivery', '', '', '', '', NULL, '2020-04-08 22:55:51', '1', NULL, 'INR', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('11', '3', 'Pranav SIngh', '123abc', 'sfsgdsgfd', '', 'Pune', 'gshjhgjsbd', 'Maharastra', 'India', 'wrgewyrhsdbdbvds', 'pranavvsingh49@gmail.com', '1', 'Pranav SIngh', '123abc', 'sfsgdsgfd', '', 'Pune', 'gshjhgjsbd', 'Maharastra', 'India', '1', 'Pranav SIngh', '123abc', 'sfsgdsgfd', '', 'Pune', 'gshjhgjsbd', 'Maharastra', 'India', '1', 'Cash on Delivery', '', '', '', '', NULL, '2020-04-09 00:39:08', '1', NULL, 'INR', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('12', '3', 'Pranav SIngh', '123abc', 'sfsgdsgfd', '', 'Pune', 'gshjhgjsbd', 'Maharastra', 'India', 'wrgewyrhsdbdbvds', 'pranavvsingh49@gmail.com', '1', 'Pranav SIngh', '123abc', 'sfsgdsgfd', '', 'Pune', 'gshjhgjsbd', 'Maharastra', 'India', '1', 'Pranav SIngh', '123abc', 'sfsgdsgfd', '', 'Pune', 'gshjhgjsbd', 'Maharastra', 'India', '1', 'Cash on Delivery', '', '', '', '', '2020-04-09 01:50:50', '2020-04-09 01:35:31', '4', NULL, 'INR', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('13', '3', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '7992372914', 'pranavvsingh49@gmail.com', '1', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '1', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '1', 'Cash on Delivery', '', '', '', '', NULL, '2020-04-09 02:22:01', '1', NULL, 'INR', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('14', '3', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '7992372914', 'pranavvsingh49@gmail.com', '1', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '1', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '1', 'Cash on Delivery', '', '', '', '', NULL, '2020-04-09 02:23:41', '1', NULL, 'INR', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('15', '3', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '7992372914', 'pranavvsingh49@gmail.com', '1', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '1', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '1', 'Cash on Delivery', '', '', '', '', NULL, '2020-04-09 02:24:12', '1', NULL, 'INR', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('16', '3', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '7992372914', 'pranavvsingh49@gmail.com', '1', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '1', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '1', 'Cash on Delivery', '', '', '', '', NULL, '2020-04-09 02:36:30', '1', NULL, 'INR', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('17', '3', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '7992372914', 'pranavvsingh49@gmail.com', '1', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '1', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '1', 'Cash on Delivery', '', '', '', '', NULL, '2020-04-09 02:52:29', '1', NULL, 'INR', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('18', '3', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '7992372914', 'pranavvsingh49@gmail.com', '1', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '1', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '1', 'Cash on Delivery', '', '', '', '', NULL, '2020-04-09 02:55:02', '1', NULL, 'INR', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('19', '3', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '7992372914', 'pranavvsingh49@gmail.com', '1', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '1', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '1', 'Cash on Delivery', '', '', '', '', NULL, '2020-04-09 03:01:55', '1', NULL, 'INR', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('20', '3', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '7992372914', 'pranavvsingh49@gmail.com', '1', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '1', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '1', 'Cash on Delivery', '', '', '', '', NULL, '2020-04-09 03:05:19', '1', NULL, 'INR', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('21', '3', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '7992372914', 'pranavvsingh49@gmail.com', '1', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '1', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '1', 'Cash on Delivery', '', '', '', '', NULL, '2020-04-09 03:07:43', '1', NULL, 'INR', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('22', '3', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '7992372914', 'pranavvsingh49@gmail.com', '1', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '1', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '1', 'Cash on Delivery', '', '', '', '', NULL, '2020-04-09 03:08:37', '1', NULL, 'INR', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('23', '3', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '7992372914', 'pranavvsingh49@gmail.com', '1', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '1', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '1', 'Cash on Delivery', '', '', '', '', NULL, '2020-04-09 03:10:34', '1', NULL, 'INR', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('24', '3', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '7992372914', 'pranavvsingh49@gmail.com', '1', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '1', 'Pranav Singh', '123abc', '123 yard-45', '', 'vadodara', '411018', 'vadodara', 'India', '1', 'Cash on Delivery', '', '', '', '', NULL, '2020-04-09 03:13:31', '1', NULL, 'INR', '1.000000');
drop table if exists orders_products;
create table orders_products (
  orders_products_id int(11) not null auto_increment,
  orders_id int(11) not null ,
  products_id int(11) not null ,
  products_model varchar(64) ,
  products_name varchar(64) not null ,
  products_price decimal(15,4) not null ,
  final_price decimal(15,4) not null ,
  products_tax decimal(7,4) not null ,
  products_quantity int(2) not null ,
  PRIMARY KEY (orders_products_id),
  KEY idx_orders_products_orders_id (orders_id),
  KEY idx_orders_products_products_id (products_id)
);

insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('23', '9', '86', '', 'Almond Drink Can', '100.0000', '100.0000', '0.0000', '4');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('24', '10', '73', '', 'Sambar Powder', '100.0000', '100.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('25', '10', '77', '', 'Garam Masala', '100.0000', '100.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('26', '10', '48', '', 'Alu Methi', '100.0000', '100.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('27', '10', '57', '', 'Jeera Rice', '100.0000', '100.0000', '0.0000', '2');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('28', '10', '86', '', 'Almond Drink Can', '100.0000', '100.0000', '0.0000', '2');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('29', '10', '49', '', 'Alu Mutter', '100.0000', '100.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('30', '10', '94', '', 'Plain Papad', '100.0000', '100.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('31', '11', '86', '', 'Almond Drink Can', '100.0000', '100.0000', '0.0000', '3');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('32', '11', '76', '', 'Chat Masala', '100.0000', '100.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('33', '12', '93', '', 'Tomato Pickle', '100.0000', '100.0000', '0.0000', '8');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('34', '12', '79', '', 'Dhaniya Powder', '100.0000', '200.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('35', '13', '45', '', 'Sambar Mix', '100.0000', '100.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('36', '13', '87', '', 'Chocolate Drink Can', '100.0000', '100.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('37', '13', '76', '', 'Chat Masala', '100.0000', '100.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('38', '13', '92', '', 'Lime Pickle', '100.0000', '100.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('39', '14', '86', '', 'Almond Drink Can', '100.0000', '100.0000', '0.0000', '4');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('40', '14', '92', '', 'Lime Pickle', '100.0000', '100.0000', '0.0000', '3');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('41', '15', '95', '', 'Masala Papad', '100.0000', '100.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('42', '16', '95', '', 'Masala Papad', '100.0000', '100.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('43', '16', '48', '', 'Alu Methi', '100.0000', '100.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('44', '17', '92', '', 'Lime Pickle', '100.0000', '100.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('45', '17', '50', '', 'Bhindi Masala', '100.0000', '100.0000', '0.0000', '7');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('46', '17', '93', '', 'Tomato Pickle', '100.0000', '100.0000', '0.0000', '2');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('47', '17', '79', '', 'Dhaniya Powder', '100.0000', '200.0000', '0.0000', '7');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('48', '17', '65', '', 'Spicy Tomato Soup', '100.0000', '100.0000', '0.0000', '4');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('49', '17', '88', '', 'vermicelli', '100.0000', '100.0000', '0.0000', '4');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('50', '18', '46', '', 'Choclate Drink Mix', '100.0000', '100.0000', '0.0000', '6');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('51', '18', '76', '', 'Chat Masala', '100.0000', '100.0000', '0.0000', '5');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('52', '18', '93', '', 'Tomato Pickle', '100.0000', '100.0000', '0.0000', '3');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('53', '18', '89', '', 'Roasted Vermicelli', '100.0000', '100.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('54', '19', '67', '', 'Hot \'n\' Sour Soup', '100.0000', '100.0000', '0.0000', '3');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('55', '19', '46', '', 'Choclate Drink Mix', '100.0000', '100.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('56', '19', '65', '', 'Spicy Tomato Soup', '100.0000', '100.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('57', '19', '60', '', 'Masala Rice', '100.0000', '100.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('58', '20', '76', '', 'Chat Masala', '100.0000', '100.0000', '0.0000', '3');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('59', '20', '68', '', 'Bisibelebath', '100.0000', '100.0000', '0.0000', '3');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('60', '20', '61', '', 'Rajma Chawal', '100.0000', '100.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('61', '21', '45', '', 'Sambar Mix', '100.0000', '100.0000', '0.0000', '3');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('62', '21', '94', '', 'Plain Papad', '100.0000', '100.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('63', '22', '87', '', 'Chocolate Drink Can', '100.0000', '100.0000', '0.0000', '5');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('64', '23', '48', '', 'Alu Methi', '100.0000', '100.0000', '0.0000', '3');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('65', '23', '88', '', 'vermicelli', '100.0000', '100.0000', '0.0000', '4');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('66', '23', '76', '', 'Chat Masala', '100.0000', '100.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('67', '24', '86', '', 'Almond Drink Can', '100.0000', '100.0000', '0.0000', '3');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('68', '24', '95', '', 'Masala Papad', '100.0000', '100.0000', '0.0000', '2');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('69', '24', '57', '', 'Jeera Rice', '100.0000', '100.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('70', '24', '61', '', 'Rajma Chawal', '100.0000', '100.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('71', '24', '79', '', 'Dhaniya Powder', '100.0000', '200.0000', '0.0000', '3');
drop table if exists orders_products_attributes;
create table orders_products_attributes (
  orders_products_attributes_id int(11) not null auto_increment,
  orders_id int(11) not null ,
  orders_products_id int(11) not null ,
  products_options varchar(32) not null ,
  products_options_values varchar(32) not null ,
  options_values_price decimal(15,4) not null ,
  price_prefix char(1) not null ,
  PRIMARY KEY (orders_products_attributes_id),
  KEY idx_orders_products_att_orders_id (orders_id)
);

insert into orders_products_attributes (orders_products_attributes_id, orders_id, orders_products_id, products_options, products_options_values, options_values_price, price_prefix) values ('1', '12', '34', 'Weight', '500g', '100.0000', '+');
insert into orders_products_attributes (orders_products_attributes_id, orders_id, orders_products_id, products_options, products_options_values, options_values_price, price_prefix) values ('2', '17', '47', 'Weight', '500g', '100.0000', '+');
insert into orders_products_attributes (orders_products_attributes_id, orders_id, orders_products_id, products_options, products_options_values, options_values_price, price_prefix) values ('3', '24', '71', 'Weight', '500g', '100.0000', '+');
drop table if exists orders_products_download;
create table orders_products_download (
  orders_products_download_id int(11) not null auto_increment,
  orders_id int(11) default '0' not null ,
  orders_products_id int(11) default '0' not null ,
  orders_products_filename varchar(255) not null ,
  download_maxdays int(2) default '0' not null ,
  download_count int(2) default '0' not null ,
  PRIMARY KEY (orders_products_download_id),
  KEY idx_orders_products_download_orders_id (orders_id)
);

drop table if exists orders_status;
create table orders_status (
  orders_status_id int(11) default '0' not null ,
  language_id int(11) default '1' not null ,
  orders_status_name varchar(32) not null ,
  public_flag int(11) default '1' ,
  downloads_flag int(11) default '0' ,
  PRIMARY KEY (orders_status_id, language_id),
  KEY idx_orders_status_name (orders_status_name)
);

insert into orders_status (orders_status_id, language_id, orders_status_name, public_flag, downloads_flag) values ('1', '1', 'Pending', '1', '0');
insert into orders_status (orders_status_id, language_id, orders_status_name, public_flag, downloads_flag) values ('2', '1', 'Processing', '1', '1');
insert into orders_status (orders_status_id, language_id, orders_status_name, public_flag, downloads_flag) values ('3', '1', 'Delivered', '1', '1');
insert into orders_status (orders_status_id, language_id, orders_status_name, public_flag, downloads_flag) values ('4', '1', 'Cancelled', '0', '0');
drop table if exists orders_status_history;
create table orders_status_history (
  orders_status_history_id int(11) not null auto_increment,
  orders_id int(11) not null ,
  orders_status_id int(5) not null ,
  date_added datetime not null ,
  customer_notified int(1) default '0' ,
  comments text ,
  PRIMARY KEY (orders_status_history_id),
  KEY idx_orders_status_history_orders_id (orders_id)
);

insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('12', '9', '1', '2020-04-08 19:09:33', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('13', '10', '1', '2020-04-08 22:55:51', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('14', '11', '1', '2020-04-09 00:39:08', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('15', '9', '0', '2020-04-09 01:16:54', '1', 'This order will not be processed, it has been cancelled. (Customer Action)');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('16', '9', '0', '2020-04-09 01:17:25', '1', 'This order will not be processed, it has been cancelled. (Customer Action)');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('17', '12', '1', '2020-04-09 01:35:31', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('18', '12', '4', '2020-04-09 01:50:50', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('19', '13', '1', '2020-04-09 02:22:01', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('20', '14', '1', '2020-04-09 02:23:42', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('21', '15', '1', '2020-04-09 02:24:12', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('22', '16', '1', '2020-04-09 02:36:30', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('23', '17', '1', '2020-04-09 02:52:30', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('24', '18', '1', '2020-04-09 02:55:02', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('25', '19', '1', '2020-04-09 03:01:55', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('26', '20', '1', '2020-04-09 03:05:19', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('27', '21', '1', '2020-04-09 03:07:43', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('28', '22', '1', '2020-04-09 03:08:37', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('29', '23', '1', '2020-04-09 03:10:34', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('30', '24', '1', '2020-04-09 03:13:31', '1', '');
drop table if exists orders_total;
create table orders_total (
  orders_total_id int(10) unsigned not null auto_increment,
  orders_id int(11) not null ,
  title varchar(255) not null ,
  text varchar(255) not null ,
  value decimal(15,4) not null ,
  class varchar(32) not null ,
  sort_order int(11) not null ,
  PRIMARY KEY (orders_total_id),
  KEY idx_orders_total_orders_id (orders_id)
);

insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('22', '9', 'Sub-Total:', 'Rs.400.00', '400.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('23', '9', 'Total:', '<strong>Rs.400.00</strong>', '400.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('24', '10', 'Sub-Total:', 'Rs.900.00', '900.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('25', '10', 'Store Pickup.<br> (Pickup of the order in our Shop in Address Line 1
Address Line 2
Country
Phone):', 'Rs.0.00', '0.0000', 'ot_shipping', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('26', '10', 'Total:', '<strong>Rs.900.00</strong>', '900.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('27', '11', 'Sub-Total:', 'Rs.400.00', '400.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('28', '11', 'Flat Rate ():', 'Rs.0.00', '0.0000', 'ot_shipping', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('29', '11', 'Total:', '<strong>Rs.400.00</strong>', '400.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('30', '12', 'Sub-Total:', 'Rs.1,000.00', '1000.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('31', '12', 'Store Pickup.<br> (Pickup of the order in our Shop in Store Demo
Vadodara
Gujrat
India
7992372914):', 'Rs.0.00', '0.0000', 'ot_shipping', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('32', '12', 'Total:', '<strong>Rs.1,000.00</strong>', '1000.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('33', '13', 'Sub-Total:', 'Rs.400.00', '400.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('34', '13', 'Store Pickup.<br> (Pickup of the order in our Shop in Store Demo
Vadodara
Gujrat
India
7992372914):', 'Rs.0.00', '0.0000', 'ot_shipping', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('35', '13', 'Total:', '<strong>Rs.400.00</strong>', '400.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('36', '14', 'Sub-Total:', 'Rs.700.00', '700.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('37', '14', 'Store Pickup.<br> (Pickup of the order in our Shop in Store Demo
Vadodara
Gujrat
India
7992372914):', 'Rs.0.00', '0.0000', 'ot_shipping', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('38', '14', 'Total:', '<strong>Rs.700.00</strong>', '700.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('39', '15', 'Sub-Total:', 'Rs.100.00', '100.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('40', '15', 'Flat Rate ():', 'Rs.0.00', '0.0000', 'ot_shipping', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('41', '15', 'Total:', '<strong>Rs.100.00</strong>', '100.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('42', '16', 'Sub-Total:', 'Rs.200.00', '200.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('43', '16', 'Flat Rate ():', 'Rs.0.00', '0.0000', 'ot_shipping', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('44', '16', 'Total:', '<strong>Rs.200.00</strong>', '200.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('45', '17', 'Sub-Total:', 'Rs.3,200.00', '3200.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('46', '17', 'Store Pickup.<br> (Pickup of the order in our Shop in Store Demo
Vadodara
Gujrat
India
7992372914):', 'Rs.0.00', '0.0000', 'ot_shipping', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('47', '17', 'Total:', '<strong>Rs.3,200.00</strong>', '3200.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('48', '18', 'Sub-Total:', 'Rs.1,500.00', '1500.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('49', '18', 'Flat Rate ():', 'Rs.0.00', '0.0000', 'ot_shipping', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('50', '18', 'Total:', '<strong>Rs.1,500.00</strong>', '1500.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('51', '19', 'Sub-Total:', 'Rs.600.00', '600.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('52', '19', 'Flat Rate ():', 'Rs.0.00', '0.0000', 'ot_shipping', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('53', '19', 'Total:', '<strong>Rs.600.00</strong>', '600.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('54', '20', 'Sub-Total:', 'Rs.700.00', '700.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('55', '20', 'Flat Rate ():', 'Rs.0.00', '0.0000', 'ot_shipping', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('56', '20', 'Total:', '<strong>Rs.700.00</strong>', '700.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('57', '21', 'Sub-Total:', 'Rs.400.00', '400.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('58', '21', 'Flat Rate ():', 'Rs.0.00', '0.0000', 'ot_shipping', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('59', '21', 'Total:', '<strong>Rs.400.00</strong>', '400.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('60', '22', 'Sub-Total:', 'Rs.500.00', '500.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('61', '22', 'Flat Rate ():', 'Rs.0.00', '0.0000', 'ot_shipping', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('62', '22', 'Total:', '<strong>Rs.500.00</strong>', '500.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('63', '23', 'Sub-Total:', 'Rs.800.00', '800.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('64', '23', 'Flat Rate ():', 'Rs.0.00', '0.0000', 'ot_shipping', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('65', '23', 'Total:', '<strong>Rs.800.00</strong>', '800.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('66', '24', 'Sub-Total:', 'Rs.1,300.00', '1300.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('67', '24', 'Flat Rate ():', 'Rs.0.00', '0.0000', 'ot_shipping', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('68', '24', 'Total:', '<strong>Rs.1,300.00</strong>', '1300.0000', 'ot_total', '4');
drop table if exists oscom_app_paypal_log;
create table oscom_app_paypal_log (
  id int(10) unsigned not null auto_increment,
  customers_id int(11) not null ,
  module varchar(8) not null ,
  action varchar(255) not null ,
  result tinyint(4) not null ,
  server tinyint(4) not null ,
  request text not null ,
  response text not null ,
  ip_address int(10) unsigned ,
  date_added datetime ,
  PRIMARY KEY (id),
  KEY idx_oapl_module (module)
);

drop table if exists products;
create table products (
  products_id int(11) not null auto_increment,
  products_quantity int(4) not null ,
  products_model varchar(64) ,
  products_image varchar(64) ,
  products_price decimal(15,4) not null ,
  products_date_added datetime not null ,
  products_last_modified datetime ,
  products_date_available datetime ,
  products_weight decimal(5,2) not null ,
  products_status tinyint(1) not null ,
  products_tax_class_id int(11) not null ,
  manufacturers_id int(11) ,
  products_ordered int(11) default '0' not null ,
  products_gtin char(14) ,
  PRIMARY KEY (products_id),
  KEY idx_products_model (products_model),
  KEY idx_products_date_added (products_date_added)
);

insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('32', '100', '', NULL, '100.0000', '2020-04-06 21:08:00', '2020-04-06 22:26:12', NULL, '200.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('33', '400', '', NULL, '100.0000', '2020-04-06 21:10:01', '2020-04-06 22:25:23', NULL, '200.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('34', '400', '', NULL, '100.0000', '2020-04-06 21:10:57', '2020-04-06 22:25:48', NULL, '200.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('36', '200', '', NULL, '100.0000', '2020-04-06 21:16:06', '2020-04-06 22:25:59', NULL, '0.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('37', '200', '', NULL, '100.0000', '2020-04-06 21:17:40', '2020-04-06 22:25:36', NULL, '0.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('38', '400', '', NULL, '100.0000', '2020-04-06 21:22:12', '2020-04-06 21:22:27', NULL, '200.00', '1', '0', '0', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('39', '400', '', NULL, '100.0000', '2020-04-06 21:23:26', NULL, NULL, '200.00', '1', '0', '0', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('40', '9999', '', NULL, '100.0000', '2020-04-06 22:32:37', NULL, NULL, '100.00', '1', '0', '0', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('41', '9999', '', NULL, '0.0000', '2020-04-06 22:33:46', NULL, NULL, '200.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('42', '9999', '', NULL, '100.0000', '2020-04-06 22:34:41', NULL, NULL, '200.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('43', '9999', '', NULL, '100.0000', '2020-04-06 22:35:46', NULL, NULL, '20.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('44', '9999', '', NULL, '100.0000', '2020-04-06 22:40:22', NULL, NULL, '200.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('45', '9995', '', NULL, '100.0000', '2020-04-06 22:41:06', NULL, NULL, '200.00', '1', '0', '0', '4', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('46', '9992', '', NULL, '100.0000', '2020-04-06 22:47:30', NULL, NULL, '200.00', '1', '0', '11', '7', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('47', '9999', '', NULL, '100.0000', '2020-04-06 22:48:07', NULL, NULL, '200.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('48', '9994', '', NULL, '100.0000', '2020-04-06 22:56:26', '2020-04-06 22:57:15', NULL, '300.00', '1', '0', '11', '5', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('49', '9998', '', NULL, '100.0000', '2020-04-06 22:59:09', NULL, NULL, '300.00', '1', '0', '11', '1', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('50', '9992', '', NULL, '100.0000', '2020-04-06 23:01:12', NULL, NULL, '300.00', '1', '0', '11', '7', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('53', '9999', '', NULL, '100.0000', '2020-04-06 23:07:54', NULL, NULL, '300.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('54', '9999', '', NULL, '100.0000', '2020-04-06 23:09:52', NULL, NULL, '300.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('55', '9999', '', NULL, '100.0000', '2020-04-06 23:11:06', NULL, NULL, '300.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('56', '9999', '', NULL, '100.0000', '2020-04-06 23:12:45', NULL, NULL, '300.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('57', '9996', '', NULL, '100.0000', '2020-04-06 23:17:53', NULL, NULL, '250.00', '1', '0', '11', '3', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('58', '9999', '', NULL, '100.0000', '2020-04-06 23:19:20', NULL, NULL, '250.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('59', '9999', '', NULL, '100.0000', '2020-04-06 23:20:31', NULL, NULL, '250.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('60', '9998', '', NULL, '100.0000', '2020-04-06 23:21:53', NULL, NULL, '250.00', '1', '0', '11', '1', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('61', '9997', '', NULL, '100.0000', '2020-04-06 23:23:08', NULL, NULL, '300.00', '1', '0', '11', '2', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('62', '9999', '', NULL, '100.0000', '2020-04-06 23:24:38', NULL, NULL, '250.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('63', '9999', '', NULL, '100.0000', '2020-04-06 23:27:32', NULL, NULL, '250.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('64', '9999', '', NULL, '100.0000', '2020-04-06 23:28:45', NULL, NULL, '250.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('65', '9994', '', NULL, '100.0000', '2020-04-06 23:29:42', NULL, NULL, '250.00', '1', '0', '11', '5', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('66', '0', '', NULL, '100.0000', '2020-04-06 23:30:50', NULL, NULL, '250.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('67', '9996', '', NULL, '100.0000', '2020-04-06 23:32:46', NULL, NULL, '250.00', '1', '0', '11', '3', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('68', '9996', '', NULL, '100.0000', '2020-04-06 23:35:31', NULL, NULL, '300.00', '1', '0', '11', '3', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('69', '9999', '', NULL, '100.0000', '2020-04-06 23:36:29', NULL, NULL, '300.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('70', '9999', '', NULL, '100.0000', '2020-04-06 23:37:14', NULL, NULL, '300.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('71', '9999', '', NULL, '100.0000', '2020-04-06 23:38:18', NULL, NULL, '300.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('72', '9999', '', NULL, '100.0000', '2020-04-06 23:39:37', NULL, NULL, '300.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('73', '9998', '', NULL, '100.0000', '2020-04-06 23:43:10', NULL, NULL, '200.00', '1', '0', '11', '1', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('74', '9999', '', NULL, '100.0000', '2020-04-06 23:47:41', NULL, NULL, '200.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('75', '9999', '', NULL, '100.0000', '2020-04-06 23:48:53', NULL, NULL, '100.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('76', '9988', '', NULL, '100.0000', '2020-04-06 23:50:11', NULL, NULL, '100.00', '1', '0', '11', '11', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('77', '9998', '', NULL, '100.0000', '2020-04-06 23:50:59', NULL, NULL, '100.00', '1', '0', '11', '1', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('78', '9999', '', NULL, '100.0000', '2020-04-06 23:52:36', '2020-04-06 23:56:13', NULL, '200.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('79', '9988', '', NULL, '100.0000', '2020-04-06 23:54:48', '2020-04-06 23:55:58', NULL, '200.00', '1', '0', '11', '11', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('80', '9999', '', NULL, '100.0000', '2020-04-06 23:55:34', NULL, NULL, '200.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('81', '9999', '', NULL, '100.0000', '2020-04-06 23:57:12', NULL, NULL, '200.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('82', '9999', '', NULL, '100.0000', '2020-04-06 23:59:29', NULL, NULL, '200.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('83', '9999', '', NULL, '100.0000', '2020-04-07 00:00:19', NULL, NULL, '200.00', '1', '0', '0', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('84', '9999', '', NULL, '100.0000', '2020-04-07 00:01:07', NULL, NULL, '200.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('85', '9999', '', NULL, '100.0000', '2020-04-07 00:03:03', NULL, NULL, '200.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('86', '9983', '', NULL, '100.0000', '2020-04-07 00:14:12', NULL, NULL, '180.00', '1', '0', '11', '16', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('87', '9993', '', NULL, '100.0000', '2020-04-07 00:15:48', NULL, NULL, '180.00', '1', '0', '11', '6', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('88', '9991', '', NULL, '100.0000', '2020-04-07 00:18:17', NULL, NULL, '175.00', '1', '0', '11', '8', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('89', '9998', '', NULL, '100.0000', '2020-04-07 00:23:39', NULL, NULL, '180.00', '1', '0', '11', '1', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('90', '9999', '', NULL, '100.0000', '2020-04-07 00:24:55', NULL, NULL, '200.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('91', '9999', '', NULL, '100.0000', '2020-04-07 00:27:52', NULL, NULL, '300.00', '1', '0', '11', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('92', '9994', '', NULL, '100.0000', '2020-04-07 00:28:46', NULL, NULL, '300.00', '1', '0', '11', '5', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('93', '9986', '', NULL, '100.0000', '2020-04-07 00:29:34', NULL, NULL, '300.00', '1', '0', '11', '13', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('94', '9997', '', NULL, '100.0000', '2020-04-07 00:30:28', NULL, NULL, '140.00', '1', '0', '11', '2', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_gtin) values ('95', '9995', '', NULL, '100.0000', '2020-04-07 00:31:25', NULL, NULL, '140.00', '1', '0', '11', '4', NULL);
drop table if exists products_attributes;
create table products_attributes (
  products_attributes_id int(11) not null auto_increment,
  products_id int(11) not null ,
  options_id int(11) not null ,
  options_values_id int(11) not null ,
  options_values_price decimal(15,4) not null ,
  price_prefix char(1) not null ,
  PRIMARY KEY (products_attributes_id),
  KEY idx_products_attributes_products_id (products_id)
);

insert into products_attributes (products_attributes_id, products_id, options_id, options_values_id, options_values_price, price_prefix) values ('1', '79', '6', '15', '100.0000', '+');
drop table if exists products_attributes_download;
create table products_attributes_download (
  products_attributes_id int(11) not null ,
  products_attributes_filename varchar(255) not null ,
  products_attributes_maxdays int(2) default '0' ,
  products_attributes_maxcount int(2) default '0' ,
  PRIMARY KEY (products_attributes_id)
);

insert into products_attributes_download (products_attributes_id, products_attributes_filename, products_attributes_maxdays, products_attributes_maxcount) values ('26', 'unreal.zip', '7', '3');
drop table if exists products_description;
create table products_description (
  products_id int(11) not null auto_increment,
  language_id int(11) default '1' not null ,
  products_name varchar(64) not null ,
  products_description text ,
  products_url varchar(255) ,
  products_viewed int(5) default '0' ,
  products_seo_description text ,
  products_seo_keywords varchar(128) ,
  products_seo_title varchar(128) ,
  PRIMARY KEY (products_id, language_id),
  KEY products_name (products_name)
);

insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('32', '1', 'Rice Idli Mix (200g)', '200g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('33', '1', 'Dosa Mix(200g)', '200g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('34', '1', 'Rava Dosa Mix(200g)', '200g', '', '2', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('36', '1', 'Rava Idli Mix(200g)', '200g', '', '1', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('37', '1', 'Plain Upma Mix(200g)', '200g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('38', '1', 'Gulab Jamun Mix(200g)', '200g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('39', '1', 'Jalebi Mix(200g)', '200g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('40', '1', 'Dhokla Mix', '200g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('41', '1', 'Khaman Dhokla Mix', '200g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('42', '1', 'Muruku Mix', '200g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('43', '1', 'Bajji & Bonda Mix', '200g', '', '4', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('44', '1', 'Rasam Mix', '200g', '', '0', '200g', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('45', '1', 'Sambar Mix', '200g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('46', '1', 'Choclate Drink Mix', '200g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('47', '1', 'Badam Drink Mix', '200g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('48', '1', 'Alu Methi', '300g', '', '1', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('49', '1', 'Alu Mutter', '300g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('50', '1', 'Bhindi Masala', '300g', '', '1', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('53', '1', 'Chana Masala', '300g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('54', '1', 'Dal Fry', '300g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('55', '1', 'Dal Makhani', '300g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('56', '1', 'Mutter Paneer', '300g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('57', '1', 'Jeera Rice', '250g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('58', '1', 'Tomato Rice', '250g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('59', '1', 'Lemon Rice', '250g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('60', '1', 'Masala Rice', '250g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('61', '1', 'Rajma Chawal', '300g', '', '1', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('62', '1', 'Vegetable Pulao', '250g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('63', '1', 'Mixed Vegetable Soup', '250g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('64', '1', 'Simply Tomato Soup', '250g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('65', '1', 'Spicy Tomato Soup', '250g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('66', '1', 'Spinach Carrot Soup', '250g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('67', '1', 'Hot \'n\' Sour Soup', '250g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('68', '1', 'Bisibelebath', '300g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('69', '1', 'Kesaribath', '300g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('70', '1', 'Sambar', '300g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('71', '1', 'Kadhi Pakora', '300g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('72', '1', 'Pav Bhaji', '300g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('73', '1', 'Sambar Powder', '200g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('74', '1', 'Rasam Powder', '200g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('75', '1', 'Madras Rasam Powder', '100g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('76', '1', 'Chat Masala', '100g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('77', '1', 'Garam Masala', '100g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('78', '1', 'Chilli Powder', '200g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('79', '1', 'Dhaniya Powder', '200g', '', '7', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('80', '1', 'Jeera Powder', '200g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('81', '1', 'Pepper Powder', '200g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('82', '1', 'Sambar Paste', '200g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('83', '1', 'Rasam Paste', '200g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('84', '1', 'Bisibelebath Paste', '200g', '', '6', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('85', '1', 'Puliyogare Paste', '200g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('86', '1', 'Almond Drink Can', '180ml', '', '1', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('87', '1', 'Chocolate Drink Can', '180ml', '', '2', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('88', '1', 'vermicelli', '175g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('89', '1', 'Roasted Vermicelli', '180g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('90', '1', 'Rice Sevai', '200g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('91', '1', 'Mango Sliced Pickle', '300g', '', '1', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('92', '1', 'Lime Pickle', '300g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('93', '1', 'Tomato Pickle', '300g', '', '0', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('94', '1', 'Plain Papad', '140g', '', '1', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_seo_description, products_seo_keywords, products_seo_title) values ('95', '1', 'Masala Papad', '140g', '', '0', '', '', '');
drop table if exists products_images;
create table products_images (
  id int(11) not null auto_increment,
  products_id int(11) not null ,
  image varchar(64) ,
  htmlcontent text ,
  sort_order int(11) not null ,
  PRIMARY KEY (id),
  KEY products_images_prodid (products_id)
);

drop table if exists products_notifications;
create table products_notifications (
  products_id int(11) not null ,
  customers_id int(11) not null ,
  date_added datetime not null ,
  PRIMARY KEY (products_id, customers_id)
);

drop table if exists products_options;
create table products_options (
  products_options_id int(11) default '0' not null ,
  language_id int(11) default '1' not null ,
  products_options_name varchar(32) not null ,
  PRIMARY KEY (products_options_id, language_id)
);

insert into products_options (products_options_id, language_id, products_options_name) values ('6', '1', 'Weight');
drop table if exists products_options_values;
create table products_options_values (
  products_options_values_id int(11) default '0' not null ,
  language_id int(11) default '1' not null ,
  products_options_values_name varchar(64) not null ,
  PRIMARY KEY (products_options_values_id, language_id)
);

insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('14', '1', '200g');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('15', '1', '500g');
drop table if exists products_options_values_to_products_options;
create table products_options_values_to_products_options (
  products_options_values_to_products_options_id int(11) not null auto_increment,
  products_options_id int(11) not null ,
  products_options_values_id int(11) not null ,
  PRIMARY KEY (products_options_values_to_products_options_id)
);

insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('14', '6', '14');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('15', '6', '15');
drop table if exists products_to_categories;
create table products_to_categories (
  products_id int(11) not null ,
  categories_id int(11) not null ,
  PRIMARY KEY (products_id, categories_id)
);

insert into products_to_categories (products_id, categories_id) values ('32', '25');
insert into products_to_categories (products_id, categories_id) values ('33', '25');
insert into products_to_categories (products_id, categories_id) values ('34', '25');
insert into products_to_categories (products_id, categories_id) values ('36', '25');
insert into products_to_categories (products_id, categories_id) values ('37', '25');
insert into products_to_categories (products_id, categories_id) values ('38', '26');
insert into products_to_categories (products_id, categories_id) values ('39', '26');
insert into products_to_categories (products_id, categories_id) values ('40', '27');
insert into products_to_categories (products_id, categories_id) values ('41', '27');
insert into products_to_categories (products_id, categories_id) values ('42', '27');
insert into products_to_categories (products_id, categories_id) values ('43', '27');
insert into products_to_categories (products_id, categories_id) values ('44', '28');
insert into products_to_categories (products_id, categories_id) values ('45', '28');
insert into products_to_categories (products_id, categories_id) values ('46', '29');
insert into products_to_categories (products_id, categories_id) values ('47', '29');
insert into products_to_categories (products_id, categories_id) values ('48', '30');
insert into products_to_categories (products_id, categories_id) values ('49', '30');
insert into products_to_categories (products_id, categories_id) values ('50', '30');
insert into products_to_categories (products_id, categories_id) values ('53', '30');
insert into products_to_categories (products_id, categories_id) values ('54', '30');
insert into products_to_categories (products_id, categories_id) values ('55', '30');
insert into products_to_categories (products_id, categories_id) values ('56', '30');
insert into products_to_categories (products_id, categories_id) values ('57', '31');
insert into products_to_categories (products_id, categories_id) values ('58', '31');
insert into products_to_categories (products_id, categories_id) values ('59', '31');
insert into products_to_categories (products_id, categories_id) values ('60', '31');
insert into products_to_categories (products_id, categories_id) values ('61', '31');
insert into products_to_categories (products_id, categories_id) values ('62', '31');
insert into products_to_categories (products_id, categories_id) values ('63', '32');
insert into products_to_categories (products_id, categories_id) values ('64', '32');
insert into products_to_categories (products_id, categories_id) values ('65', '32');
insert into products_to_categories (products_id, categories_id) values ('66', '32');
insert into products_to_categories (products_id, categories_id) values ('67', '32');
insert into products_to_categories (products_id, categories_id) values ('68', '33');
insert into products_to_categories (products_id, categories_id) values ('69', '33');
insert into products_to_categories (products_id, categories_id) values ('70', '33');
insert into products_to_categories (products_id, categories_id) values ('71', '33');
insert into products_to_categories (products_id, categories_id) values ('72', '33');
insert into products_to_categories (products_id, categories_id) values ('73', '34');
insert into products_to_categories (products_id, categories_id) values ('74', '34');
insert into products_to_categories (products_id, categories_id) values ('75', '34');
insert into products_to_categories (products_id, categories_id) values ('76', '34');
insert into products_to_categories (products_id, categories_id) values ('77', '34');
insert into products_to_categories (products_id, categories_id) values ('78', '35');
insert into products_to_categories (products_id, categories_id) values ('79', '35');
insert into products_to_categories (products_id, categories_id) values ('80', '35');
insert into products_to_categories (products_id, categories_id) values ('81', '35');
insert into products_to_categories (products_id, categories_id) values ('82', '36');
insert into products_to_categories (products_id, categories_id) values ('83', '36');
insert into products_to_categories (products_id, categories_id) values ('84', '36');
insert into products_to_categories (products_id, categories_id) values ('85', '36');
insert into products_to_categories (products_id, categories_id) values ('86', '37');
insert into products_to_categories (products_id, categories_id) values ('87', '37');
insert into products_to_categories (products_id, categories_id) values ('88', '38');
insert into products_to_categories (products_id, categories_id) values ('89', '38');
insert into products_to_categories (products_id, categories_id) values ('90', '38');
insert into products_to_categories (products_id, categories_id) values ('91', '39');
insert into products_to_categories (products_id, categories_id) values ('92', '39');
insert into products_to_categories (products_id, categories_id) values ('93', '39');
insert into products_to_categories (products_id, categories_id) values ('94', '39');
insert into products_to_categories (products_id, categories_id) values ('95', '39');
drop table if exists reviews;
create table reviews (
  reviews_id int(11) not null auto_increment,
  products_id int(11) not null ,
  customers_id int(11) ,
  customers_name varchar(255) not null ,
  reviews_rating int(1) ,
  date_added datetime ,
  last_modified datetime ,
  reviews_status tinyint(1) default '0' not null ,
  reviews_read int(5) default '0' not null ,
  PRIMARY KEY (reviews_id),
  KEY idx_reviews_products_id (products_id),
  KEY idx_reviews_customers_id (customers_id)
);

insert into reviews (reviews_id, products_id, customers_id, customers_name, reviews_rating, date_added, last_modified, reviews_status, reviews_read) values ('1', '84', '1', 'Pranav Singh', '4', '2020-04-07 15:12:48', '2020-04-07 15:14:31', '1', '0');
drop table if exists reviews_description;
create table reviews_description (
  reviews_id int(11) not null ,
  languages_id int(11) not null ,
  reviews_text text not null ,
  PRIMARY KEY (reviews_id, languages_id)
);

insert into reviews_description (reviews_id, languages_id, reviews_text) values ('1', '1', 'The product was fresh whe delievered.
I will be ordering few more items from this store soon.');
drop table if exists sec_directory_whitelist;
create table sec_directory_whitelist (
  id int(11) not null auto_increment,
  directory varchar(255) not null ,
  PRIMARY KEY (id)
);

insert into sec_directory_whitelist (id, directory) values ('1', 'admin/backups');
insert into sec_directory_whitelist (id, directory) values ('2', 'admin/images/graphs');
insert into sec_directory_whitelist (id, directory) values ('3', 'images');
insert into sec_directory_whitelist (id, directory) values ('4', 'images/banners');
insert into sec_directory_whitelist (id, directory) values ('5', 'images/dvd');
insert into sec_directory_whitelist (id, directory) values ('6', 'images/gt_interactive');
insert into sec_directory_whitelist (id, directory) values ('7', 'images/hewlett_packard');
insert into sec_directory_whitelist (id, directory) values ('8', 'images/matrox');
insert into sec_directory_whitelist (id, directory) values ('9', 'images/microsoft');
insert into sec_directory_whitelist (id, directory) values ('10', 'images/samsung');
insert into sec_directory_whitelist (id, directory) values ('11', 'images/sierra');
insert into sec_directory_whitelist (id, directory) values ('12', 'includes/work');
insert into sec_directory_whitelist (id, directory) values ('13', 'pub');
drop table if exists sessions;
create table sessions (
  sesskey varchar(128) not null ,
  expiry int(11) unsigned not null ,
  value text not null ,
  PRIMARY KEY (sesskey)
);

drop table if exists specials;
create table specials (
  specials_id int(11) not null auto_increment,
  products_id int(11) not null ,
  specials_new_products_price decimal(15,4) not null ,
  specials_date_added datetime ,
  specials_last_modified datetime ,
  expires_date datetime ,
  date_status_change datetime ,
  status int(1) default '1' not null ,
  PRIMARY KEY (specials_id),
  KEY idx_specials_products_id (products_id)
);

insert into specials (specials_id, products_id, specials_new_products_price, specials_date_added, specials_last_modified, expires_date, date_status_change, status) values ('1', '47', '80.0000', '2020-04-07 01:06:01', '2020-04-07 01:06:34', NULL, NULL, '1');
drop table if exists stores;
create table stores (
  stores_id int(11) not null auto_increment,
  stores_title varchar(255) not null ,
  address_book_id int(11) default '0' not null ,
  main smallint(1) default '0' not null ,
  PRIMARY KEY (stores_id)
);

insert into stores (stores_id, stores_title, address_book_id, main) values ('1', 'ABC STORE', '1', '0');
drop table if exists tax_class;
create table tax_class (
  tax_class_id int(11) not null auto_increment,
  tax_class_title varchar(32) not null ,
  tax_class_description varchar(255) not null ,
  last_modified datetime ,
  date_added datetime not null ,
  PRIMARY KEY (tax_class_id)
);

insert into tax_class (tax_class_id, tax_class_title, tax_class_description, last_modified, date_added) values ('1', 'Taxable Goods', 'The following types of products are included non-food, services, etc', '2020-04-06 13:12:18', '2020-04-06 13:12:18');
drop table if exists tax_rates;
create table tax_rates (
  tax_rates_id int(11) not null auto_increment,
  tax_zone_id int(11) not null ,
  tax_class_id int(11) not null ,
  tax_priority int(5) default '1' ,
  tax_rate decimal(7,4) not null ,
  tax_description varchar(255) not null ,
  last_modified datetime ,
  date_added datetime not null ,
  PRIMARY KEY (tax_rates_id)
);

insert into tax_rates (tax_rates_id, tax_zone_id, tax_class_id, tax_priority, tax_rate, tax_description, last_modified, date_added) values ('1', '1', '1', '1', '7.0000', 'FL TAX 7.0%', '2020-04-06 13:12:18', '2020-04-06 13:12:18');
drop table if exists testimonials;
create table testimonials (
  testimonials_id int(11) not null auto_increment,
  customers_name varchar(255) not null ,
  date_added datetime ,
  last_modified datetime ,
  testimonials_status tinyint(1) default '1' not null ,
  PRIMARY KEY (testimonials_id)
);

drop table if exists testimonials_description;
create table testimonials_description (
  testimonials_id int(11) not null ,
  languages_id int(11) not null ,
  testimonials_text text not null ,
  PRIMARY KEY (testimonials_id, languages_id)
);

drop table if exists whos_online;
create table whos_online (
  customer_id int(11) ,
  full_name varchar(255) not null ,
  session_id varchar(128) not null ,
  ip_address varchar(15) not null ,
  time_entry varchar(14) not null ,
  time_last_click varchar(14) not null ,
  last_page_url text not null ,
  KEY idx_whos_online_session_id (session_id)
);

drop table if exists zones;
create table zones (
  zone_id int(11) not null auto_increment,
  zone_country_id int(11) not null ,
  zone_code varchar(32) not null ,
  zone_name varchar(255) not null ,
  PRIMARY KEY (zone_id),
  KEY idx_zones_country_id (zone_country_id)
);

insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('1', '223', 'AL', 'Alabama');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('2', '223', 'AK', 'Alaska');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('3', '223', 'AS', 'American Samoa');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('4', '223', 'AZ', 'Arizona');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('5', '223', 'AR', 'Arkansas');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('6', '223', 'AF', 'Armed Forces Africa');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('7', '223', 'AA', 'Armed Forces Americas');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('8', '223', 'AC', 'Armed Forces Canada');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('9', '223', 'AE', 'Armed Forces Europe');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('10', '223', 'AM', 'Armed Forces Middle East');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('11', '223', 'AP', 'Armed Forces Pacific');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('12', '223', 'CA', 'California');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('13', '223', 'CO', 'Colorado');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('14', '223', 'CT', 'Connecticut');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('15', '223', 'DE', 'Delaware');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('16', '223', 'DC', 'District of Columbia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('17', '223', 'FM', 'Federated States Of Micronesia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('18', '223', 'FL', 'Florida');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('19', '223', 'GA', 'Georgia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('20', '223', 'GU', 'Guam');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('21', '223', 'HI', 'Hawaii');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('22', '223', 'ID', 'Idaho');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('23', '223', 'IL', 'Illinois');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('24', '223', 'IN', 'Indiana');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('25', '223', 'IA', 'Iowa');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('26', '223', 'KS', 'Kansas');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('27', '223', 'KY', 'Kentucky');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('28', '223', 'LA', 'Louisiana');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('29', '223', 'ME', 'Maine');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('30', '223', 'MH', 'Marshall Islands');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('31', '223', 'MD', 'Maryland');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('32', '223', 'MA', 'Massachusetts');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('33', '223', 'MI', 'Michigan');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('34', '223', 'MN', 'Minnesota');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('35', '223', 'MS', 'Mississippi');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('36', '223', 'MO', 'Missouri');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('37', '223', 'MT', 'Montana');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('38', '223', 'NE', 'Nebraska');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('39', '223', 'NV', 'Nevada');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('40', '223', 'NH', 'New Hampshire');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('41', '223', 'NJ', 'New Jersey');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('42', '223', 'NM', 'New Mexico');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('43', '223', 'NY', 'New York');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('44', '223', 'NC', 'North Carolina');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('45', '223', 'ND', 'North Dakota');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('46', '223', 'MP', 'Northern Mariana Islands');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('47', '223', 'OH', 'Ohio');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('48', '223', 'OK', 'Oklahoma');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('49', '223', 'OR', 'Oregon');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('50', '223', 'PW', 'Palau');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('51', '223', 'PA', 'Pennsylvania');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('52', '223', 'PR', 'Puerto Rico');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('53', '223', 'RI', 'Rhode Island');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('54', '223', 'SC', 'South Carolina');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('55', '223', 'SD', 'South Dakota');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('56', '223', 'TN', 'Tennessee');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('57', '223', 'TX', 'Texas');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('58', '223', 'UT', 'Utah');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('59', '223', 'VT', 'Vermont');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('60', '223', 'VI', 'Virgin Islands');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('61', '223', 'VA', 'Virginia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('62', '223', 'WA', 'Washington');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('63', '223', 'WV', 'West Virginia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('64', '223', 'WI', 'Wisconsin');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('65', '223', 'WY', 'Wyoming');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('66', '38', 'AB', 'Alberta');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('67', '38', 'BC', 'British Columbia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('68', '38', 'MB', 'Manitoba');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('69', '38', 'NF', 'Newfoundland');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('70', '38', 'NB', 'New Brunswick');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('71', '38', 'NS', 'Nova Scotia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('72', '38', 'NT', 'Northwest Territories');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('73', '38', 'NU', 'Nunavut');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('74', '38', 'ON', 'Ontario');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('75', '38', 'PE', 'Prince Edward Island');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('76', '38', 'QC', 'Quebec');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('77', '38', 'SK', 'Saskatchewan');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('78', '38', 'YT', 'Yukon Territory');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('79', '81', 'NDS', 'Niedersachsen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('80', '81', 'BAW', 'Baden-Württemberg');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('81', '81', 'BAY', 'Bayern');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('82', '81', 'BER', 'Berlin');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('83', '81', 'BRG', 'Brandenburg');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('84', '81', 'BRE', 'Bremen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('85', '81', 'HAM', 'Hamburg');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('86', '81', 'HES', 'Hessen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('87', '81', 'MEC', 'Mecklenburg-Vorpommern');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('88', '81', 'NRW', 'Nordrhein-Westfalen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('89', '81', 'RHE', 'Rheinland-Pfalz');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('90', '81', 'SAR', 'Saarland');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('91', '81', 'SAS', 'Sachsen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('92', '81', 'SAC', 'Sachsen-Anhalt');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('93', '81', 'SCN', 'Schleswig-Holstein');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('94', '81', 'THE', 'Thüringen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('95', '14', 'WI', 'Wien');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('96', '14', 'NO', 'Niederösterreich');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('97', '14', 'OO', 'Oberösterreich');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('98', '14', 'SB', 'Salzburg');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('99', '99', '02', 'chennai');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('100', '14', 'ST', 'Steiermark');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('101', '14', 'TI', 'Tirol');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('102', '99', 'BL', '');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('103', '14', 'VB', 'Voralberg');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('104', '204', 'AG', 'Aargau');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('105', '204', 'AI', 'Appenzell Innerrhoden');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('106', '204', 'AR', 'Appenzell Ausserrhoden');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('107', '204', 'BE', 'Bern');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('108', '204', 'BL', 'Basel-Landschaft');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('109', '204', 'BS', 'Basel-Stadt');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('110', '204', 'FR', 'Freiburg');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('111', '204', 'GE', 'Genf');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('112', '204', 'GL', 'Glarus');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('113', '204', 'JU', 'Graubünden');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('114', '204', 'JU', 'Jura');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('115', '204', 'LU', 'Luzern');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('116', '204', 'NE', 'Neuenburg');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('117', '204', 'NW', 'Nidwalden');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('118', '204', 'OW', 'Obwalden');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('119', '204', 'SG', 'St. Gallen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('120', '204', 'SH', 'Schaffhausen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('121', '204', 'SO', 'Solothurn');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('122', '204', 'SZ', 'Schwyz');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('123', '204', 'TG', 'Thurgau');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('124', '204', 'TI', 'Tessin');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('125', '204', 'UR', 'Uri');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('126', '204', 'VD', 'Waadt');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('127', '204', 'VS', 'Wallis');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('128', '204', 'ZG', 'Zug');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('129', '204', 'ZH', 'Zürich');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('130', '195', 'A Coruña', 'A Coruña');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('131', '195', 'Alava', 'Alava');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('132', '195', 'Albacete', 'Albacete');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('133', '195', 'Alicante', 'Alicante');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('134', '195', 'Almeria', 'Almeria');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('135', '195', 'Asturias', 'Asturias');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('136', '195', 'Avila', 'Avila');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('137', '195', 'Badajoz', 'Badajoz');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('138', '195', 'Baleares', 'Baleares');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('139', '195', 'Barcelona', 'Barcelona');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('140', '195', 'Burgos', 'Burgos');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('141', '195', 'Caceres', 'Caceres');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('142', '195', 'Cadiz', 'Cadiz');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('143', '195', 'Cantabria', 'Cantabria');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('144', '195', 'Castellon', 'Castellon');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('145', '195', 'Ceuta', 'Ceuta');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('146', '195', 'Ciudad Real', 'Ciudad Real');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('147', '195', 'Cordoba', 'Cordoba');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('148', '195', 'Cuenca', 'Cuenca');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('149', '195', 'Girona', 'Girona');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('150', '195', 'Granada', 'Granada');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('151', '195', 'Guadalajara', 'Guadalajara');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('152', '195', 'Guipuzcoa', 'Guipuzcoa');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('153', '195', 'Huelva', 'Huelva');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('154', '195', 'Huesca', 'Huesca');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('155', '195', 'Jaen', 'Jaen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('156', '195', 'La Rioja', 'La Rioja');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('157', '195', 'Las Palmas', 'Las Palmas');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('158', '195', 'Leon', 'Leon');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('159', '195', 'Lleida', 'Lleida');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('160', '195', 'Lugo', 'Lugo');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('161', '195', 'Madrid', 'Madrid');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('162', '195', 'Malaga', 'Malaga');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('163', '195', 'Melilla', 'Melilla');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('164', '195', 'Murcia', 'Murcia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('165', '195', 'Navarra', 'Navarra');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('166', '195', 'Ourense', 'Ourense');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('167', '195', 'Palencia', 'Palencia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('168', '195', 'Pontevedra', 'Pontevedra');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('169', '195', 'Salamanca', 'Salamanca');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('170', '195', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('171', '195', 'Segovia', 'Segovia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('172', '195', 'Sevilla', 'Sevilla');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('173', '195', 'Soria', 'Soria');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('174', '195', 'Tarragona', 'Tarragona');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('175', '195', 'Teruel', 'Teruel');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('176', '195', 'Toledo', 'Toledo');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('177', '195', 'Valencia', 'Valencia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('178', '195', 'Valladolid', 'Valladolid');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('179', '195', 'Vizcaya', 'Vizcaya');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('180', '195', 'Zamora', 'Zamora');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('181', '195', 'Zaragoza', 'Zaragoza');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('182', '99', '01', 'vadodara');
drop table if exists zones_to_geo_zones;
create table zones_to_geo_zones (
  association_id int(11) not null auto_increment,
  zone_country_id int(11) not null ,
  zone_id int(11) ,
  geo_zone_id int(11) ,
  last_modified datetime ,
  date_added datetime not null ,
  PRIMARY KEY (association_id),
  KEY idx_zones_to_geo_zones_country_id (zone_country_id)
);

insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('1', '99', '182', '1', '2020-04-09 01:44:49', '2020-04-06 13:12:18');
