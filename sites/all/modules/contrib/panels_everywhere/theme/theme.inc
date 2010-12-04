<?php
// $Id: theme.inc,v 1.3 2010/05/26 17:32:11 merlinofchaos Exp $

/**
 * @file
 * Contains preprocess functions for Panels Everywhere themes.
 */

function template_preprocess_pane_header(&$vars) {
  $vars['site_name'] = (theme_get_setting('toggle_name') ? filter_xss_admin(variable_get('site_name', 'Drupal')) : '');

  $vars['site_slogan'] = (theme_get_setting('toggle_slogan') ? filter_xss_admin(variable_get('site_slogan', '')) : '');
  $vars['front_page'] = url();
  $vars['logo'] = theme_get_setting('logo');
  $vars['search_box'] = (theme_get_setting('toggle_search') ? drupal_get_form('search_theme_form') : '');
}

function template_preprocess_pane_messages(&$vars) {
  $vars['tabs'] = theme('menu_local_tasks');
  $vars['messages'] = theme('status_messages');
  $vars['help'] = theme('help');
}

function template_preprocess_pane_navigation(&$vars) {
  $vars['primary_links'] = menu_primary_links();
  $vars['secondary_links'] = menu_secondary_links();
  $vars['breadcrumb'] = theme('breadcrumb', drupal_get_breadcrumb());
}
