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
  'title' => t('Panels'),
  'module' => 'panels',
  'weight' => -9,
);


function profile_generator_profile_element_panels_form() {
  $header = 'De-select unwanted Panel-related items';

  $panels = array();
  if (module_exists('panels_mini')) {
    $panels['panels_mini'] = t('Mini panels');
  }

  if (module_exists('panels_stylizer')) {
    $panels['panels_stylizer'] = t('Panel styles');
  }

  $pkeys = array_keys($panels);
  $pkeys = array_combine($pkeys, $pkeys);

  if (!empty($panels)) {
    $form['panels'] = array(
      '#type' => 'checkboxes',
      '#title' => t('Panels'),
      '#options' => $panels,
      '#default_value' => $pkeys,
      '#weight' => $weight++,
    );
  }

  return array($header, $form);
}

function profile_generator_profile_element_panels_generate($profile_name, $element, $fields, &$form_state, $weight) {
  $output = array(
    '#type' => 'profile_generator_task',
    '#title' => $element['#title'],
    '#weight' => $weight++,
  );
  $fields = $fields['panels'];

  if ($fields['panels']['panels_mini']) {
    $output['panels_mini'] = array(
      '#type' => 'profile_generator_export',
      '#title' => t('Mini panels'),
      '#export_object' => array('table' => 'panels_mini', 'primary key' => 'pid', 'identifier' => 'mini', 'export callback' => 'panels_mini_export', 'save callback' => 'panels_mini_save', 'multiple load callback' => 'panels_mini_load_all'),
      '#weight' => $weight++,
    );
  }

  if ($fields['panels']['panels_stylizer']) {
    $output['panels_stylizer'] = array(
      '#type' => 'profile_generator_export',
      '#title' => t('Panels stylizer'),
      '#export_object' => array('table' => 'panels_style', 'primary key' => 'sid', 'identifier' => 'style', 'export callback' => 'panels_stylizer_style_export', 'save callback' => 'panels_stylizer_save', 'multiple load callback' => 'panels_stylizer_load_all'),
      '#weight' => $weight++,
    );
  }

  $output['panels'] = array(
    '#type' => 'profile_generator_export',
    '#title' => t('Panels'),
    '#export_object' => array('table' => 'panels_display', 'primary key' => 'did', 'identifier' => 'display', 'export callback' => 'panels_export_display', 'save callback' => 'panels_save_display', 'multiple load callback' => 'panels_load_displays'),
    '#weight' => $weight++,
  );

  return $output;
}