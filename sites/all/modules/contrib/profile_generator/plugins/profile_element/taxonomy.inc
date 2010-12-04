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
  'title' => t('Vocabularies and terms'),
  'module' => 'taxonomy',
  'weight' => -16,
);


function profile_generator_profile_element_taxonomy_form() {
  $header = 'De-select unwanted vocabularies or terms';

  $vocs = array();
  foreach (taxonomy_get_vocabularies() as $voc) {
    $vocs[$voc->vid] = check_plain($voc->name);
  }
  $vkeys = array_keys($vocs);
  $vkeys = array_combine($vkeys, $vkeys);


  if (!empty($vocs)) {
    $form['vocs'] = array(
      '#type' => 'checkboxes',
      '#title' => t('Vocabularies'),
      '#options' => $vocs,
      '#default_value' => $vkeys,
      '#weight' => $weight++,
    );
    $form['terms'] = array(
      '#type' => 'checkboxes',
      '#title' => t('Include terms for'),
      '#options' => $vocs,
      '#default_value' => $vkeys,
      '#weight' => $weight++,
    );
  }

  return array($header, $form);
}

function profile_generator_profile_element_taxonomy_generate($profile_name, $element, $fields, &$form_state, $weight) {
  $output = array(
    '#type' => 'profile_generator_task',
    '#title' => $element['#title'],
    '#weight' => $weight++,
  );
  $fields = $fields['taxonomy'];

  $output['setup'] = array(
    '#type' => 'profile_generator_command',
    '#value' => '$tids = array(0 => 0)',
    '#weight' => $weight++,
  );

  foreach (array_filter($fields['vocs']) as $vid) {
    $voc = taxonomy_vocabulary_load($vid);
    $nodes = $voc->nodes;
    unset($voc->vid, $voc->nodes);

    $output[$vid] = array(
      '#type' => 'install_profile_api',
      '#suffix' => ";\n\n",
      '#title' => t('Taxonomy: !voc', array('!voc' => check_plain($voc->name))),
      '#install_function' => 'taxonomy_add_vocabulary',
      '#install_arguments' => array($voc->name, $nodes, (array) $voc),
      '#install_variable' => '$vid',
      '#weight' => $weight++,
    );

    if ($fields['terms'][$vid]) {
      foreach (taxonomy_get_tree($vid) as $term) {
        $tid = $term->tid;
        $depth = $term->depth;
        unset($term->vid, $term->tid, $term->parents, $term->depth);

        $output["{$vid}_{$tid}_term_0"] = array(
          '#type' => 'profile_generator_commands',
          '#commands' => array(
            '$term = ' . sprintf_var_export((array)$term),
            '$term["parent"] = array($tids[' . $depth . '])',
          ),
          '#weight' => $weight++,
        );

        $output["{$vid}_{$tid}_set"] = array(
          '#type' => 'install_profile_api',
          '#suffix' => ";\n\n",
          '#install_function' => 'taxonomy_add_term',
          '#install_arguments' => array('$vid', '$term["name"]', '$term["description"]', '$term'),
          '#install_variable' => '$tids[' . ($depth + 1) . ']',
          '#weight' => $weight++,
        );
      }
    }

  }

  return $output;
}