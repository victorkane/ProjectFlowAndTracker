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
  'title' => t('Filters and formats'),
  'module' => 'filter',
  'weight' => -13,
);


#function profile_generator_profile_element_filters_form() {}

function profile_generator_profile_element_filters_generate($profile_name, $element, $fields, &$form_state, $weight) {
  $output = array(
    '#type' => 'profile_generator_task',
    '#title' => $element['#title'],
    '#weight' => $weight,
  );
  $weight = 0;
  $fields = $fields['filters'];

  $formats = db_query('SELECT * FROM {filter_formats}');

  while ($format_data = db_fetch_array($formats)) {
    $format = $format_data['format'];
    unset($format_data['format']);

    $output[$format] = array(
      '#type' => 'install_profile_api',
      '#install_function' => 'add_format',
      '#install_arguments' => array($format_data['name'], $format_data['cache']),
      '#install_variable' => "\$formats_map[{$format}]",
      '#weight' => $weight++,
    );

    $roles = _profile_generator_profile_element_filters_roles($format_data['roles']);

    $output[$format . '_roles'] = array(
      '#type' => 'install_profile_api',
      '#install_function' => 'add_format',
      '#install_arguments' => array( $roles, "\$formats_map[{$format}]"),
      '#weight' => $weight++,
    );
  }

  $filters = db_query('SELECT * FROM {filters}');

  while ($filter = db_fetch_array($filters)) {
    $fid = $filter['fid'];
    unset($filter['fid']);

    $output["filter_{$fid}"] = array(
      '#type' => 'install_profile_api',
      '#install_function' => 'set_filter',
      '#install_arguments' => array("\$formats_map[{$filter['format']}]", $filter['module'], $filter['delta'], $filter['weight']),
      '#weight' => $weight++,
    );
  }

  return $output;
}

function _profile_generator_profile_element_filters_roles($roles) {
  $output = '^array (';
  if ($roles) {
    foreach (explode(',', trim($roles, ',')) as $rid) {
      $output .= " \$roles_map[{$rid}],";
    }
  }
  return $output . ')';
}
