<?php
// $Id: precision_naked.inc,v 1.1 2010/08/25 10:45:56 dixon Exp $

$plugin = array(
  'title' => t('Precision naked'),
  'theme' => 'precision_naked',
  'icon' => 'precision-naked.png',
  'panels' => array(
    'main' => t('Main'),
  ),
);

/**
 * Preprocess the naked layout.
 */
function precision_preprocess_precision_naked(&$vars) {
  precision_check_layout_variables($vars);
}
