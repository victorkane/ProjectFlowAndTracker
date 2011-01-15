<?php

/**
 * Implementation of hook_fieldgroup_default_groups().
 */
function pft_manage_prj_and_us_fieldgroup_default_groups() {
  $groups = array();

  // Exported group: group_project_dates
  $groups['project-group_project_dates'] = array(
    'group_type' => 'standard',
    'type_name' => 'project',
    'group_name' => 'group_project_dates',
    'label' => 'Project dates',
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
    'weight' => '-2',
    'fields' => array(
      '0' => 'field_project_start',
      '1' => 'field_project_end',
    ),
  );

  // Exported group: group_us_confirmation
  $groups['user_story-group_us_confirmation'] = array(
    'group_type' => 'standard',
    'type_name' => 'user_story',
    'group_name' => 'group_us_confirmation',
    'label' => 'Confirmation',
    'settings' => array(
      'form' => array(
        'style' => 'fieldset',
        'description' => '',
      ),
      'display' => array(
        'weight' => '-1',
        'label' => 'above',
        'teaser' => array(
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        'full' => array(
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        'description' => '',
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
    'weight' => '1',
    'fields' => array(
      '0' => 'field_us_confirmation',
    ),
  );

  // Exported group: group_us_conversation
  $groups['user_story-group_us_conversation'] = array(
    'group_type' => 'standard',
    'type_name' => 'user_story',
    'group_name' => 'group_us_conversation',
    'label' => 'Conversation',
    'settings' => array(
      'form' => array(
        'style' => 'fieldset_vertical_tab',
        'description' => '',
      ),
      'display' => array(
        'weight' => '-2',
        'label' => 'above',
        'teaser' => array(
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        'full' => array(
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        'description' => '',
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
    'weight' => '0',
    'fields' => array(
      '0' => 'field_us_conversation',
      '1' => 'field_us_conversation_image',
    ),
  );

  // Exported group: group_us_metrics
  $groups['user_story-group_us_metrics'] = array(
    'group_type' => 'standard',
    'type_name' => 'user_story',
    'group_name' => 'group_us_metrics',
    'label' => 'Metrics',
    'settings' => array(
      'form' => array(
        'style' => 'fieldset_vertical_tab',
        'description' => '',
      ),
      'display' => array(
        'weight' => '1',
        'label' => 'above',
        'teaser' => array(
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        'full' => array(
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        'description' => '',
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
    'weight' => '3',
    'fields' => array(
      '0' => 'field_us_priority',
      '1' => 'field_us_points',
      '2' => 'field_us_burned_points',
    ),
  );

  // Translatables
  // Included for use with string extractors like potx.
  t('Confirmation');
  t('Conversation');
  t('Metrics');
  t('Project dates');

  return $groups;
}
