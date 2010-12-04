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
  'title' => t('Modules'),
  'module' => 'system',
  'section' => 'modules',
  'weight' => -30,
);

#-------------------------------------------------------------------

function profile_generator_profile_element_modules_form() {
  $header = 'De-select unrequired modules';

  $modules = array();
  $values = array();
  $results = db_query('SELECT name, status, info FROM {system} WHERE type="module" ORDER BY name ASC');
  while ($module = db_fetch_object($results)) {
    if ($module->status) {
      $info = (object) unserialize($module->info) ;
      $modules[$module->name] = $info->name;
      $values[$module->name] = $module->name;
    }
  }
  $values['profile_generator'] = 0;
  $values['install_profile_api'] = 'install_profile_api';

  $form = array(
    '#type' => 'checkboxes',
    '#options' => $modules,
    '#default_value' => $values,
  );

  return array($header, $form);
}

#-------------------------------------------------------------------

function profile_generator_profile_element_modules_generate($profile_name, $element, $fields, &$form_state, $weight) {
  $modules = profile_generator_module_list(array_filter($fields['modules']));

  return array(
    '#type' => 'profile_generator_variable',
    '#suffix' => ';',
    '#profile_generator' => $form_state['values'],
    '#value' => $modules,
    '#add_return' => TRUE,
  );
}

#-------------------------------------------------------------------

function profile_generator_module_list($enabled) {
  $modules = array();
  $module_cache = module_rebuild_cache();
  foreach ($module_cache as $module) {
    if (!$module->status) { continue; }
    if (!in_array($module->name, $enabled)) { continue; }
    $modules[] = array(
      'deps' => profile_generator_module_dependencies($module_cache, $module->name),
      'name' => $module->name,
    );
  }

  $count = count($modules);
  for ($i = 0; $i < $count; $i++) {
    for ($j = 0; $j < $count - 1; $j++) {
      if ($i==$j) { continue ; }
      if (in_array($modules[$i]['name'], $modules[$j]['deps'])) {
        $tmp = $modules[$j];
        $modules[$j] = $modules[$i];
        $modules[$i] = $tmp;
      }
    }
  }

  return array_map(create_function('$a', 'return $a["name"];'), $modules);
}

function profile_generator_module_dependencies($module_list, $module) {
  $deps = $module_list[$module]->info['dependencies'];

  if (!is_array($deps)) {
    $deps = array();
  }

  foreach ($deps as $dep) {
    $deps = array_merge($deps, profile_generator_module_dependencies($module_list, $dep));
  }

  return $deps;
}