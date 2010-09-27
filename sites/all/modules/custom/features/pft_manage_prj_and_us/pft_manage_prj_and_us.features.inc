<?php

/**
 * Implementation of hook_ctools_plugin_api().
 */
function pft_manage_prj_and_us_ctools_plugin_api() {
  list($module, $api) = func_get_args();
  if ($module == "page_manager" && $api == "pages_default") {
    return array("version" => 1);
  }
  elseif ($module == "strongarm" && $api == "strongarm") {
    return array("version" => 1);
  }
}

/**
 * Implementation of hook_imagecache_default_presets().
 */
function pft_manage_prj_and_us_imagecache_default_presets() {
  $items = array(
    'diagram_thumbnail' => array(
      'presetname' => 'diagram_thumbnail',
      'actions' => array(
        '0' => array(
          'weight' => '0',
          'module' => 'imagecache',
          'action' => 'imagecache_scale',
          'data' => array(
            'width' => '150',
            'height' => '',
            'upscale' => 0,
          ),
        ),
      ),
    ),
  );
  return $items;
}

/**
 * Implementation of hook_node_info().
 */
function pft_manage_prj_and_us_node_info() {
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
    'user_story' => array(
      'name' => t('User story'),
      'module' => 'features',
      'description' => t('Create a user story to specify functionality for the development of the site.'),
      'has_title' => '1',
      'title_label' => t('Name'),
      'has_body' => '1',
      'body_label' => t('Card'),
      'min_word_count' => '0',
      'help' => '',
    ),
  );
  return $items;
}

/**
 * Implementation of hook_views_api().
 */
function pft_manage_prj_and_us_views_api() {
  return array(
    'api' => '2',
  );
}
