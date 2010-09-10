<?php
// $Id: precision_custom.inc,v 1.1 2010/08/25 10:48:18 dixon Exp $

/**
 * @file
 *   A custom panel/pane style.
 *
 * @todo
 *   The outcommented code needs Panels 6.x-3.x and a patch to work. But since
 *   that branch seems broken at this time, we leave it there.
 *
 * @see
 *   http://drupal.org/node/798954
 */

/**
 * Implementation of THEME_STYLENAME_panels_style().
 */
$plugin = array(
  'title' => t('Precision custom style'),
  'description' => t('Wraps panels or panes in a custom style.'),
  'render panel' => 'precision_custom_render_panel',
  'render pane' => 'precision_custom_render_pane',
  'settings form' => 'precision_custom_settings_form',
  'settings form submit' => 'precision_custom_settings_form_submit',
  'pane settings form' => 'precision_custom_settings_form',
  'pane settings form submit' => 'precision_custom_settings_form_submit',
  'hook theme' => array(
    'precision_custom' => array(
      'arguments' => array('content' => NULL, 'settings' => array()),
    ),
  ),
  'default' => array(
    'prefix' => '',
    'prefix_filter' => FILTER_FORMAT_DEFAULT,
    'suffix' => '',
    'suffix_filter' => FILTER_FORMAT_DEFAULT,
  )
);

/**
 * Theme function for a grid.
 */
function theme_precision_custom($content, $settings) {
  if (!empty($content)) {
    //return check_markup($settings['prefix'], $settings['prefix_filter']) . $content . check_markup($settings['suffix'], $settings['suffix_filter']);
    return $settings['prefix'] . $content . $settings['suffix'];
  }
}

/**
 * Theme function for the panel style.
 */
function theme_precision_custom_render_panel($display, $panel_id, $panes, $settings) {
  $output = '';
  foreach ($panes as $pane_id => $pane) {
    $output .= panels_render_pane($pane, $display->content[$pane_id], $display);
  }
  return theme('precision_grid', $output, $settings);
}

/**
 * Theme function for the pane style.
 */
function theme_precision_custom_render_pane($content, $pane, $display) {
  $output = theme('panels_pane', $content, $pane, $display);
  return theme('precision_custom', $output, $pane->style['settings']);
}

/**
 * Helper function for the setting forms.
 */
function precision_custom_settings_form($settings) {
  $form = array();

  $form['prefix'] = array(
    '#type' => 'textarea',
    '#title' => t('Prefix'),
    '#default_value' => isset($settings['prefix']) ? $settings['prefix'] : '',
  );

  //$prefix_filter = isset($settings['prefix_filter']) ? $settings['prefix_filter'] : FILTER_FORMAT_DEFAULT;
  //$form['prefix_filter'] = filter_form($prefix_filter, NULL, array('prefix_filter'));

  $form['suffix'] = array(
    '#type' => 'textarea',
    '#title' => t('Suffix'),
    '#default_value' => isset($settings['suffix']) ? $settings['suffix'] : '',
  );

  //$suffix_filter = isset($settings['suffix_filter']) ? $settings['suffix_filter'] : FILTER_FORMAT_DEFAULT;
  //$form['suffix_filter'] = filter_form($suffix_filter, NULL, array('suffix_filter'));

  return $form;
}

/**
 * Handle submission of edit form.
 */
//function precision_custom_settings_form_submit($form, &$settings, $form_state) {
  //$settings['prefix_filter'] = $form_state['values']['prefix_filter'];
  //$settings['suffix_filter'] = $form_state['values']['suffix_filter'];
//}
