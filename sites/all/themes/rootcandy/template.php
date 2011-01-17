<?php
// $Id: template.php,v 1.36.2.50 2010/06/07 07:19:59 sign Exp $

/**
 * @file
 * The theme template.php file
 */

function rootcandy_body_class($left = NULL, $right = NULL) {
  $class = '';
  if ($left != '' AND $right) {
    $class = 'sidebars';
  }
  else if ($left != '' AND $right == '') {
    $class = 'sidebar-left';
  }
  else if ($left == '' AND $right != '') {
    $class = 'sidebar-right';
  }

  // Add classes describing the menu trail of the page.
  $class .= rootcandy_get_page_classes();

  if (isset($class)) {
    return ' class="'. $class .'"';
  }
}

function _rootcandy_admin_navigation() {
  $path = base_path() . path_to_theme();
  $base = path_to_theme();

  // get users role
  global $user;

  if ($user->uid != 1) {
    // get sorted roles
    $role_menu = _rootcandy_init_role_menu();
    if ($role_menu) {
      $rootcandy_navigation = theme_get_setting('rootcandy_navigation_source_'. $role_menu);
    }
  }
  else {
    $rootcandy_navigation = theme_get_setting('rootcandy_navigation_source_admin');
    if (!isset($rootcandy_navigation)) {
      $rootcandy_navigation = '_rootcandy_default_navigation';
    }
  }

  $menu_tree = array();
  if (!$rootcandy_navigation) {
    if (!$user->uid) {
      $menu_tree[] = array('href' => 'user/login', 'title' => t('User login'));
    }
  }
  elseif ($rootcandy_navigation == '_rootcandy_default_navigation') {
    // build default menu
    $menu_tree[] = array('href' => 'admin', 'title' => t('Dashboard'));
    $menu_tree[] = array('href' => 'admin/content', 'title' => t('Content'));
    if (variable_get('node_admin_theme', '0')) {
      $menu_tree[] = array('href' => 'node/add', 'title' => t('Create content'));
    }
    $menu_tree[] = array('href' => 'admin/build', 'title' => t('Building'));
    $menu_tree[] = array('href' => 'admin/settings', 'title' => t('Configuration'));
    $menu_tree[] = array('href' => 'admin/user', 'title' => t('Users'));
    $menu_tree[] = array('href' => 'admin/reports', 'title' => t('Reports'));
    if (module_exists('help')) {
      $menu_tree[] = array('href' => 'admin/help', 'title' => t('Help'));
    }
  }
  else {
    $menu_tree = menu_navigation_links($rootcandy_navigation);
  }

  if ($menu_tree) {
    $size = theme_get_setting('rootcandy_navigation_icons_size');
    $icons_disabled = theme_get_setting('rootcandy_navigation_icons');
    $list_class = 'i'. $size;

    $custom_icons = rootcandy_custom_icons();
    if (!isset($custom_icons)) {
      $custom_icons = '';
    }

    $match = _rootcandy_besturlmatch($_GET['q'], $menu_tree);
    $items = array();
    foreach ($menu_tree as $key => $item) {
      $router_item = menu_get_item($item['href']);
      if (!$router_item['access']) {
        continue;
      }
      $id = '';
      $icon = '';
      $class= '';
      // icons
      if (!$icons_disabled) {
        $size = theme_get_setting('rootcandy_navigation_icons_size');
        if (!isset($size)) $size = 24;
        $arg = explode("/", $item['href']);
        $icon = _rootcandy_icon($arg, $size, 'admin', $custom_icons);
        if ($icon) $icon = $icon .'<br />';
      }
      if ($key == $match) {
        $id = 'current';
        if (!$icons_disabled && $size) {
          $id = 'current-'. $size;
        }
      }

      // add a class to li
      $class = "";
      if (is_array($arg)) {
        $class = implode($arg, '-');
      }

      $item['data'] = l($icon . $item['title'], $item['href'], array('html' => TRUE));
      if (!empty($id)) $item['id'] = $id;
      if (!empty($class)) $item['class'] = $class;
      if (!empty($item['attributes'])) {
        unset($item['attributes']);
      }
      $items[] = $item;

    }

    $level = 1;
    if ($rootcandy_navigation == '_rootcandy_default_navigation') {
      $rootcandy_navigation = 'navigation';
      $level = 2;
    }

    return array(
      'navigation' => theme('admin_navigation', $items, $list_class),
      'menu' => $rootcandy_navigation,
      'level' => $level,
    );
  }
}

