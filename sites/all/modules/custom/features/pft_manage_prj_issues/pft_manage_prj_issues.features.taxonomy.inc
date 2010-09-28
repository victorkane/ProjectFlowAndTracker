<?php

/**
 * Implementation of hook_taxonomy_default_vocabularies().
 */
function pft_manage_prj_issues_taxonomy_default_vocabularies() {
  return array(
    'issue_type' => array(
      'name' => 'Issue Type',
      'description' => 'Issue Type',
      'help' => '',
      'relations' => '1',
      'hierarchy' => '1',
      'multiple' => '0',
      'required' => '0',
      'tags' => '0',
      'module' => 'features_issue_type',
      'weight' => '0',
      'nodes' => array(
        'issue' => 'issue',
      ),
    ),
  );
}
