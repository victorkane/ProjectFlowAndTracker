<?php
// $Id: template.php,v 1.2 2010/08/25 10:51:07 dixon Exp $

// re-used by Victor Kane for Project Flow & Tracker

/**
 * Override default region style.
 */
function pft_panels_default_style_render_region($display, $region_id, $panes, $settings) {
  $output = '';
  foreach ($panes as $pane_id => $pane_output) {
    $output .= $pane_output;
  }
  return $output;
}

/**
 * Generic function that modifies some variables in all Precision layouts.
 */
function pft_check_layout_variables(&$vars) {
  $vars['css_id'] = strtr($vars['css_id'], '_', '-');
}