function rootcandy_admin_navigation($items, $class) {
  return theme('item_list', $items);
}

function _rootcandy_besturlmatch($needle, $menuitems) {
  $needle = drupal_get_path_alias($needle);
  $lastmatch = NULL;
  $lastmatchlen = 0;
  $urlparts = explode('/', $needle);
  $partcount = count($urlparts);

  foreach ($menuitems as $key => $menuitem) {
    $href = $menuitem['href'];
    $menuurlparts = explode('/', $href);
    $matches = _rootcandy_countmatches($urlparts, $menuurlparts);
    if (($matches > $lastmatchlen) || (($matches == $lastmatchlen) && (($lastmatch && drupal_strlen($menuitems[$lastmatch]['href'])) > drupal_strlen($href)) )) {
      $lastmatchlen = $matches;
      $lastmatch = $key;
    }
  }
  return $lastmatch;
}

/**
 * Override or insert PHPTemplate variables into the templates.
 */
function rootcandy_preprocess_page(&$vars) {
  // get secondary links
  $vars['tabs2'] = menu_secondary_local_tasks();

  // color.module integration
  if (module_exists('color')) {
    _color_page_alter($vars);
  }

  // notify users that they can change settings in theme settings
  $admin_theme = variable_get('admin_theme', 'garland');
  if (arg(0) == 'admin' AND arg(1) == 'settings' AND arg(2) == 'admin' AND ($admin_theme == 'rootcandy' OR $admin_theme == 'rootcandy_fixed' OR $admin_theme == 'rootcandy_dark')) {
    $message = t('Thank you for using RootCandy.<br />Did you know, that Root Candy has advanced settings (Theme-specific settings fieldset)? You can change these settings at <a href="@configure-page">theme configuration page</a>.', array('@configure-page' => url('admin/build/themes/settings/'. $admin_theme)));
    $vars['messages'] .= '<div class="messages rootcandy">'. $message .'</div>';
    // display a warning message if the theme has not been enabled
    global $theme_info;
    if (!$theme_info->status) {
      $warning_message = t('RootCandy theme has not been enabled. You won\'t be able to see theme updates on update page! Please enable the theme on <a href="@themes-page">themes page</a>.', array('@themes-page' => url('admin/build/themes')));
      $vars['messages'] .= '<div class="messages warning">'. $warning_message .'</div>';
    }
  }

  if (arg(0) == 'admin' || ((arg(0) == 'node' AND is_numeric(arg(1)) AND arg(2) == 'edit') || (arg(0) == 'node' AND arg(1) == 'add'))) {
    $vars['go_home'] = '<a href="'. url() .'">'. t('Go Back to Homepage') .'</a>';
  }

  // get theme settings
  $vars['hide_header'] = theme_get_setting('rootcandy_header_display');
  $vars['hide_panel'] = theme_get_setting('rootcandy_hide_panel');

  // append legal notice
  if (!theme_get_setting('rootcandy_hide_author')) {
    $vars['closure'] .= '<div id="legal-notice">Theme created by <a href="http://sotak.co.uk" rel="external">Marek Sotak</a></div>';
  }

  $vars['hide_content'] = '';


  // check whether help is disabled
  if (theme_get_setting('rootcandy_help_display')) {
    unset($vars['help']);
  }

  // dashboard
  if (arg(0) == 'admin' AND !arg(1)) {
    if (!theme_get_setting('rootcandy_dashboard_display')) {
      $vars['dashboard'] = 1;

      // display help and messages in regions
      switch (theme_get_setting('rootcandy_dashboard_help')) {
        case 'left':
          $vars['dashboard_left'] = $vars['help'] . $vars['dashboard_left'];
          unset($vars['help']);
          break;
        case 'right':
          $vars['dashboard_right'] = $vars['help'] . $vars['dashboard_right'];
          unset($vars['help']);
          break;
      }

      switch (theme_get_setting('rootcandy_dashboard_messages')) {
        case 'left':
          $vars['dashboard_left'] = $vars['messages'] . $vars['dashboard_left'];
          unset($vars['messages']);
          break;
        case 'right':
          $vars['dashboard_right'] = $vars['messages'] . $vars['dashboard_right'];
          unset($vars['messages']);
          break;
      }
    }
    if (theme_get_setting('rootcandy_dashboard_content_display')) {
      $vars['hide_content'] = theme_get_setting('rootcandy_dashboard_content_display');
    }
  }

  $vars['panel_navigation'] = '<a id="open" class="open" href="#"><span class="panel-open">'. t('Open Panel') .'</span></a>';
  $vars['panel_navigation'] .= '<a id="close" style="display: none;" class="close" href="#"><span class="panel-close">'. t('Close Panel') .'</span></a>';

  $rootcandy_nav = _rootcandy_admin_navigation();
  $vars['rootcandy_navigation'] = $rootcandy_nav['navigation'];

  // get admin links into the region
  if (arg(0) == 'admin' AND arg(2)) {
    $menu = menu_navigation_links($rootcandy_nav['menu'], $rootcandy_nav['level']);
    $menu_links = _rootcandy_links($menu, array('id' => 'rootcandy-menu'));
    if ($vars['language']->direction) {
      $vars['admin_right'] = $menu_links . $vars['admin_right'];
    }
    else {
      $vars['admin_left'] = $menu_links . $vars['admin_left'];
    }
  }

  $vars['body_class'] = rootcandy_body_class($vars['admin_left'], $vars['admin_right']);

  $icons_disabled = theme_get_setting('rootcandy_navigation_icons');
  $rootcandy_navigation_class = array();

  if (!$icons_disabled) {
    $rootcandy_navigation_class[] = 'i'.theme_get_setting('rootcandy_navigation_icons_size');
  }

  if (!$vars['hide_header']) {
    $rootcandy_navigation_class[] = 'header-on';
  }

  $vars['rootcandy_navigation_class'] = '';

  if ($rootcandy_navigation_class) {
    $vars['rootcandy_navigation_class'] .= ' '. implode(' ', $rootcandy_navigation_class);
  }

  global $user;
  if ($user->uid) {
    $links[] = '<a href="'. url('user') .'" class="user-name">'. $user->name .'</a>';
    $links[] = '<a href="'. url('logout') .'">'. t('Logout') .'</a>';
    $links = implode(' | ', $links);

    $vars['rootcandy_user_links'] = $links;
  }
}

