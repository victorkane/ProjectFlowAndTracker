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
  'title' => t('Custom node types'),
  'module' => 'node',
  'weight' => -18,
);


function profile_generator_profile_element_node_types_form() {
  $header = 'De-select unwanted custom node types';

  $node_types = $values = array();
  foreach (node_get_types() as $node_type) {
    if ($node_type->custom) {
      $node_types[$node_type->type] = $node_type->name;
      $values[$node_type->type] = $node_type->type;
    }
  }

  $form = array(
    '#type' => 'checkboxes',
    '#options' => $node_types,
    '#default_value' => $values,
  );

  return array($header, $form);
}

function profile_generator_profile_element_node_types_generate($profile_name, $element, $fields, &$form_state, $weight) {
  $output = array(
    '#type' => 'profile_generator_task',
    '#title' => $element['#title'],
    '#weight' => $weight,
  );
  $weight = 0;

  $enabled = array_filter($fields['node_types']);

  foreach (node_get_types() as $node_type) {
    if (in_array($node_type->type, $enabled)) {
      $output[$node_type->type] = array(
        '#type' => 'profile_generator_db_insert',
        '#db_insert_table' => 'node_type',
        '#db_insert_object' => $node_type,
        '#weight' => $weight++,
      );
    }
  }

  return $output;
}