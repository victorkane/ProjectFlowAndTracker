<?php
// $Id: site_template.inc,v 1.3 2010/06/18 20:20:41 merlinofchaos Exp $

/**
 * Define the task plugin.
 */
$plugin = array(
  // This is a 'page' task and will fall under the page admin UI
  'task type' => 'page',

  'title' => t('Default site template'),
  'admin title' => t('Default site template'),
  'admin description' => t('When enabled, the site template allows templates to be selectively applied to all pages.'),
  'admin path' => FALSE,

  // This is task uses 'context' handlers and must implement these to give the
  // handler data it needs.
  'handler type' => 'context',
  'get arguments' => 'panels_everywhere_site_template_get_arguments',
  'get context placeholders' => 'panels_everywhere_site_template_get_contexts',

  // Allow this to be enabled or disabled:
  'disabled' => !variable_get('panels_everywhere_site_template_enabled', FALSE),
  'enable callback' => 'panels_everywhere_site_template_enable',
  'tab title' => t('Edit site template'),
);

/**
 * Callback to get arguments provided by this task handler.
 *
 * Since this is the node view and there is no UI on the arguments, we
 * create dummy arguments that contain the needed data.
 */
function panels_everywhere_site_template_get_arguments($task, $subtask_id) {
  return array(
    array(
      'keyword' => 'url',
      'identifier' => t('URL'),
      'id' => 1,
      'name' => 'string',
      'settings' => array(),
    ),
    array(
      'keyword' => 'content',
      'identifier' => t('Page content'),
      'id' => 1,
      'name' => 'page_content',
      'settings' => array(),
    ),
    array(
      'keyword' => 'page',
      'identifier' => t('Managed page'),
      'id' => 1,
      'name' => 'managed_page',
      'settings' => array(),
    ),
  );
}

/**
 * Callback to get context placeholders provided by this handler.
 */
function panels_everywhere_site_template_get_contexts($task, $subtask_id) {
  return ctools_context_get_placeholders_from_argument(panels_everywhere_site_template_get_arguments($task, $subtask_id));
}

/**
 * Callback to enable/disable the page from the UI.
 */
function panels_everywhere_site_template_enable($cache, $status) {
  variable_set('panels_everywhere_site_template_enabled', !$status);
}
