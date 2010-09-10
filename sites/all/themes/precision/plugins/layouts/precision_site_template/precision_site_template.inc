<?php
// $Id: precision_site_template.inc,v 1.1 2010/08/25 10:45:56 dixon Exp $

$plugin = array(
  'title' => t('Precision site template'),
  'theme' => 'precision_site_template',
  'icon' => 'precision-site-template.png',
  'panels' => array(
    'branding' => t('Branding'),
    'main' => t('Main'),
    'footer' => t('Footer'),
  ),
);

/**
 * Preprocess the site template layout.
 */
function precision_preprocess_precision_site_template(&$vars) {
  precision_check_layout_variables($vars);
}
