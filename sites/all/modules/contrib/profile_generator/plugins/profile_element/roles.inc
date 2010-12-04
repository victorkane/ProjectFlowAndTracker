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
  'title' => t('Roles and permissions'),
  'module' => 'user',
  'weight' => -14,
);


function profile_generator_profile_element_roles_form() {
  $header = 'De-select unwanted roles';

  $roles = user_roles();
  $rkeys = array_keys($roles);
  $rkeys = array_combine($rkeys, $rkeys);


  if (!empty($roles)) {
    $form['roles'] = array(
      '#type' => 'checkboxes',
      '#title' => t('Roles'),
      '#options' => $roles,
      '#default_value' => $rkeys,
      '#weight' => $weight++,
    );
  }

  return array($header, $form);
}

function profile_generator_profile_element_roles_generate($profile_name, $element, $fields, &$form_state, $weight) {
  $output = array(
    '#type' => 'profile_generator_task',
    '#title' => $element['#title'],
    '#weight' => $weight,
  );
  $weight = 0;
  $fields = $fields['roles'];

  foreach (array_filter($fields['roles']) as $rid) {
    $output[$rid] = array(
      '#type' => 'install_profile_api',
      '#install_function' => 'add_role',
      '#install_arguments' => array($element['fields']['roles']['roles']['#options'][$rid]),
      '#install_variable' => "\$roles_map[{$rid}]",
      '#weight' => $weight++,
    );

    $perms = db_result(db_query('SELECT perm FROM {permission} WHERE rid=%d', $rid));

    $output["{$rid}_perms"] = array(
      '#type' => 'install_profile_api',
      '#suffix' => ";\n\n",
      '#install_function' => 'add_permissions',
      '#install_arguments' => array("\$roles_map[{$rid}]", explode(', ', $perms)),
      '#weight' => $weight++,
    );

  }

  return $output;
}