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
  'title' => t('Page manager'),
  'module' => 'page_manager',
  'weight' => -7,
);


#function profile_generator_profile_element_pages_form() {}

function profile_generator_profile_element_pages_generate($profile_name, $element, $fields, &$form_state, $weight) {
  $output = array(
    '#type' => 'profile_generator_task',
    '#title' => $element['#title'],
    '#weight' => $weight++,
  );

  $output['page_manager_handlers'] = array(
    '#type' => 'profile_generator_db_table',
    '#db_insert_table' => 'page_manager_handlers',
    '#truncate' => TRUE,
    '#weight' => $weight++,
  );

  $output['page_manager_pages'] = array(
    '#type' => 'profile_generator_db_table',
    '#db_insert_table' => 'page_manager_pages',
    '#truncate' => TRUE,
    '#weight' => $weight++,
  );

  $output['page_manager_weights'] = array(
    '#type' => 'profile_generator_db_table',
    '#db_insert_table' => 'page_manager_weights',
    '#truncate' => TRUE,
    '#weight' => $weight++,
  );

  return $output;
}