<?php
require('includes/application_top.php');
ini_set("auto_detect_line_endings", true);

// Settings
// Configuration file
define('CSV_IMPORT_FOLDER', 'csv_import/');
define('CSV_IMPORT_INI_FILE', CSV_IMPORT_FOLDER . 'csv_import.ini');
$config = parse_ini_file(CSV_IMPORT_INI_FILE, true);

define("CORRECT_FIELDS_COUNT", (isset($config["settings"]["correct_fields_count"]) && $config["settings"]["correct_fields_count"] == 1));

// upload folder, must have write permissions
define('CSV_IMPORT_UPLOAD_FOLDER', CSV_IMPORT_FOLDER . $config["settings"]["csv_upload_folder"] . '/');
define('CSV_IMPORT_PHP_FILE', 'csv_import.php');
define('CSV_DEBUG', (isset($config["settings"]["debug"]) && $config["settings"]["debug"]));

//register globals emulation
if(!intval(ini_get('register_globals')) || !isset($action)) {
  foreach($HTTP_GET_VARS as $k => $v) {
    if(!isset($$k)) {
      $$k = $v;
    }
  }

  foreach($HTTP_POST_VARS as $k => $v) {
    if(!isset($$k)) {
      $$k = $v;
    }
  }
}

if(!isset($action)) {
  $action = '';
}

require(CSV_IMPORT_FOLDER . 'functions.php');

// actions
switch($action) {
  case 'config':
    define('CSV_IMPORT_INI_COMMENTS_FILE', CSV_IMPORT_FOLDER . 'csv_import.comments.ini');
    $comments = parse_ini_file(CSV_IMPORT_INI_COMMENTS_FILE, true);
  break;

  case 'config_save':
    if($h = fopen(CSV_IMPORT_INI_FILE . '.tmp', 'wb')) {
      foreach($_POST['config'] as $section => $values) {
        fwrite($h, "\n\n[$section]\n");
        foreach($values as $key => $value) {
          fwrite($h, "\n$key = \"" . str_replace('"', "", trim(stripslashes($value))) . "\"");
        }
      }

      copy(CSV_IMPORT_INI_FILE . '.tmp', CSV_IMPORT_INI_FILE);
      @unlink(CSV_IMPORT_INI_FILE . '.tmp');
      csv_import_message(CSV_ACTION_DONE, 'success');
      tep_redirect(CSV_IMPORT_PHP_FILE . '?action=config');
    }
  break;

  case 'delete':
    @unlink(CSV_IMPORT_UPLOAD_FOLDER.$file);
    tep_redirect(CSV_IMPORT_PHP_FILE);
  break;

  case 'upload':
    $file = new upload('csvfile', CSV_IMPORT_UPLOAD_FOLDER, '777', array('csv','txt'));
    tep_redirect(CSV_IMPORT_PHP_FILE);
  break;

  case 'empty':
    if((bool)$config['settings']['allow_empty_db']) {
      tep_db_query('TRUNCATE `' . TABLE_PRODUCTS . '`');
      tep_db_query('TRUNCATE `' . TABLE_PRODUCTS_ATTRIBUTES . '`');
      tep_db_query('TRUNCATE `' . TABLE_PRODUCTS_ATTRIBUTES_DOWNLOAD . '`');
      tep_db_query('TRUNCATE `' . TABLE_PRODUCTS_DESCRIPTION . '`');
      tep_db_query('TRUNCATE `' . TABLE_PRODUCTS_NOTIFICATIONS . '`');
      tep_db_query('TRUNCATE `' . TABLE_PRODUCTS_OPTIONS . '`');
      tep_db_query('TRUNCATE `' . TABLE_PRODUCTS_OPTIONS_VALUES . '`');
      tep_db_query('TRUNCATE `' . TABLE_PRODUCTS_OPTIONS_VALUES_TO_PRODUCTS_OPTIONS . '`');
      tep_db_query('TRUNCATE `' . TABLE_PRODUCTS_TO_CATEGORIES . '`');
      tep_db_query('TRUNCATE `' . TABLE_CATEGORIES . '`');
      tep_db_query('TRUNCATE `' . TABLE_CATEGORIES_DESCRIPTION . '`');
      tep_db_query('TRUNCATE `' . TABLE_REVIEWS . '`');
      tep_db_query('TRUNCATE `' . TABLE_REVIEWS_DESCRIPTION . '`');
      tep_db_query('TRUNCATE `' . TABLE_FEATURED . '`');
      tep_db_query('TRUNCATE `' . TABLE_MANUFACTURERS . '`');
      tep_db_query('TRUNCATE `' . TABLE_MANUFACTURERS_INFO . '`');
      tep_db_query('TRUNCATE `' . TABLE_SPECIALS . '`');

      csv_import_exit(CSV_ACTION_DONE, 'success');
    }
    else {
      tep_redirect(CSV_IMPORT_PHP_FILE);
    }
  break;

  case 'view':
    $file = CSV_IMPORT_UPLOAD_FOLDER . $file;
    if(file_exists($file)) {
      $size = filesize($file);
      header("Content-type: application/x-octet-stream");
      header("Content-Length: $size");
      header("Content-Disposition: attachment; filename=$file");
      readfile($file);
      exit();
    }
  break;

  case 'import':
    /* BINDINGS */
    $bindings = array();
    $bindings['products'] = $config["products"];
    $bindings['products_description'] = $config["products_description"];
    $bindings['categories'] = $config["categories"];
    $bindings['manufacturers'] = $config["manufacturers"];

    /* COLUMN HEADERS */
    $csv_headers_tmp = explode($config["csv"]["columns_headers_delimiter"], $config["csv"]["columns_headers"]);

    $csv_headers = array();
    foreach($csv_headers_tmp as $h) {
      $csv_headers[] = trim($h);
    }

    /* FIELDS COUNT */
    $csv_fields_count = count($csv_headers);

    /* LANGUAGES */
    $installed_languages = tep_db_query('SELECT languages_id, code FROM ' . TABLE_LANGUAGES);

    $languages_ids = array();
    while($l_row = tep_db_fetch_array($installed_languages)) {
      $languages_ids[$l_row['code']] = $l_row['languages_id'];
    }

    /* FILE CHECKING */
    $file = CSV_IMPORT_UPLOAD_FOLDER . basename($GLOBALS['file']);

    if(!is_file($file)) {
      csv_import_exit(sprintf(CSV_INVALID_FILE_ERROR, $file));
    }

    if(!is_readable($file)) {
      csv_import_exit(sprintf(CSV_FILE_READ_PERMISSIONS_ERROR, $file));
    }

    decode_bindings($bindings);

    /* CSV PREPROCESSING */
    require(CSV_IMPORT_FOLDER . 'data_parsing.php');

    $handle = fopen($file,"r");
    $csv = array();
    $row = 1;
    $delimiter = (empty($config["csv"]["delimiter"]) ? "\t":$config["csv"]["delimiter"]);
    $enclosure = (empty($config["csv"]["enclosure"]) ? '"':$config["csv"]["enclosure"]);

    while(($data = fgetcsv($handle, 10000, $delimiter, $enclosure)) !== false) {
      $row_fields_count = count($data);

      if($row == 1 && !$csv_fields_count) {
        $csv_fields_count = $row_fields_count;
      }
      elseif($row > 1 && $row_fields_count != $csv_fields_count) {
        echo CORRECT_FIELDS_COUNT;
        if(CORRECT_FIELDS_COUNT && abs($row_fields_count - $csv_fields_count) <= (int)$config['settings']['correct_fields_radius']) {
          $data = array_pad($data, $csv_fields_count, "");
        }
        else {
          csv_import_exit(sprintf(CSV_FIELDS_MATCH_ERROR,$row), 'error');
        }
      }

      if($row > 1) {
        parse_csv_data($data);
        $csv[] = $data;
      }

        $row++;
    }

    fclose($handle);

    csv_import($csv);
    csv_import_exit(CSV_IMPORT_DONE, 'success');
  break;
}

