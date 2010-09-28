<?php

/**
 * Implementation of hook_ctools_plugin_api().
 */
function pft_manage_prj_issues_ctools_plugin_api() {
  list($module, $api) = func_get_args();
  if ($module == "strongarm" && $api == "strongarm") {
    return array("version" => 1);
  }
}

/**
 * Implementation of hook_node_info().
 */
function pft_manage_prj_issues_node_info() {
  $items = array(
    'issue' => array(
      'name' => t('Issue'),
      'module' => 'features',
      'description' => t('An issue (task, defect, change request) to be tracked within the scope of a project.'),
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
function pft_manage_prj_issues_views_api() {
  return array(
    'api' => '2',
  );
}
