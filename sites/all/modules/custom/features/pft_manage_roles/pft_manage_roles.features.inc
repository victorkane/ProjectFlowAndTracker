<?php

/**
 * Implementation of hook_ctools_plugin_api().
 */
function pft_manage_roles_ctools_plugin_api() {
  list($module, $api) = func_get_args();
  if ($module == "page_manager" && $api == "pages_default") {
    return array("version" => 1);
  }
  elseif ($module == "strongarm" && $api == "strongarm") {
    return array("version" => 1);
  }
}

/**
 * Implementation of hook_node_info().
 */
function pft_manage_roles_node_info() {
  $items = array(
    'role' => array(
      'name' => t('Role'),
      'module' => 'features',
      'description' => t('A class of primary actor interacting with the website application.'),
      'has_title' => '1',
      'title_label' => t('Name'),
      'has_body' => '1',
      'body_label' => t('Description'),
      'min_word_count' => '0',
      'help' => '',
    ),
  );
  return $items;
}

/**
 * Implementation of hook_views_api().
 */
function pft_manage_roles_views_api() {
  return array(
    'api' => '2',
  );
}
