$content['type']  = array (
  'name' => 'User story',
  'type' => 'user_story',
  'description' => 'Create a user story to specify functionality for the development of the site.',
  'title_label' => 'Name',
  'body_label' => 'Card',
  'min_word_count' => '0',
  'help' => '',
  'node_options' => 
  array (
    'status' => true,
    'promote' => false,
    'sticky' => false,
    'revision' => false,
  ),
  'old_type' => 'user_story',
  'orig_type' => 'user_story',
  'module' => 'node',
  'custom' => '0',
  'modified' => '1',
  'locked' => '1',
  'reset' => 'Reset to defaults',
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
    'label' => 'Conversation',
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
    'weight' => '-3',
    'group_name' => 'group_us_conversation',
  ),
  1 => 
  array (
    'label' => 'Confirmation',
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
    'weight' => '-2',
    'group_name' => 'group_us_confirmation',
  ),
  2 => 
  array (
    'label' => 'Metrics',
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
    'weight' => '0',
    'group_name' => 'group_us_metrics',
  ),
);
$content['fields']  = array (
  0 => 
  array (
    'label' => 'Conversation',
    'field_name' => 'field_us_conversation',
    'type' => 'text',
    'widget_type' => 'text_textarea',
    'change' => 'Change basic information',
    'weight' => '-1',
    'rows' => '5',
    'size' => 60,
    'description' => 'Use this field to record the conversations carried out during the implementation of the User story.',
    'default_value' => 
    array (
    ),
    'default_value_php' => '',
    'default_value_widget' => NULL,
    'group' => 'group_us_conversation',
    'required' => 0,
    'multiple' => '1',
    'text_processing' => '1',
    'max_length' => '',
    'allowed_values' => '',
    'allowed_values_php' => '',
    'op' => 'Save field settings',
    'module' => 'text',
    'widget_module' => 'text',
    'columns' => 
    array (
      'value' => 
      array (
        'type' => 'text',
        'size' => 'big',
        'not null' => false,
        'sortable' => true,
        'views' => true,
      ),
      'format' => 
      array (
        'type' => 'int',
        'unsigned' => true,
        'not null' => false,
        'views' => false,
      ),
    ),
    'display_settings' => 
    array (
      'label' => 
      array (
        'format' => 'above',
        'exclude' => 0,
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
    'label' => 'Conversation image',
    'field_name' => 'field_us_conversation_image',
    'type' => 'filefield',
    'widget_type' => 'imagefield_widget',
    'change' => 'Change basic information',
    'weight' => '1',
    'file_extensions' => 'png gif jpg jpeg',
    'progress_indicator' => 'bar',
    'file_path' => 'user-stories/conversation',
    'max_filesize_per_file' => '',
    'max_filesize_per_node' => '',
    'max_resolution' => 0,
    'min_resolution' => 0,
    'custom_alt' => 0,
    'alt' => '',
    'custom_title' => 0,
    'title_type' => 'textfield',
    'title' => '',
    'use_default_image' => 0,
    'default_image_upload' => '',
    'default_image' => NULL,
    'description' => '',
    'group' => 'group_us_conversation',
    'required' => 0,
    'multiple' => '1',
    'list_field' => '0',
    'list_default' => 1,
    'description_field' => '1',
    'op' => 'Save field settings',
    'module' => 'filefield',
    'widget_module' => 'imagefield',
    'columns' => 
    array (
      'fid' => 
      array (
        'type' => 'int',
        'not null' => false,
        'views' => true,
      ),
      'list' => 
      array (
        'type' => 'int',
        'size' => 'tiny',
        'not null' => false,
        'views' => true,
      ),
      'data' => 
      array (
        'type' => 'text',
        'serialize' => true,
        'views' => true,
      ),
    ),
    'display_settings' => 
    array (
      'label' => 
      array (
        'format' => 'above',
        'exclude' => 0,
      ),
      'teaser' => 
      array (
        'format' => 'image_plain',
        'exclude' => 0,
      ),
      'full' => 
      array (
        'format' => 'image_plain',
        'exclude' => 0,
      ),
      4 => 
      array (
        'format' => 'image_plain',
        'exclude' => 0,
      ),
      'token' => 
      array (
        'format' => 'image_plain',
        'exclude' => 0,
      ),
    ),
  ),
  2 => 
  array (
    'label' => 'Confirmation',
    'field_name' => 'field_us_confirmation',
    'type' => 'text',
    'widget_type' => 'text_textarea',
    'change' => 'Change basic information',
    'weight' => '-1',
    'rows' => '5',
    'size' => 60,
    'description' => '',
    'default_value' => 
    array (
    ),
    'default_value_php' => '',
    'default_value_widget' => 
    array (
      'field_us_confirmation' => 
      array (
        0 => 
        array (
          'value' => '',
          'format' => 1,
          '_error_element' => 'default_value_widget][field_us_confirmation][0][value',
        ),
      ),
    ),
    'group' => 'group_us_confirmation',
    'required' => 0,
    'multiple' => '1',
    'text_processing' => '1',
    'max_length' => '',
    'allowed_values' => '',
    'allowed_values_php' => '',
    'op' => 'Save field settings',
    'module' => 'text',
    'widget_module' => 'text',
    'columns' => 
    array (
      'value' => 
      array (
        'type' => 'text',
        'size' => 'big',
        'not null' => false,
        'sortable' => true,
        'views' => true,
      ),
      'format' => 
      array (
        'type' => 'int',
        'unsigned' => true,
        'not null' => false,
        'views' => false,
      ),
    ),
    'display_settings' => 
    array (
      'label' => 
      array (
        'format' => 'above',
        'exclude' => 0,
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
    'label' => 'Priority',
    'field_name' => 'field_us_priority',
    'type' => 'number_integer',
    'widget_type' => 'optionwidgets_select',
    'change' => 'Change basic information',
    'weight' => '4',
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
    'group' => 'group_us_metrics',
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
      'label' => 
      array (
        'format' => 'above',
        'exclude' => 0,
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
    'label' => 'Points',
    'field_name' => 'field_us_points',
    'type' => 'number_integer',
    'widget_type' => 'number',
    'change' => 'Change basic information',
    'weight' => '5',
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
    'group' => 'group_us_metrics',
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
      'label' => 
      array (
        'format' => 'above',
        'exclude' => 0,
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
    'label' => 'Burned points',
    'field_name' => 'field_us_burned_points',
    'type' => 'number_integer',
    'widget_type' => 'optionwidgets_select',
    'change' => 'Change basic information',
    'weight' => '6',
    'description' => 'Show effort already applied to the implementation of the user story.',
    'default_value' => 
    array (
    ),
    'default_value_php' => '',
    'default_value_widget' => 
    array (
      'field_us_burned_points' => 
      array (
        'value' => '',
      ),
    ),
    'group' => 'group_us_metrics',
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
      'label' => 
      array (
        'format' => 'above',
        'exclude' => 0,
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
  'title' => '-5',
  'body_field' => '-4',
  'revision_information' => '3',
  'author' => '2',
  'options' => '4',
  'comment_settings' => '5',
  'menu' => '1',
);