function rootcandy_admin_block_content($content) {
  if (!$content) {
    return '';
  }

  if (system_admin_compact_mode()) {
    drupal_add_js(drupal_get_path('theme', 'rootcandy') .'/compact-icon.js');
    drupal_add_css(drupal_get_path('theme', 'rootcandy') .'/compact-icon.css');
    $counter = 1;
    $output = '<ul class="admin-menu-compact">';
    foreach ($content as $item) {
      $additional_class = $counter % 4 == 0 ? ' last' : ''; //Append class last to every 4th item signifying a new row
      $item['localized_options']['html'] = TRUE;

      if ($image = _rootcandy_menu_icon($item['href'])) {
        $link = l($image .'<br />'. $item['title'], $item['href'], $item['localized_options']);
      }
      else {
        $link = l(theme('image', drupal_get_path('theme', 'rootcandy') .'/icons/i32/misc/unknown.png') .'<br />'. $item['title'], $item['href'], $item['localized_options']);
      }

      $output .= '<li class="leaf'. $additional_class .'">'. $link .'</li>';
      $counter++;
    }
    $output .= '</ul>';
  }
  else {
    $output = '<dl class="admin-list">';
    foreach ($content as $item) {
      $output .= '<dt>'. l($item['title'], $item['href'], $item['localized_options']) .'</dt>';
      $output .= '<dd>'. $item['description'] .'</dd>';
    }
    $output .= '</dl>';
  }

  return $output;
}

function _rootcandy_menu_icon($href) {
  $filename = drupal_get_path('theme', 'rootcandy') .'/icons/i32/admin/'. str_replace('/', '-', drupal_strtolower($href)) .'.png';
  return theme('image', $filename);
}

/**
 * Returns the rendered local tasks. The default implementation renders
 * them as tabs. Overridden to split the secondary tasks.
 *
 * @ingroup themeable
 */
function rootcandy_menu_local_tasks() {
  return menu_primary_local_tasks();
}

