<?php

/**
 * Implementation of hook_ctools_plugin_api().
 */
function pft_manage_biz_stories_ctools_plugin_api() {
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
function pft_manage_biz_stories_node_info() {
  $items = array(
    'biz_story' => array(
      'name' => t('Biz story'),
      'module' => 'features',
      'description' => t('Business story (a problem, a value, a feature). Taken together, they can be viewed in a Business model view (based on O\'Reilly\'s meme map business model.'),
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
function pft_manage_biz_stories_views_api() {
  return array(
    'api' => '2',
  );
}
