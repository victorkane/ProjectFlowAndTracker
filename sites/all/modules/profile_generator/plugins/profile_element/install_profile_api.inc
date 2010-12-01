<?php
/**
 * @file
 *
 *
 * sturnbull
 *
 * Created 7 Jul 2010
 */

$plugin = array(
  'title' => t('Install profile API'),
  'description' => t('This installation profile relies on the Install profile API module being enabled.'),
  'module' => 'system',
  'always selected' => TRUE,
  'weight' => -25,
);


#function profile_generator_profile_element_install_profile_api_form() {}

function profile_generator_profile_element_install_profile_api_generate($profile_name, $element, $fields, &$form_state, $weight) {
  $output = array(
    '#type' => 'profile_generator_task',
    '#title' => $element['#title'],
    '#weight' => $weight,
  );

  $output['install_profile_api'] = array(
    '#type' => 'profile_generator_command',
    '#value' => sprintf('install_include(%s_profile_modules())', $profile_name),
    '#weight' => $weight++,
  );

  return $output;
}