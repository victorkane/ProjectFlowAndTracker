<?php

/**
 * Implementation of hook_taxonomy_default_vocabularies().
 */
function pft_manage_prj_and_us_taxonomy_default_vocabularies() {
  return array(
    'status' => array(
      'name' => 'Status',
      'description' => 'The status of a user story or issue.',
      'help' => '',
      'relations' => '1',
      'hierarchy' => '0',
      'multiple' => '0',
      'required' => '1',
      'tags' => '0',
      'module' => 'features_status',
      'weight' => '0',
      'nodes' => array(
        'user_story' => 'user_story',
        'issue' => 'issue',
      ),
    ),
    'user_story_type' => array(
      'name' => 'User Story Type',
      'description' => 'User Story type',
      'help' => '',
      'relations' => '1',
      'hierarchy' => '0',
      'multiple' => '0',
      'required' => '0',
      'tags' => '0',
      'module' => 'features_user_story_type',
      'weight' => '0',
      'nodes' => array(
        'user_story' => 'user_story',
      ),
    ),
  );
}