function _rootcandy_icon($name, $size = '16', $subdir = '', $icons = '') {
  $url = implode("/", $name);
  $alias = drupal_get_path_alias($url);
  $name = implode("-", $name);
  $path = path_to_theme();
  if ($subdir) {
    $subdir = $subdir .'/';
  }

  if (isset($icons[$url])) {
    $icon = $icons[$url];
  }
  else if (isset($icons[$alias])) {
    $icon = $icons[$alias];
  }
  else {
    $icon = $path .'/icons/i'. $size .'/'. $subdir . $name .'.png';
  }

  $output = theme('image', $icon);

  if (!$output) {
    $icon = $path .'/icons/i'. $size .'/misc/unknown.png';
    $output = theme('image', $icon);
  }

  return $output;
}

function rootcandy_custom_icons() {
  $custom_icons = theme_get_setting('rootcandy_navigation_custom_icons');
  if (isset($custom_icons)) {
    $list = explode("\n", $custom_icons);
    $list = array_map('trim', $list);
    $list = array_filter($list, 'strlen');
    foreach ($list as $opt) {
      // Sanitize the user input with a permissive filter.
      $opt = rootcandy_filter_xss($opt);
      if (strpos($opt, '|') !== FALSE) {
        list($key, $value) = explode('|', $opt);
        $icons[$key] = $value ? $value : $key;
      }
      else {
        $icons[$opt] = $opt;
      }
    }
  }
  if (isset($icons)) {
    return $icons;
  }
}

function rootcandy_filter_xss($string) {
  return filter_xss($string);
}

/**
 * Read the theme settings' default values from the .info and save them into the database.
 *
 * @param $theme
 *   The actual name of theme that is being checked.
 */
function rootcandy_settings_init($theme) {
  $themes = list_themes();

  // Get the default values from the .info file.
  $defaults = (is_array($themes[$theme]->info['settings'])) ? $themes[$theme]->info['settings'] : array();

  // Get the theme settings saved in the database.
  $settings = theme_get_settings($theme);
  // Don't save the toggle_node_info_ variables.
  if (module_exists('node')) {
    foreach (node_get_types() as $type => $name) {
      unset($settings['toggle_node_info_'. $type]);
    }
  }

  // Save default theme settings.
  variable_set(
    str_replace('/', '_', 'theme_'. $theme .'_settings'),
    array_merge($defaults, $settings)
  );
  // Force refresh of Drupal internals.
  theme_get_setting('', TRUE);
}

/*
 * In addition to initializing the theme settings during HOOK_theme(), init them
 * when viewing/resetting the admin/build/themes/settings/THEME forms.
 */
if (arg(0) == 'admin' && arg(2) == 'themes' && arg(4)) {
  global $theme_key;
  rootcandy_settings_init($theme_key);
}

function rootcandy_get_page_classes($path = NULL) {
  if (!isset($path)) $path = $_GET['q'];
  if ($path) {
    $path = ' '. rootcandy_id_safe($path);
  }
  return $path;
}

/**
 * Converts a string to a suitable html ID attribute. Borrowed from Zen theme
 *
 * http://www.w3.org/TR/html4/struct/global.html#h-7.5.2 specifies what makes a
 * valid ID attribute in HTML. This function:
 *
 * - Ensure an ID starts with an alpha character by optionally adding an 'id'.
 * - Replaces any character except alphanumeric characters with dashes.
 * - Converts entire string to lowercase.
 *
 * @param $string
 *   The string
 * @return
 *   The converted string
 */
function rootcandy_id_safe($string) {
  // Replace with dashes anything that isn't A-Z, numbers, dashes, or underscores.
  return check_plain(strtolower(preg_replace('/[^a-zA-Z0-9-]+/', '-', $string)));
}

function rootcandy_breadcrumb($breadcrumb) {
  if (!empty($breadcrumb)) {
    /*
     * Modern browsers (Firefox 1.5 and above, Internet Explorer 5.0 and above,
     * Safari not checked) would automatically change the double-arrows (») to
     * the other direction once it detects a right-to-left page. So no need to
     * reverse the array, and no need to use reversed-direction arrows.
     */
    return '<div class="breadcrumb">'. str_replace(t('Administer'), t('Dashboard'), implode(' » ', $breadcrumb)) .'</div>';
  }
}

