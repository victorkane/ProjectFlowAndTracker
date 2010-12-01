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
  'title' => t('Views'),
  'module' => 'views',
  'weight' => -10,
);


function profile_generator_profile_element_views_form() {
  $header = 'De-select unwanted views';

  $views = array();
  $views_views = db_query('SELECT vid, name FROM {views_view}');
  while ($views_view = db_fetch_object($views_views)) {
    $views[$views_view->vid] = check_plain($views_view->name);
  }
  $vkeys = array_keys($views);
  $vkeys = array_combine($vkeys, $vkeys);


  if (!empty($views)) {
    $form['views'] = array(
      '#type' => 'checkboxes',
      '#title' => t('Views'),
      '#options' => $views,
      '#default_value' => $vkeys,
      '#weight' => $weight++,
    );
  }

  return array($header, $form);
}

function profile_generator_profile_element_views_generate($profile_name, $element, $fields, &$form_state, $weight) {
  module_load_include('inc', 'views', 'includes/view');
  $output = array(
    '#type' => 'profile_generator_task',
    '#title' => $element['#title'],
    '#weight' => $weight++,
  );

  $output['load'] = array(
    '#type' => 'profile_generator_command',
    '#value' => "module_load_include('inc', 'views', 'includes/view')",
    '#weight' => $weight++,
  );

  $fields = $fields['views'];

  foreach ($fields['views'] as $vid) {
    $view = view::load($vid);

    $output[$vid] = array(
      '#title' => t('View: !view', array('!view' => check_plain($view->name))),
      '#type' => 'profile_generator_php',
      '#value' => $view->export(),
      '#weight' => $weight++,
    );

    $output[$vid . '_save'] = array(
      '#type' => 'profile_generator_command',
      '#value' => '$view->save()',
      '#weight' => $weight++,
    );

  }

  return $output;
}