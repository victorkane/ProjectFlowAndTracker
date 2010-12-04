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
  'title' => t('Users and Profiles'),
  'module' => 'user',
  'default value' => FALSE,
  'weight' => -12,
);


function profile_generator_profile_element_users_form() {
  if (module_exists('profile')) {
    $form['profiles'] = array(
      '#type' => 'checkbox',
      '#title' => t('Include user profile data'),
      '#default_value' => TRUE,
    );
  }

  return array(NULL, $form);
}

function profile_generator_profile_element_users_generate($profile_name, $element, $fields, &$form_state, $weight) {
  $output = array(
    '#type' => 'profile_generator_task',
    '#title' => $element['#title'],
    '#weight' => $weight,
  );
  $weight = 0;

  $users = db_query('SELECT uid FROM {users} WHERE uid>1');

  if ($fields['profiles']) {
    $profile_fields = db_query('SELECT * FROM {profile_fields');
    while ($profile_field = db_fetch_array($profile_fields)) {
      $key = "profile_field_{$profile_field['fid']}";
      unset($profile_field['fid']);
      $output[$key] = array(
        '#type' => 'install_profile_api',
        '#install_function' => 'profile_field_add',
        '#install_arguments' => array($profile_field),
        '#install_variable' => "\${$key}",
        '#weight' => $weight++,
      );
    }
  }

  while ($user = db_fetch_array($users)) {
    $user = user_load($user);

    $output[$user->uid] = array(
      '#type' => 'install_profile_api',
      '#install_function' => 'add_user',
      '#install_arguments' => array($user->name, $user->pass, $user->mail, $user->roles, $user->status),
      '#install_variable' => '$user_' . $user->uid,
      '#weight' => $weight++,
    );

    if ($fields['profiles']) {
      $profile_values = db_query('SELECT * FROM {profile_values} WHERE uid=%d', $user->uid);
      while ($profile_value = db_fetch_object($profile_values)) {
        $output["profile_{$user->uid}_{$profile_value->fid}"] = array(
          '#type' => 'install_profile_api',
          '#install_function' => 'profile_value_add',
          '#install_arguments' => array("\$profile_field_{$profile_value->fid}", "\$user_{$user->uid}", $profile_value->value),
          '#weight' => $weight++,
        );
      }
    }
  }

  return $output;
}