function _rootcandy_links($links, $attributes = array('class' => 'links')) {
  $output = '';

  if (count($links) > 0) {
    $output = '<ul'. drupal_attributes($attributes) .'>';

    $num_links = count($links);
    $i = 1;

    foreach ($links as $key => $link) {
      $class = $key;

      // Add first, last and active classes to the list of links to help out themers.
      if ($i == 1) {
        $class .= ' first';
      }
      if ($i == $num_links) {
        $class .= ' last';
      }

      $check_path = $_GET['q'];
      $check_path = explode("/", $check_path);
      $q_path = $check_path[0] .'/'. $check_path[1] .'/'. $check_path[2];
      if (isset($link['href']) && ($link['href'] == $q_path || ($link['href'] == '<front>' && drupal_is_front_page()))) {
        $class .= ' active';
      }
      $output .= '<li'. drupal_attributes(array('class' => $class)) .'>';

      if (isset($link['href'])) {
        // Pass in $link as $options, they share the same keys.
        $output .= l($link['title'], $link['href'], $link);
      }
      else if (!empty($link['title'])) {
        // Some links are actually not links, but we wrap these in <span> for adding title and class attributes
        if (empty($link['html'])) {
          $link['title'] = check_plain($link['title']);
        }
        $span_attributes = '';
        if (isset($link['attributes'])) {
          $span_attributes = drupal_attributes($link['attributes']);
        }
        $output .= '<span'. $span_attributes .'>'. $link['title'] .'</span>';
      }

      $i++;
      $output .= "</li>\n";
    }

    $output .= '</ul>';
  }

  return $output;
}

function rootcandy_menu_item_link($link) {
  if ($link['href'] == 'admin') {
    $link['title'] = t('Dashboard');
  }

  return theme_menu_item_link($link);
}

function _rootcandy_countmatches($arrayone, $arraytwo) {
  $matches = 0;
  foreach ($arraytwo as $i => $part) {
    if (!isset($arrayone[$i])) break;
    if ($arrayone[$i] == $part) $matches = $i+1;
  }
  return $matches;
}

function rootcandy_system_settings_form($form) {
  $themes = list_themes();
  $enabled_theme = arg(4);
  if ($form['#id'] == 'system-theme-settings' AND ($enabled_theme == 'rootcandy' || $themes[$enabled_theme]->base_theme == 'rootcandy')) {

    foreach ($form['theme_specific']['rows'] as $rid => $row) {
      //we are only interested in numeric keys
      if (intval($rid)) {
        $this_row = $row['data']['#value'];
        //Add the weight field to the row
        $weight = $form['theme_specific']['rows'][$rid]['role-weight-'. $rid]['#value'];
        $this_row[] = drupal_render($form['theme_specific']['navigation']['nav-by-role']['rootcandy_navigation_source_'. $rid]);
        $this_row[] = drupal_render($form['theme_specific']['rows'][$rid]['role-weight-'. $rid]);
        //Add the row to the array of rows
        $table_rows[$weight] = array('data' => $this_row, 'class' => 'draggable');
      }
    }
    ksort($table_rows);

    $header = array(
      "Role", "Navigation menu", "Order"
    );

    $form['theme_specific']['navigation']['role-weights']['content']['#value'] = theme('table', $header, $table_rows, array('id' => 'rootcandy-settings-table'));
    $output = drupal_render($form);

    drupal_add_tabledrag('rootcandy-settings-table', 'order', 'sibling', 'weight');
  }
  else {
    $output = drupal_render($form);
  }
  return $output;
}

function rootcandy_theme() {
  return array(
    'system_settings_form' => array(
      'arguments' => array('form' => NULL),
    ),
    'admin_navigation' => array(
      'arguments' => array('items' => NULL, 'class' => NULL),
    ),
  );
}

function _rootcandy_init_role_menu() {
  global $theme_key;
  global $user;
  $i = 100;
  $settings = theme_get_settings($theme_key);
  $menu = array();

  $roles = user_roles(FALSE);

  foreach ($user->roles as $rid => $role) {
    if (!$weight = $settings['role-weight-'. $rid]) {
      $settings['role-weight-'. $rid] = $i++;
    }
    $menu[$settings['role-weight-'. $rid]] = $rid;
  }
  ksort($menu);
  return $menu[key($menu)];
}
