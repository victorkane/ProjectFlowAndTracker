<?php

/**
 * Implementation of hook_fieldgroup_default_groups().
 */
function pft_manage_prj_issues_fieldgroup_default_groups() {
  $groups = array();

  // Exported group: group_issue_dates
  $groups['issue-group_issue_dates'] = array(
    'group_type' => 'standard',
    'type_name' => 'issue',
    'group_name' => 'group_issue_dates',
    'label' => 'Issue_dates',
    'settings' => array(
      'form' => array(
        'style' => 'fieldset_vertical_tab',
        'description' => '',
      ),
      'display' => array(
        'description' => '',
        'teaser' => array(
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        'full' => array(
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        '4' => array(
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        'token' => array(
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        'label' => 'above',
      ),
    ),
    'weight' => '23',
    'fields' => array(
      '0' => 'field_project_start',
      '1' => 'field_project_end',
    ),
  );

  // Exported group: group_issue_metrics
  $groups['issue-group_issue_metrics'] = array(
    'group_type' => 'standard',
    'type_name' => 'issue',
    'group_name' => 'group_issue_metrics',
    'label' => 'Metrics',
    'settings' => array(
      'form' => array(
        'style' => 'fieldset',
        'description' => '',
      ),
      'display' => array(
        'description' => '',
        'label' => 'above',
        'teaser' => array(
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        'full' => array(
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        '4' => array(
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        'token' => array(
          'format' => 'fieldset',
          'exclude' => 0,
        ),
      ),
    ),
    'weight' => '24',
    'fields' => array(
      '0' => 'field_us_priority',
      '1' => 'field_us_points',
      '2' => 'field_us_burned_points',
    ),
  );

  // Translatables
  // Included for use with string extractors like potx.
  t('Issue_dates');
  t('Metrics');

  return $groups;
}
