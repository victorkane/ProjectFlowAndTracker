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
  'title' => t('Variables (and themes)'),
  'module' => 'system',
  'weight' => -20,
);


#function profile_generator_profile_element_variables_form() {}

function profile_generator_profile_element_variables_generate($profile_name, $element, $fields, &$form_state, $weight) {
  $output = array(
    '#type' => 'profile_generator_task',
    '#title' => $element['#title'],
    '#weight' => $weight,
  );

  $results = db_query('SELECT name FROM {variable}');
  while ($var = db_fetch_object($results)) {
    if (in_array($var->name, array('install_profile', 'drupal_private_key', 'cron_last', 'content_schema_version'))) {
      continue;
    }
    $var->value = variable_get($var->name, null);
    if ($var->name=='theme_default') {
        $output['set_system_theme'] = array(
          '#type' => 'profile_generator_command',
          '#value' => 'system_theme_data()',
          '#weight' => $weight++,
        );

        $set_system_theme_blocks = array(
          '#type' => 'profile_generator_command',
          '#value' => sprintf('system_initialize_theme_blocks("%s")', $var->value),
          '#weight' => $weight++,
        );

        profile_generator_end_tasks($set_system_theme_blocks);
    }
    $output['variable_' . $var->name] = array(
      '#type' => 'profile_generator_command',
      '#value' => sprintf('variable_set("%s", %s)', $var->name, sprintf_var_export($var->value)),
      '#weight' => $weight++,
    );
  }

  return $output;
}