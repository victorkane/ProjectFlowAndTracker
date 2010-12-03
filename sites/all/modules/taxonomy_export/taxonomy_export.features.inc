<?php
// $Id: taxonomy_export.features.inc,v 1.1.2.2 2010/02/04 20:59:13 jamesandres Exp $

/**
 * @file taxonomy_export.features.inc
 *   Features module support for Taxonomy Export
 */

module_load_include('inc', 'taxonomy_export');

/**
 * Implementation of hook_features_export()
 */
function taxonomy_export_features_export($data, &$export, $module_name = '') {
  $pipe = array();

  $export['dependencies']['taxonomy_export'] = 'taxonomy_export';
  $export['dependencies']['taxonomy'] = 'taxonomy';
  $export['dependencies']['ctools'] = 'ctools';

  $pipe['ctools'][] = 'taxonomy_export';

  if (!isset($export['features']['taxonomy_export'])) {
    $export['features']['taxonomy_export'] = array();
  }

  foreach ($data as $identifier) {
    list($machine_name, $with_terms) = explode('-', $identifier);
    $with_terms = ($with_terms == 'with_terms');

    $taxonomy_export = taxonomy_export_vocabulary_load($machine_name, $with_terms);

    $export['features']['taxonomy_export'][$identifier] = $identifier;

    foreach ((array) $taxonomy_export->vocabulary->nodes as $node_type) {
      $pipe['node'][] = $node_type;
    }

    if (isset($taxonomy_export->vocabulary->i18nmode)) {
      $export['dependencies']['i18ntaxonomy'] = 'i18ntaxonomy';
    }
  }

  return $pipe;
}

/**
 * Implementation of hook_features_export_options().
 */
function taxonomy_export_features_export_options() {
  $vocabularies = array();

  foreach (taxonomy_export_vocabulary_load_all() as $machine_name => $taxonomy_export) {
    $vocabularies[$taxonomy_export->machine_name] = $taxonomy_export->vocabulary->name;
    $vocabularies[$taxonomy_export->machine_name . '-with_terms'] = t("@name (with terms)", array('@name' => $taxonomy_export->vocabulary->name));
  }

  return $vocabularies;
}

/**
 * Implementation of hook_features_export_render().
 */
function taxonomy_export_features_export_render($module, $data) {
  module_load_include('inc', 'taxonomy_export', 'taxonomy_export.pages');

  $code = array();

  $code[] = '  $taxonomy_exports = array();';
  $code[] = '';

  foreach ($data as $identifier) {
    list($machine_name, $with_terms) = explode('-', $identifier);
    $with_terms = ($with_terms == 'with_terms');

    $taxonomy_export = taxonomy_export_vocabulary_load($machine_name, $with_terms);

    $code[] = '  // Exported vocabulary: ' . check_plain($taxonomy_export->vocabulary->name);
    $code[] = _taxonomy_export_export($taxonomy_export)
            . '  $taxonomy_exports[$taxonomy_export->machine_name] = $taxonomy_export;';
    $code[] = '';
  }

  $code[] = '  return $taxonomy_exports;';

  return array('default_taxonomy_export' => implode("\n", $code));
}

/**
 * Implementation of hook_features_export_rebuild()
 */
function taxonomy_export_features_export_rebuild($module) {
  // TODO: Do something.
}

/**
 * Implementation of hook_features_export_revert()
 */
function taxonomy_export_features_export_revert($module = NULL) {
  return TRUE;
}
