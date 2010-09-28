<?php
// $Id: $

$plugin = array(
  'title' => t('PFT two columns'),
  'theme' => 'pft_column_two',
  'icon' => 'pft-column-two.png',
  'panels' => array(
    'header_alpha' => t('Header alpha'),
    'main1' => t('Main1'),
    'main2' => t('Main2'),
    'main3' => t('Main3'),
    'aside_beta' => t('Aside beta'),
  ),
);

/**
 * Preprocess the two column layout.
 */
function pft_preprocess_pft_column_two(&$vars) {
  pft_check_layout_variables($vars);
}
