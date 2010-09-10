<?php
// $Id: precision_column_three.inc,v 1.1 2010/08/25 10:45:56 dixon Exp $

$plugin = array(
  'title' => t('Precision three columns'),
  'theme' => 'precision_column_three',
  'icon' => 'precision-column-three.png',
  'panels' => array(
    'header_alpha' => t('Header alpha'),
    'header_beta' => t('Header beta'),
    'main' => t('Main'),
    'aside_alpha' => t('Aside alpha'),
    'aside_beta' => t('Aside beta'),
  ),
);

/**
 * Preprocess the three column layout.
 */
function precision_preprocess_precision_column_three(&$vars) {
  precision_check_layout_variables($vars);
}