if(!is_dir(CSV_IMPORT_UPLOAD_FOLDER) || !is_readable(CSV_IMPORT_UPLOAD_FOLDER) || !is_writable(CSV_IMPORT_UPLOAD_FOLDER)) {
  $messageStack->add(sprintf(CSV_FOLDER_ERROR, CSV_IMPORT_UPLOAD_FOLDER));
}

if(preg_match('/^config/', $action) && !is_writable(CSV_IMPORT_INI_FILE)) {
  $messageStack->add(sprintf(CSV_INI_NOT_WRITABLE_ERROR, CSV_IMPORT_INI_FILE));
}

  require('includes/template_top.php');
?>

<style type="text/css">
  .section {padding: 10px; margin:10px 0; background: #fafafa}
  .section pre{font-size: 12px; font-family: verdana, arial, sans-serif; padding: 10px; margin: 0 }
  h2.sectionheader{padding: 5px 0; margin 5px 0; border-bottom:1px solid #ddd}
  a.button {
    font-weight:bold;
    text-align:center;
    padding:2px 5px;
    border:1px solid black;
    background-color:#555;
    text-decoration:none;
    color:#fff;
  }

  td.file_column {
    background:#fff;
    padding:5px;
  }
</style>

<table border="0" width="100%" cellspacing="2" cellpadding="2" class="ui-widget">

  <tr>
    <td>
      <div class="section" style="margin:0">
      <h2 class="ui-widget-header" style="margin:0; padding:10px; overflow:hidden"><?php echo HEADING_TITLE; ?><span style="float:right; font-size:11px; font-weight:100;">created by Eugenio Bonifacio (eugh@libero.it)</br>updated by <a href="http://multimixer.gr" target="_blank">multimixer</a></span></h2>
      </div>
    </td>
  </tr>

  <tr>
    <td width="100%" valign="top">
    <?php
    if($action != 'config') {
    ?>

      <div class="section">
      <?php echo tep_draw_button(CSV_CONFIGURATION, 'wrench', tep_href_link('csv_import.php', 'action=config'), 'primary'); ?>
      <?php
      if((bool)$config['settings']['allow_empty_db']) {
        echo tep_draw_button(CSV_EMPTY_CATALOG, 'trash', tep_href_link('csv_import.php', 'action=empty'), 'primary', array('params' => 'onClick="return confirm(\'' . CSV_CONFIRM_EMPTY . '\');"'));
      }
      ?>
      </div>

      <div class="section">
      <form name="csvimport" action="<?php echo CSV_IMPORT_PHP_FILE; ?>" method="post" enctype="multipart/form-data">
        <input type="hidden" name="action" value="upload"/>
        <table>
          <tr>
            <td><b><?php echo CSV_FILE; ?></b></td>
            <td><input name="csvfile" type="file" /></td>
            <td><?php echo tep_draw_button(CSV_UPLOAD, 'document', null, 'primary'); ?></td>
          </tr>
        </table>
      </form>
      </div>

      <?php
      if($handle = @opendir(CSV_IMPORT_UPLOAD_FOLDER)) {
      ?>
      <div class="section">
      <table>
        <tr>
          <th width="200" align="left"><?php echo CSV_LOADED_FILES; ?></th>
          <th></th>
        </tr>
      <?php
        while (false !== ($file = readdir($handle))) {
          if($file != '.' && $file != '..') {
      ?>
        <tr>
          <td class="file_column"><?php echo $file; ?></td>
          <td>
            <?php
            echo ''
            . tep_draw_button(CSV_VIEW, 'document', tep_href_link('csv_import.php', 'action=view&file=' . $file), 'primary')
            . tep_draw_button(CSV_IMPORT, 'gear', tep_href_link('csv_import.php', 'action=import&file=' . $file), 'primary', array('params' => 'onClick="return confirm(\'' . CSV_CONFIRM_IMPORT . '\');"'))
            . tep_draw_button(CSV_DELETE, 'trash', tep_href_link('csv_import.php', 'action=delete&file=' . $file), 'primary', array('params' => 'onClick="return confirm(\'' . CSV_CONFIRM_DELETE . '\');"'))
            ;
            ?>
            </td>
        </tr>
      <?php
          }
        }
        closedir($handle);
      ?>
      </table>
      </div>
      <?php
      }
      ?>

      <div class="section">
        <pre class="ui-widget-content"><?php echo CSV_USE_MODE; ?></pre>
      </div>
    <?php
    } else { // if($action != 'config')
    ?>

      <div>
        <form action="<?php echo CSV_IMPORT_PHP_FILE; ?>" method="post">

          <div class="section">
            <?php echo tep_draw_button(CSV_GO_BACK, 'arrowthick-1-w', tep_href_link('csv_import.php'), 'primary'); ?>
            <?php echo tep_draw_button('Save', 'document', null, 'primary'); ?>
          </div>

          <input type="hidden" name="action" value="config_save"/>
          <div class="section">
            <table>
            <?php
            foreach($config as $section => $values) {
            ?>
              <tr>
                <td colspan="3"><h2 class="sectionheader"><?php echo $section; ?></h2></td>
              </tr>
              <?php
              foreach($values as $key => $value) {
              ?>
              <tr>
                <td><?php echo $key ?>:</td>
                <td>
                <?php
                if(strlen($value) > 100) {
                ?>
                <textarea name="config[<?php echo $section ?>][<?php echo $key ?>]" rows="5" cols="50"><?php echo $value ?></textarea><?php } else { ?><input name="config[<?php echo $section ?>][<?php echo $key ?>]" size="<?php echo strlen($value) ?>" type="text" value="<?php echo $value ?>"/>
                <?php
                }
                ?>
                </td>
                <td><?php echo (isset($comments[$section][$key]) ? $comments[$section][$key]:'') ?></td>
              </tr>
              <?php
              }
              ?>
            <?php
            }
            ?>
            </table>
          </div>

          <div class="section" style="text-align: right">
            <?php echo tep_draw_button(CSV_GO_BACK, 'arrowthick-1-w', tep_href_link('csv_import.php'), 'primary'); ?>
            <?php echo tep_draw_button('Save', 'document', null, 'primary'); ?>
          </div>

        </form>
      </div>
    <?php
    } // if($action != 'config')
    ?>
    </td>
  </tr>
</table>

<?php
  require('includes/template_bottom.php');
  require('includes/application_bottom.php');
?>
