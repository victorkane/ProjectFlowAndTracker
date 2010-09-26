<?php

/**
 * Implementation of hook_ctools_plugin_api().
 */
function manage_projects_ctools_plugin_api() {
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
function manage_projects_node_info() {
  $items = array(
    'project' => array(
      'name' => t('Project'),
      'module' => 'features',
      'description' => t('A project is an ordered collection of releases organized into iterations, with their user stories, together with all tasks associated with them.'),
      'has_title' => '1',
      'title_label' => t('Project name'),
      'has_body' => '1',
      'body_label' => t('Description'),
      'min_word_count' => '0',
      'help' => '',
    ),
  );
  return $items;
}
