<?php
// $Id: precision_column_one.inc,v 1.1 2010/08/25 10:46:33 dixon Exp $

$plugin = array(
  'title' => t('Precision one column'),
  'theme' => 'precision_column_one',
  'icon' => 'precision-column-one.png',
  'panels' => array(
    'main' => t('Main'),
    'aside_first' => t('Aside first'),
    'aside_second' => t('Aside second'),
  ),
);

/**
 * Preprocess the one column layout.
 */
function precision_preprocess_precision_column_one(&$vars) {
  precision_check_layout_variables($vars);
}
