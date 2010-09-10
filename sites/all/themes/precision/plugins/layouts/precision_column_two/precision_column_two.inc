<?php
// $Id: precision_column_two.inc,v 1.1 2010/08/25 10:45:56 dixon Exp $

$plugin = array(
  'title' => t('Precision two columns'),
  'theme' => 'precision_column_two',
  'icon' => 'precision-column-two.png',
  'panels' => array(
    'header_alpha' => t('Header alpha'),
    'main' => t('Main'),
    'aside_beta' => t('Aside beta'),
  ),
);

/**
 * Preprocess the two column layout.
 */
function precision_preprocess_precision_column_two(&$vars) {
  precision_check_layout_variables($vars);
}
