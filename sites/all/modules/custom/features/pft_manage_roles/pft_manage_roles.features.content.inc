<?php

/**
 * Implementation of hook_content_default_fields().
 */
function pft_manage_roles_content_default_fields() {
  $fields = array();

  // Exported field: field_us_role
  $fields['user_story-field_us_role'] = array(
    'field_name' => 'field_us_role',
    'type_name' => 'user_story',
    'display_settings' => array(
      'label' => array(
        'format' => 'above',
        'exclude' => 0,
      ),
      'teaser' => array(
        'format' => 'default',
        'exclude' => 0,
      ),
      'full' => array(
        'format' => 'default',
        'exclude' => 0,
      ),
      '4' => array(
        'format' => 'default',
        'exclude' => 0,
      ),
      'token' => array(
        'format' => 'default',
        'exclude' => 0,
      ),
    ),
    'widget_active' => '1',
    'type' => 'nodereference',
    'required' => '0',
    'multiple' => '1',
    'module' => 'nodereference',
    'active' => '1',
    'referenceable_types' => array(
      'role' => 'role',
      'issue' => 0,
      'page' => 0,
      'project' => 0,
      'story' => 0,
      'user_story' => 0,
    ),
    'advanced_view' => '--',
    'advanced_view_args' => '',
    'widget' => array(
      'autocomplete_match' => 'contains',
      'size' => 60,
      'default_value' => array(
        '0' => array(
          'nid' => '',
        ),
      ),
      'default_value_php' => NULL,
      'node_link' => array(
        'teaser' => 1,
        'full' => 1,
        'title' => 'Add a User Story having this role',
        'hover_title' => 'By clicking here you can add a User Story which will automatically be associated with this Role',
        'destination' => 'node',
      ),
      'fallback' => 'select',
      'edit_fallback' => 1,
      'label' => 'Role',
      'weight' => '-2',
      'description' => '',
      'type' => 'nodereference_url',
      'module' => 'nodereference_url',
    ),
  );

  // Translatables
  // Included for use with string extractors like potx.
  t('Role');

  return $fields;
}
