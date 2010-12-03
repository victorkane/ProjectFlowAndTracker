<?php
// $Id: taxonomy_export.inc,v 1.1.2.2 2010/02/04 20:59:13 jamesandres Exp $

/**
 * @file taxonomy_export.inc
 *   Export / import and other helper functions.
 **/

/**
 * Finds new in-code taxonomy exports and synchronizes them as necessary.
 **/
function taxonomy_export_sync() {
  // Create initial exportables records for each existing vocabulary
  $vocabularies = taxonomy_get_vocabularies();
  foreach ($vocabularies as $vocabulary) {
    taxonomy_export_set_machine_name($vocabulary);
    $id = db_result(db_query("SELECT id FROM {taxonomy_export} WHERE machine_name = '%s'", $vocabulary->machine_name));

    $taxonomy_export = (object) array(
      'id' => ($id > 0) ? $id : NULL,
      'disabled' => FALSE,
      'api_version' => 1,
      'machine_name' => $vocabulary->machine_name,
      'vocabulary' => $vocabulary,
      'terms' => array(),
    );
    taxonomy_export_store_exportable($taxonomy_export);
  }

  // Find and install new in-code taxonomy exports
  $taxonomy_exports = taxonomy_export_vocabulary_load_all();
  foreach ($taxonomy_exports as $taxonomy_export) {
    $exists = db_result(db_query("SELECT 1 FROM {taxonomy_export_machine_names} WHERE machine_name = '%s'", $taxonomy_export->machine_name));

    if (!$exists) {
      _taxonomy_export_import($taxonomy_export);
      taxonomy_export_store_machine_name($taxonomy_export);
    }
    else {
      // Skip this export, it is already synchronized
    }
  }
}

/**
 * Sets a vocabulary machine_name based on its record in
 * {taxonomy_export_machine_names}.  Failing that a new unique machine_name
 * is generated.
 *
 * @param $vocabulary
 */
function taxonomy_export_set_machine_name(&$vocabulary) {
  static $machine_names = NULL;

  // Create a cached array of exising machine names
  if ($machine_names === NULL) {
    $machine_names = array();
    $result = db_query("SELECT machine_name, vid FROM {taxonomy_export_machine_names} ORDER BY vid");
    while ($row = db_fetch_object($result)) {
      $machine_names[$row->vid] = $row->machine_name;
    }
  }

  // Use existing machine name, if found
  if (array_key_exists($vocabulary->vid, $machine_names)) {
    $vocabulary->machine_name = $machine_names[$vocabulary->vid];
  }
  // Else, attempt to generate a new machine name
  else {
    if (!$vocabulary->machine_name) {
      $vocabulary->machine_name = _taxonomy_export_generate_machine_name($vocabulary->name);
    }

    // If current machine_name conflicts, attempt to create a unique name by
    // appending digits
    $count = 1;
    $existing_machine_name = $vocabulary->machine_name;
    while (in_array($vocabulary->machine_name, $machine_names)) {
      $vocabulary->machine_name = $existing_machine_name . '_' . $count;
      $count += 1;

      // If a unique name cannot be found after 50 tries abort for safety
      if ($count >= 50) {
        watchdog('taxonomy_export', t('Failed to generate machine name for <a href="!url">@title</a>', array('!url' => url('admin/content/taxonomy/edit/vocabulary/' . $vocabulary->vid), '@title' => $vocabulary->title)));
        $vocabulary->machine_name = NULL;
        return FALSE;
      }
    };
  }

  return TRUE;
}

/**
 * Generates a vocabulary machine name based on its name.
 *
 * This function should not be called directly, rather use
 * taxonomy_export_set_machine_name() as it performs duplicate checks.
 */
function _taxonomy_export_generate_machine_name($name) {
  return strtolower(preg_replace('/[^A-Za-z0-9-]/', '_', $name));
}

/**
 * Generates export code from a vocabulary, or array of vocabularies.
 *
 * @param $vocabulary
 *  A taxonomy vocabulary object.
 * @param $terms
 *  Optionally, an array of taxonomy terms belonging to $vocabulary.
 * @param $indent
 *  Number of spaces to indent export code.
 */
function _taxonomy_export_export($taxonomy_export, $indent = '  ') {
  $export = strtr(ctools_export_object('taxonomy_export', $taxonomy_export, $indent), array('stdClass::__set_state' => '(object) '));
  return $export;
}

/**
 * Strips leading and trailing comments, <?php tag, etc. off of
 * the import_data.
 **/
function _taxonomy_export_prepare_import_data(&$import_data) {
  $matches = array();

  preg_match('/(\$taxonomy_export.*)/s', $import_data, $matches);

  if ($matches && $matches[1]) {
    $import_data = $matches[1];
    return TRUE;
  }

  return FALSE;
}

/**
 * Imports a taxonomy_export array.
 *
 * If the vocabulary is already installed, FALSE will be returned.
 *
 * @param $taxonomy_export
 *  A taxonomy_export object.
 * @return (mixed) $return
 *  Either FALSE on error and TRUE or numeric when Vocabulary imported
 *  successfully.  If numeric the value returned will be the number of
 *  imported terms.
 */
function _taxonomy_export_import(&$taxonomy_export) {
  $vocabulary = (array) $taxonomy_export->vocabulary;
  if ($vocabulary && $vocabulary['name']) {
    // Clobber the VID, currently "updating" existing vocabularies is
    // unsupported, new vocabularies will always be created.
    $vocabulary['vid'] = NULL;
    taxonomy_save_vocabulary($vocabulary);

    // Update the export with the new vid so it can be later stored to
    // {taxonomy_export_machine_names}
    $taxonomy_export->vocabulary->vid = $vocabulary['vid'];
  }

  if ($taxonomy_export->terms) {
    // Parent map keeps track of existing TID hierarchy, allowing it to
    // be recreated.
    $parent_tid_map = array();

    // Pass #1, create all the terms
    foreach ($taxonomy_export->terms as $key => $term) {
      $term_ref =& $taxonomy_export->terms[$key];
      $parent_tid_map[$term->tid] = $key;

      $term_array = (array) $term;
      $term_array['tid'] = NULL;
      $term_array['vid'] = $vocabulary['vid'];
      $term_array['parent'] = array(0 => 0);
      taxonomy_save_term($term_array);

      // Update the original $taxonomy_export structure with the new TID,
      // VID, and parent attributes.
      $term_ref->tid = $term_array['tid'];
      $term_ref->vid = $term_array['vid'];

      // taxonomy_get_tree() returns the hierarchy in a "parents" attribute
      // while taxonomy_save_term() requires a "parent" attribute ...
      $term_ref->parent = $taxonomy_export->terms[$key]->parents;
    }

    // Pass #2, rebuild the term hierarchy
    foreach ($taxonomy_export->terms as $key => $term) {
      if ($term->parent[0] == 0) {
        continue;
      }

      foreach ($term->parent as $pkey => $ptid) {
        // The parent TIDs are still relative to the old imported TIDs, use
        // the $parent_tid_map created earlier to lookup the new TID for this
        // parent.
        $term->parent[$pkey] = $taxonomy_export->terms[$parent_tid_map[$ptid]]->tid;
      }

      $term_array = (array) $term;
      taxonomy_save_term($term_array);
    }

    return count($parent_tid_map);
  }

  return TRUE;
}

