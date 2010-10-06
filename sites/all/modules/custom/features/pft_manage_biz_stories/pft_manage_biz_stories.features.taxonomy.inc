<?php

/**
 * Implementation of hook_taxonomy_default_vocabularies().
 */
function pft_manage_biz_stories_taxonomy_default_vocabularies() {
  return array(
    'biz_story_type' => array(
      'name' => 'Biz Story Type',
      'description' => 'Business Story types',
      'help' => '',
      'relations' => '1',
      'hierarchy' => '0',
      'multiple' => '0',
      'required' => '0',
      'tags' => '0',
      'module' => 'features_biz_story_type',
      'weight' => '0',
      'nodes' => array(
        'biz_story' => 'biz_story',
      ),
    ),
  );
}
