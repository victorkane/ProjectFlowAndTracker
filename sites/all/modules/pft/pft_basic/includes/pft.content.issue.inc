<?php

$content['type']  = array (
  'name' => 'Issue',
  'type' => 'issue',
  'description' => 'An issue (task, defect, change request) to be tracked within the scope of a project.',
  'title_label' => 'Name',
  'body_label' => 'Description',
  'min_word_count' => '0',
  'help' => '',
  'node_options' => 
  array (
    'status' => true,
    'promote' => false,
    'sticky' => false,
    'revision' => false,
  ),
  'show_preview_changes' => 1,
  'show_diff_inline' => 0,
  'enable_revisions_page' => 1,
  'old_type' => 'issue',
  'orig_type' => '',
  'module' => 'node',
  'custom' => '1',
  'modified' => '1',
  'locked' => '0',
  'og_content_type_usage' => 'group_post_wiki',
  'og_max_groups' => '',
  'comment' => '2',
  'comment_default_mode' => '4',
  'comment_default_order' => '1',
  'comment_default_per_page' => '50',
  'comment_controls' => '3',
  'comment_anonymous' => 0,
  'comment_subject_field' => '1',
  'comment_preview' => '1',
  'comment_form_location' => '0',
);
$content['groups']  = array (
  0 => 
  array (
    'label' => 'Issue_dates',
    'group_type' => 'standard',
    'settings' => 
    array (
      'form' => 
      array (
        'style' => 'fieldset_vertical_tab',
        'description' => '',
      ),
      'display' => 
      array (
        'description' => '',
        'teaser' => 
        array (
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        'full' => 
        array (
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        4 => 
        array (
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        'token' => 
        array (
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        'label' => 'above',
      ),
    ),
    'weight' => '23',
    'group_name' => 'group_issue_dates',
  ),
  1 => 
  array (
    'label' => 'Metrics',
    'group_type' => 'standard',
    'settings' => 
    array (
      'form' => 
      array (
        'style' => 'fieldset',
        'description' => '',
      ),
      'display' => 
      array (
        'description' => '',
        'teaser' => 
        array (
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        'full' => 
        array (
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        4 => 
        array (
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        'token' => 
        array (
          'format' => 'fieldset',
          'exclude' => 0,
        ),
        'label' => 'above',
      ),
    ),
    'weight' => '24',
    'group_name' => 'group_issue_metrics',
  ),
);
$content['fields']  = array (
  0 => 
  array (
    'label' => 'User story',
    'field_name' => 'field_issue_user_story',
    'type' => 'nodereference',
    'widget_type' => 'nodereference_url',
    'change' => 'Change basic information',
    'weight' => '18',
    'fallback' => 'select',
    'edit_fallback' => 0,
    'node_link' => 
    array (
      'teaser' => 1,
      'full' => 1,
      'title' => 'Raise an issue (task, defect, change request) for this user story',
      'hover_title' => 'By clicking here you can raise an issue which will automatically be associated with this user story',
      'destination' => 'node',
    ),
    'description' => '',
    'group' => false,
    'required' => 0,
    'multiple' => '0',
    'referenceable_types' => 
    array (
      'issue' => 0,
      'page' => 0,
      'project' => 0,
      'story' => 0,
      'user_story' => 0,
      'biz_story' => false,
      'role' => false,
    ),
    'advanced_view' => 'list_user_stories',
    'advanced_view_args' => '',
    'op' => 'Save field settings',
    'module' => 'nodereference',
    'widget_module' => 'nodereference_url',
    'columns' => 
    array (
      'nid' => 
      array (
        'type' => 'int',
        'unsigned' => true,
        'not null' => false,
        'index' => true,
      ),
    ),
    'display_settings' => 
    array (
      'weight' => '18',
      'parent' => '',
      'label' => 
      array (
        'format' => 'above',
      ),
      'teaser' => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
      'full' => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
      4 => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
      'token' => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
    ),
  ),
  1 => 
  array (
    'label' => 'Assigned to',
    'field_name' => 'field_issue_assigned_to',
    'type' => 'userreference',
    'widget_type' => 'userreference_autocomplete',
    'change' => 'Change basic information',
    'weight' => '21',
    'autocomplete_match' => 'contains',
    'size' => '60',
    'reverse_link' => 0,
    'description' => '',
    'default_value' => 
    array (
      0 => 
      array (
        'uid' => NULL,
        '_error_element' => 'default_value_widget][field_issue_assigned_to][0][uid][uid',
      ),
    ),
    'default_value_php' => '',
    'default_value_widget' => 
    array (
      'field_issue_assigned_to' => 
      array (
        0 => 
        array (
          'uid' => 
          array (
            'uid' => '',
            '_error_element' => 'default_value_widget][field_issue_assigned_to][0][uid][uid',
          ),
          '_error_element' => 'default_value_widget][field_issue_assigned_to][0][uid][uid',
        ),
      ),
    ),
    'group' => false,
    'required' => 0,
    'multiple' => '1',
    'referenceable_roles' => 
    array (
      2 => 2,
      3 => 0,
    ),
    'referenceable_status' => '1',
    'advanced_view' => '--',
    'advanced_view_args' => '',
    'op' => 'Save field settings',
    'module' => 'userreference',
    'widget_module' => 'userreference',
    'columns' => 
    array (
      'uid' => 
      array (
        'type' => 'int',
        'unsigned' => true,
        'not null' => false,
        'index' => true,
      ),
    ),
    'display_settings' => 
    array (
      'weight' => '21',
      'parent' => '',
      'label' => 
      array (
        'format' => 'inline',
      ),
      'teaser' => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
      'full' => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
      4 => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
      'token' => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
    ),
  ),
  2 => 
  array (
    'label' => 'Scheduled for',
    'field_name' => 'field_project_start',
    'type' => 'date',
    'widget_type' => 'date_popup',
    'change' => 'Change basic information',
    'weight' => '9',
    'default_value' => 'blank',
    'default_value2' => 'same',
    'default_value_code' => '',
    'default_value_code2' => '',
    'input_format' => 'm/d/Y - H:i',
    'input_format_custom' => '',
    'year_range' => '-3:+3',
    'increment' => '1',
    'advanced' => 
    array (
      'label_position' => 'above',
      'text_parts' => 
      array (
        'year' => 0,
        'month' => 0,
        'day' => 0,
        'hour' => 0,
        'minute' => 0,
        'second' => 0,
      ),
    ),
    'label_position' => 'above',
    'text_parts' => 
    array (
    ),
    'description' => '',
    'group' => 'group_issue_dates',
    'required' => 0,
    'multiple' => '0',
    'repeat' => 0,
    'todate' => '',
    'granularity' => 
    array (
      'year' => 'year',
      'month' => 'month',
      'day' => 'day',
      'hour' => 'hour',
      'minute' => 'minute',
    ),
    'default_format' => 'medium',
    'tz_handling' => 'site',
    'timezone_db' => 'UTC',
    'op' => 'Save field settings',
    'module' => 'date',
    'widget_module' => 'date',
    'columns' => 
    array (
      'value' => 
      array (
        'type' => 'varchar',
        'length' => 20,
        'not null' => false,
        'sortable' => true,
        'views' => true,
      ),
    ),
    'display_settings' => 
    array (
      'weight' => '9',
      'parent' => 'group_issue_dates',
      'label' => 
      array (
        'format' => 'inline',
      ),
      'teaser' => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
      'full' => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
      4 => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
      'token' => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
    ),
  ),
  3 => 
  array (
    'label' => 'Due date',
    'field_name' => 'field_project_end',
    'type' => 'date',
    'widget_type' => 'date_popup',
    'change' => 'Change basic information',
    'weight' => '10',
    'default_value' => 'blank',
    'default_value2' => 'same',
    'default_value_code' => '',
    'default_value_code2' => '',
    'input_format' => 'm/d/Y - H:i',
    'input_format_custom' => '',
    'year_range' => '-3:+3',
    'increment' => '1',
    'advanced' => 
    array (
      'label_position' => 'above',
      'text_parts' => 
      array (
        'year' => 0,
        'month' => 0,
        'day' => 0,
        'hour' => 0,
        'minute' => 0,
        'second' => 0,
      ),
    ),
    'label_position' => 'above',
    'text_parts' => 
    array (
    ),
    'description' => '',
    'group' => 'group_issue_dates',
    'required' => 0,
    'multiple' => '0',
    'repeat' => 0,
    'todate' => '',
    'granularity' => 
    array (
      'year' => 'year',
      'month' => 'month',
      'day' => 'day',
      'hour' => 'hour',
      'minute' => 'minute',
    ),
    'default_format' => 'medium',
    'tz_handling' => 'site',
    'timezone_db' => 'UTC',
    'op' => 'Save field settings',
    'module' => 'date',
    'widget_module' => 'date',
    'columns' => 
    array (
      'value' => 
      array (
        'type' => 'varchar',
        'length' => 20,
        'not null' => false,
        'sortable' => true,
        'views' => true,
      ),
    ),
    'display_settings' => 
    array (
      'weight' => '10',
      'parent' => 'group_issue_dates',
      'label' => 
      array (
        'format' => 'inline',
      ),
      'teaser' => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
      'full' => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
      4 => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
      'token' => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
    ),
  ),
  4 => 
  array (
    'label' => 'Priority',
    'field_name' => 'field_us_priority',
    'type' => 'number_integer',
    'widget_type' => 'optionwidgets_select',
    'change' => 'Change basic information',
    'weight' => '15',
    'description' => 'Indicate order of implementation',
    'default_value' => 
    array (
      0 => 
      array (
        'value' => '',
      ),
    ),
    'default_value_php' => '',
    'default_value_widget' => 
    array (
      'field_us_priority' => 
      array (
        'value' => '',
      ),
    ),
    'group' => 'group_issue_metrics',
    'required' => 0,
    'multiple' => '0',
    'min' => '1',
    'max' => '20',
    'prefix' => '',
    'suffix' => '',
    'allowed_values' => '1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20',
    'allowed_values_php' => '',
    'op' => 'Save field settings',
    'module' => 'number',
    'widget_module' => 'optionwidgets',
    'columns' => 
    array (
      'value' => 
      array (
        'type' => 'int',
        'not null' => false,
        'sortable' => true,
      ),
    ),
    'display_settings' => 
    array (
      'weight' => '15',
      'parent' => 'group_issue_metrics',
      'label' => 
      array (
        'format' => 'inline',
      ),
      'teaser' => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
      'full' => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
      4 => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
      'token' => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
    ),
  ),
  5 => 
  array (
    'label' => 'Points',
    'field_name' => 'field_us_points',
    'type' => 'number_integer',
    'widget_type' => 'number',
    'change' => 'Change basic information',
    'weight' => '16',
    'description' => 'Specify the estimated effort required in terms of points (1 - 100).',
    'default_value' => 
    array (
      0 => 
      array (
        'value' => '',
        '_error_element' => 'default_value_widget][field_us_points][0][value',
      ),
    ),
    'default_value_php' => '',
    'default_value_widget' => 
    array (
      'field_us_points' => 
      array (
        0 => 
        array (
          'value' => '',
          '_error_element' => 'default_value_widget][field_us_points][0][value',
        ),
      ),
    ),
    'group' => 'group_issue_metrics',
    'required' => 0,
    'multiple' => '0',
    'min' => '1',
    'max' => '100',
    'prefix' => '',
    'suffix' => '',
    'allowed_values' => '',
    'allowed_values_php' => '',
    'op' => 'Save field settings',
    'module' => 'number',
    'widget_module' => 'number',
    'columns' => 
    array (
      'value' => 
      array (
        'type' => 'int',
        'not null' => false,
        'sortable' => true,
      ),
    ),
    'display_settings' => 
    array (
      'weight' => '16',
      'parent' => 'group_issue_metrics',
      'label' => 
      array (
        'format' => 'inline',
      ),
      'teaser' => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
      'full' => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
      4 => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
      'token' => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
    ),
  ),
  6 => 
  array (
    'label' => 'Burned points',
    'field_name' => 'field_us_burned_points',
    'type' => 'number_integer',
    'widget_type' => 'optionwidgets_select',
    'change' => 'Change basic information',
    'weight' => '17',
    'description' => 'Show effort already applied to the implementation of the user story.',
    'default_value' => 
    array (
      0 => 
      array (
        'value' => '',
      ),
    ),
    'default_value_php' => '',
    'default_value_widget' => 
    array (
      'field_us_burned_points' => 
      array (
        'value' => '',
      ),
    ),
    'group' => 'group_issue_metrics',
    'required' => 0,
    'multiple' => '0',
    'min' => '1',
    'max' => '100',
    'prefix' => '',
    'suffix' => '',
    'allowed_values' => '5
10
15
20
25
30
35
40
45
50
55
60
65
70
75
80
85
90
95
100',
    'allowed_values_php' => '',
    'op' => 'Save field settings',
    'module' => 'number',
    'widget_module' => 'optionwidgets',
    'columns' => 
    array (
      'value' => 
      array (
        'type' => 'int',
        'not null' => false,
        'sortable' => true,
      ),
    ),
    'display_settings' => 
    array (
      'weight' => '17',
      'parent' => 'group_issue_metrics',
      'label' => 
      array (
        'format' => 'inline',
      ),
      'teaser' => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
      'full' => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
      4 => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
      'token' => 
      array (
        'format' => 'default',
        'exclude' => 0,
      ),
    ),
  ),
);
$content['extra']  = array (
  'title' => '19',
  'body_field' => '22',
  'revision_information' => '28',
  'author' => '27',
  'options' => '29',
  'comment_settings' => '31',
  'menu' => '26',
  'taxonomy' => '20',
  'path' => '30',
  'og_nodeapi' => '25',
);
