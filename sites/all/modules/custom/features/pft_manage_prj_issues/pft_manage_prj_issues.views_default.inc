<?php

/**
 * Implementation of hook_views_default_views().
 */
function pft_manage_prj_issues_views_default_views() {
  $views = array();

  // Exported view: list_issues
  $view = new view;
  $view->name = 'list_issues';
  $view->description = 'List issues by user story';
  $view->tag = 'PFT';
  $view->view_php = '';
  $view->base_table = 'node';
  $view->is_cacheable = FALSE;
  $view->api_version = 2;
  $view->disabled = FALSE; /* Edit this to true to make a default view disabled initially */
  $handler = $view->new_display('default', 'Defaults', 'default');
  $handler->override_option('fields', array(
    'title' => array(
      'label' => 'Name',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'link_class' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'target' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'html' => 0,
        'strip_tags' => 0,
      ),
      'empty' => '',
      'hide_empty' => 0,
      'empty_zero' => 0,
      'link_to_node' => 1,
      'exclude' => 0,
      'id' => 'title',
      'table' => 'node',
      'field' => 'title',
      'relationship' => 'none',
    ),
    'field_issue_assigned_to_uid' => array(
      'label' => 'Who',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'link_class' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'target' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'html' => 0,
        'strip_tags' => 0,
      ),
      'empty' => '',
      'hide_empty' => 0,
      'empty_zero' => 0,
      'link_to_node' => 0,
      'label_type' => 'custom',
      'format' => 'default',
      'multiple' => array(
        'group' => TRUE,
        'multiple_number' => '',
        'multiple_from' => '',
        'multiple_reversed' => FALSE,
      ),
      'exclude' => 0,
      'id' => 'field_issue_assigned_to_uid',
      'table' => 'node_data_field_issue_assigned_to',
      'field' => 'field_issue_assigned_to_uid',
      'relationship' => 'none',
    ),
    'tid' => array(
      'label' => 'Status',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'link_class' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'target' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'html' => 0,
        'strip_tags' => 0,
      ),
      'empty' => '',
      'hide_empty' => 0,
      'empty_zero' => 0,
      'type' => 'separator',
      'separator' => ', ',
      'link_to_taxonomy' => 1,
      'limit' => 1,
      'vids' => array(
        '1' => 1,
        '3' => 0,
        '2' => 0,
      ),
      'exclude' => 0,
      'id' => 'tid',
      'table' => 'term_node',
      'field' => 'tid',
      'relationship' => 'none',
    ),
    'field_project_start_value' => array(
      'label' => 'Start',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'link_class' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'target' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'html' => 0,
        'strip_tags' => 0,
      ),
      'empty' => '',
      'hide_empty' => 0,
      'empty_zero' => 0,
      'link_to_node' => 0,
      'label_type' => 'custom',
      'format' => 'default',
      'multiple' => array(
        'multiple_number' => '',
        'multiple_from' => '',
        'multiple_to' => '',
        'group' => '',
      ),
      'repeat' => array(
        'show_repeat_rule' => '',
      ),
      'fromto' => array(
        'fromto' => 'both',
      ),
      'exclude' => 0,
      'id' => 'field_project_start_value',
      'table' => 'node_data_field_project_start',
      'field' => 'field_project_start_value',
      'relationship' => 'none',
    ),
    'field_project_end_value' => array(
      'label' => 'Due',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'link_class' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'target' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'html' => 0,
        'strip_tags' => 0,
      ),
      'empty' => '',
      'hide_empty' => 0,
      'empty_zero' => 0,
      'link_to_node' => 0,
      'label_type' => 'custom',
      'format' => 'default',
      'multiple' => array(
        'multiple_number' => '',
        'multiple_from' => '',
        'multiple_to' => '',
        'group' => '',
      ),
      'repeat' => array(
        'show_repeat_rule' => '',
      ),
      'fromto' => array(
        'fromto' => 'both',
      ),
      'exclude' => 0,
      'id' => 'field_project_end_value',
      'table' => 'node_data_field_project_end',
      'field' => 'field_project_end_value',
      'relationship' => 'none',
    ),
    'field_us_priority_value' => array(
      'label' => 'Priority',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'link_class' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'target' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'html' => 0,
        'strip_tags' => 0,
      ),
      'empty' => '',
      'hide_empty' => 0,
      'empty_zero' => 0,
      'link_to_node' => 0,
      'label_type' => 'widget',
      'format' => 'default',
      'multiple' => array(
        'group' => TRUE,
        'multiple_number' => '',
        'multiple_from' => '',
        'multiple_reversed' => FALSE,
      ),
      'exclude' => 0,
      'id' => 'field_us_priority_value',
      'table' => 'node_data_field_us_priority',
      'field' => 'field_us_priority_value',
      'relationship' => 'none',
    ),
    'field_us_points_value' => array(
      'label' => 'Points',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'link_class' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'target' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'html' => 0,
        'strip_tags' => 0,
      ),
      'empty' => '',
      'hide_empty' => 0,
      'empty_zero' => 0,
      'link_to_node' => 0,
      'label_type' => 'widget',
      'format' => 'default',
      'multiple' => array(
        'group' => TRUE,
        'multiple_number' => '',
        'multiple_from' => '',
        'multiple_reversed' => FALSE,
      ),
      'exclude' => 0,
      'id' => 'field_us_points_value',
      'table' => 'node_data_field_us_points',
      'field' => 'field_us_points_value',
      'relationship' => 'none',
    ),
    'field_us_burned_points_value' => array(
      'label' => 'Burned points',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'link_class' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'target' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'html' => 0,
        'strip_tags' => 0,
      ),
      'empty' => '',
      'hide_empty' => 0,
      'empty_zero' => 0,
      'link_to_node' => 0,
      'label_type' => 'widget',
      'format' => 'default',
      'multiple' => array(
        'group' => TRUE,
        'multiple_number' => '',
        'multiple_from' => '',
        'multiple_reversed' => FALSE,
      ),
      'exclude' => 0,
      'id' => 'field_us_burned_points_value',
      'table' => 'node_data_field_us_burned_points',
      'field' => 'field_us_burned_points_value',
      'relationship' => 'none',
    ),
    'edit_node' => array(
      'label' => 'Edit link',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'link_class' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'target' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'html' => 0,
        'strip_tags' => 0,
      ),
      'empty' => '',
      'hide_empty' => 0,
      'empty_zero' => 0,
      'text' => '',
      'exclude' => 0,
      'id' => 'edit_node',
      'table' => 'node',
      'field' => 'edit_node',
      'relationship' => 'none',
    ),
  ));
  $handler->override_option('sorts', array(
    'weight' => array(
      'order' => 'ASC',
      'id' => 'weight',
      'table' => 'term_data',
      'field' => 'weight',
      'override' => array(
        'button' => 'Override',
      ),
      'relationship' => 'none',
    ),
    'created' => array(
      'order' => 'ASC',
      'granularity' => 'second',
      'id' => 'created',
      'table' => 'node',
      'field' => 'created',
      'override' => array(
        'button' => 'Override',
      ),
      'relationship' => 'none',
    ),
  ));
  $handler->override_option('arguments', array(
    'field_issue_user_story_nid' => array(
      'default_action' => 'default',
      'style_plugin' => 'default_summary',
      'style_options' => array(),
      'wildcard' => 'all',
      'wildcard_substitution' => 'All',
      'title' => '',
      'breadcrumb' => '',
      'default_argument_type' => 'node',
      'default_argument' => '',
      'validate_type' => 'none',
      'validate_fail' => 'not found',
      'break_phrase' => 0,
      'not' => 0,
      'id' => 'field_issue_user_story_nid',
      'table' => 'node_data_field_issue_user_story',
      'field' => 'field_issue_user_story_nid',
      'validate_user_argument_type' => 'uid',
      'validate_user_roles' => array(
        '2' => 0,
        '3' => 0,
      ),
      'relationship' => 'none',
      'default_options_div_prefix' => '',
      'default_argument_fixed' => '',
      'default_argument_user' => 0,
      'default_argument_php' => '',
      'validate_argument_node_type' => array(
        'project' => 0,
        'user_story' => 0,
        'issue' => 0,
        'page' => 0,
        'story' => 0,
      ),
      'validate_argument_node_access' => 0,
      'validate_argument_nid_type' => 'nid',
      'validate_argument_vocabulary' => array(
        '3' => 0,
        '1' => 0,
        '2' => 0,
      ),
      'validate_argument_type' => 'tid',
      'validate_argument_transform' => 0,
      'validate_user_restrict_roles' => 0,
      'validate_argument_is_member' => 'OG_VIEWS_DO_NOT_VALIDATE_MEMBERSHIP',
      'validate_argument_group_node_type' => array(
        'project' => 0,
      ),
      'validate_argument_php' => '',
    ),
  ));
  $handler->override_option('filters', array(
    'status_extra' => array(
      'operator' => '=',
      'value' => '',
      'group' => '0',
      'exposed' => FALSE,
      'expose' => array(
        'operator' => FALSE,
        'label' => '',
      ),
      'id' => 'status_extra',
      'table' => 'node',
      'field' => 'status_extra',
      'relationship' => 'none',
    ),
    'type' => array(
      'operator' => 'in',
      'value' => array(
        'issue' => 'issue',
      ),
      'group' => '0',
      'exposed' => FALSE,
      'expose' => array(
        'operator' => FALSE,
        'label' => '',
      ),
      'id' => 'type',
      'table' => 'node',
      'field' => 'type',
      'relationship' => 'none',
    ),
  ));
  $handler->override_option('access', array(
    'type' => 'none',
  ));
  $handler->override_option('cache', array(
    'type' => 'none',
  ));
  $handler->override_option('items_per_page', 0);
  $handler->override_option('distinct', 1);
  $handler->override_option('style_plugin', 'bulk');
  $handler->override_option('style_options', array(
    'grouping' => 'tid',
    'override' => 1,
    'sticky' => 0,
    'order' => 'asc',
    'columns' => array(
      'title' => 'title',
      'field_issue_assigned_to_uid' => 'field_issue_assigned_to_uid',
      'tid' => 'tid',
      'field_project_start_value' => 'field_project_start_value',
      'field_project_end_value' => 'field_project_end_value',
      'field_us_priority_value' => 'field_us_priority_value',
      'field_us_points_value' => 'field_us_points_value',
      'field_us_burned_points_value' => 'field_us_burned_points_value',
      'edit_node' => 'edit_node',
    ),
    'info' => array(
      'title' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'field_issue_assigned_to_uid' => array(
        'separator' => '',
      ),
      'tid' => array(
        'separator' => '',
      ),
      'field_project_start_value' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'field_project_end_value' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'field_us_priority_value' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'field_us_points_value' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'field_us_burned_points_value' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'edit_node' => array(
        'separator' => '',
      ),
    ),
    'default' => '-1',
    'execution_type' => '1',
    'display_type' => '0',
    'hide_select_all' => 0,
    'skip_confirmation' => 1,
    'display_result' => 1,
    'merge_single_action' => 1,
    'selected_operations' => array(
      'views_bulk_operations_delete_node_action' => 'views_bulk_operations_delete_node_action',
      'og_make_private_action' => 'og_make_private_action',
      'og_make_public_action' => 'og_make_public_action',
      'views_bulk_operations_fields_action' => 'views_bulk_operations_fields_action',
      'views_bulk_operations_taxonomy_action' => 'views_bulk_operations_taxonomy_action',
      'node_publish_action' => 'node_publish_action',
      'og_remove_group_action' => 'og_remove_group_action',
      'system_send_email_action' => 'system_send_email_action',
      'node_unpublish_action' => 'node_unpublish_action',
      'og_add_group_action' => 0,
      'node_assign_owner_action' => 0,
      'node_mass_update:a27b9efabcd054685a549378b174ad11' => 0,
      'system_message_action' => 0,
      'views_bulk_operations_action' => 0,
      'views_bulk_operations_script_action' => 0,
      'node_make_sticky_action' => 0,
      'node_make_unsticky_action' => 0,
      'node_mass_update:c4d3b28efb86fd703619a50b74d43794' => 0,
      'views_bulk_operations_argument_selector_action' => 0,
      'node_promote_action' => 0,
      'node_mass_update:14de7d028b4bffdf2b4a266562ca18ac' => 0,
      'node_mass_update:9c585624b9b3af0b4687d5f97f35e047' => 0,
      'system_goto_action' => 0,
      'og_remove_groups_action' => 0,
      'node_unpromote_action' => 0,
      'node_mass_update:8ce21b08bb8e773d10018b484fe4815e' => 0,
      'node_save_action' => 0,
      'node_mass_update:0ccad85c1ebe4c9ceada1aa64293b080' => 0,
      'node_unpublish_by_keyword_action' => 0,
      'pathauto_node_update_alias_multiple:620e193b20ba9caa374fea9ca0ad38f0' => 0,
    ),
    'views_bulk_operations_fields_action' => array(
      'php_code' => 0,
      'display_fields' => array(
        'field_project_short_name' => 'field_project_short_name',
        'field_project_start' => 'field_project_start',
        'field_project_end' => 'field_project_end',
        'field_us_role' => 'field_us_role',
        'field_us_confirmation' => 'field_us_confirmation',
        'field_us_conversation' => 'field_us_conversation',
        'field_us_conversation_image' => 'field_us_conversation_image',
        'field_us_priority' => 'field_us_priority',
        'field_us_points' => 'field_us_points',
        'field_us_burned_points' => 'field_us_burned_points',
        'field_issue_user_story' => 'field_issue_user_story',
        'field_issue_assigned_to' => 'field_issue_assigned_to',
      ),
      '_error_element_base' => 'style_options][views_bulk_operations_fields_action][',
    ),
  ));
  $handler = $view->new_display('node_content', 'Node content', 'node_content_1');
  $handler->override_option('types', array(
    'user_story' => 'user_story',
  ));
  $handler->override_option('modes', array(
    '0' => 'teaser',
    '1' => 'full',
    '2' => 4,
  ));
  $handler->override_option('argument_mode', 'nid');
  $handler->override_option('default_argument', '');
  $handler = $view->new_display('block', 'Block Simple List', 'block_1');
  $handler->override_option('fields', array(
    'title' => array(
      'label' => '',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'link_class' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'target' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'html' => 0,
        'strip_tags' => 0,
      ),
      'empty' => '',
      'hide_empty' => 0,
      'empty_zero' => 0,
      'link_to_node' => 1,
      'exclude' => 0,
      'id' => 'title',
      'table' => 'node',
      'field' => 'title',
      'relationship' => 'none',
      'override' => array(
        'button' => 'Use default',
      ),
    ),
  ));
  $handler->override_option('style_plugin', 'table');
  $handler->override_option('style_options', array(
    'grouping' => '',
    'override' => 1,
    'sticky' => 0,
    'order' => 'asc',
    'columns' => array(
      'title' => 'title',
    ),
    'info' => array(
      'title' => array(
        'sortable' => 0,
        'separator' => '',
      ),
    ),
    'default' => '-1',
  ));
  $handler->override_option('block_description', '');
  $handler->override_option('block_caching', -1);

  $views[$view->name] = $view;

  // Exported view: list_issues_by_project
  $view = new view;
  $view->name = 'list_issues_by_project';
  $view->description = 'List issues in current project grouped by user stories';
  $view->tag = 'PFT';
  $view->view_php = '';
  $view->base_table = 'node';
  $view->is_cacheable = FALSE;
  $view->api_version = 2;
  $view->disabled = FALSE; /* Edit this to true to make a default view disabled initially */
  $handler = $view->new_display('default', 'Defaults', 'default');
  $handler->override_option('fields', array(
    'title' => array(
      'label' => 'Name',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'link_class' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'target' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'html' => 0,
        'strip_tags' => 0,
      ),
      'empty' => '',
      'hide_empty' => 0,
      'empty_zero' => 0,
      'link_to_node' => 1,
      'exclude' => 0,
      'id' => 'title',
      'table' => 'node',
      'field' => 'title',
      'relationship' => 'none',
    ),
    'field_issue_assigned_to_uid' => array(
      'label' => 'Who',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'link_class' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'target' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'html' => 0,
        'strip_tags' => 0,
      ),
      'empty' => '',
      'hide_empty' => 0,
      'empty_zero' => 0,
      'link_to_node' => 0,
      'label_type' => 'custom',
      'format' => 'default',
      'multiple' => array(
        'group' => TRUE,
        'multiple_number' => '',
        'multiple_from' => '',
        'multiple_reversed' => FALSE,
      ),
      'exclude' => 0,
      'id' => 'field_issue_assigned_to_uid',
      'table' => 'node_data_field_issue_assigned_to',
      'field' => 'field_issue_assigned_to_uid',
      'relationship' => 'none',
    ),
    'tid' => array(
      'label' => 'Status',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'link_class' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'target' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'html' => 0,
        'strip_tags' => 0,
      ),
      'empty' => '',
      'hide_empty' => 0,
      'empty_zero' => 0,
      'type' => 'separator',
      'separator' => ', ',
      'link_to_taxonomy' => 1,
      'limit' => 1,
      'vids' => array(
        '1' => 1,
        '3' => 0,
        '2' => 0,
      ),
      'exclude' => 0,
      'id' => 'tid',
      'table' => 'term_node',
      'field' => 'tid',
      'relationship' => 'none',
    ),
    'field_project_start_value' => array(
      'label' => 'Start',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'link_class' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'target' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'html' => 0,
        'strip_tags' => 0,
      ),
      'empty' => '',
      'hide_empty' => 0,
      'empty_zero' => 0,
      'link_to_node' => 0,
      'label_type' => 'custom',
      'format' => 'default',
      'multiple' => array(
        'multiple_number' => '',
        'multiple_from' => '',
        'multiple_to' => '',
        'group' => '',
      ),
      'repeat' => array(
        'show_repeat_rule' => '',
      ),
      'fromto' => array(
        'fromto' => 'both',
      ),
      'exclude' => 0,
      'id' => 'field_project_start_value',
      'table' => 'node_data_field_project_start',
      'field' => 'field_project_start_value',
      'relationship' => 'none',
    ),
    'field_project_end_value' => array(
      'label' => 'Due',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'link_class' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'target' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'html' => 0,
        'strip_tags' => 0,
      ),
      'empty' => '',
      'hide_empty' => 0,
      'empty_zero' => 0,
      'link_to_node' => 0,
      'label_type' => 'custom',
      'format' => 'default',
      'multiple' => array(
        'multiple_number' => '',
        'multiple_from' => '',
        'multiple_to' => '',
        'group' => '',
      ),
      'repeat' => array(
        'show_repeat_rule' => '',
      ),
      'fromto' => array(
        'fromto' => 'both',
      ),
      'exclude' => 0,
      'id' => 'field_project_end_value',
      'table' => 'node_data_field_project_end',
      'field' => 'field_project_end_value',
      'relationship' => 'none',
    ),
    'field_us_priority_value' => array(
      'label' => 'Priority',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'link_class' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'target' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'html' => 0,
        'strip_tags' => 0,
      ),
      'empty' => '',
      'hide_empty' => 0,
      'empty_zero' => 0,
      'link_to_node' => 0,
      'label_type' => 'widget',
      'format' => 'default',
      'multiple' => array(
        'group' => TRUE,
        'multiple_number' => '',
        'multiple_from' => '',
        'multiple_reversed' => FALSE,
      ),
      'exclude' => 0,
      'id' => 'field_us_priority_value',
      'table' => 'node_data_field_us_priority',
      'field' => 'field_us_priority_value',
      'relationship' => 'none',
    ),
    'field_us_points_value' => array(
      'label' => 'Points',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'link_class' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'target' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'html' => 0,
        'strip_tags' => 0,
      ),
      'empty' => '',
      'hide_empty' => 0,
      'empty_zero' => 0,
      'link_to_node' => 0,
      'label_type' => 'widget',
      'format' => 'default',
      'multiple' => array(
        'group' => TRUE,
        'multiple_number' => '',
        'multiple_from' => '',
        'multiple_reversed' => FALSE,
      ),
      'exclude' => 0,
      'id' => 'field_us_points_value',
      'table' => 'node_data_field_us_points',
      'field' => 'field_us_points_value',
      'relationship' => 'none',
    ),
    'field_us_burned_points_value' => array(
      'label' => 'Burned points',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'link_class' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'target' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'html' => 0,
        'strip_tags' => 0,
      ),
      'empty' => '',
      'hide_empty' => 0,
      'empty_zero' => 0,
      'link_to_node' => 0,
      'label_type' => 'widget',
      'format' => 'default',
      'multiple' => array(
        'group' => TRUE,
        'multiple_number' => '',
        'multiple_from' => '',
        'multiple_reversed' => FALSE,
      ),
      'exclude' => 0,
      'id' => 'field_us_burned_points_value',
      'table' => 'node_data_field_us_burned_points',
      'field' => 'field_us_burned_points_value',
      'relationship' => 'none',
    ),
    'edit_node' => array(
      'label' => 'Edit link',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'link_class' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'target' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'html' => 0,
        'strip_tags' => 0,
      ),
      'empty' => '',
      'hide_empty' => 0,
      'empty_zero' => 0,
      'text' => '',
      'exclude' => 0,
      'id' => 'edit_node',
      'table' => 'node',
      'field' => 'edit_node',
      'relationship' => 'none',
    ),
    'field_issue_user_story_nid' => array(
      'label' => '',
      'alter' => array(
        'alter_text' => 0,
        'text' => '',
        'make_link' => 0,
        'path' => '',
        'link_class' => '',
        'alt' => '',
        'prefix' => '',
        'suffix' => '',
        'target' => '',
        'help' => '',
        'trim' => 0,
        'max_length' => '',
        'word_boundary' => 1,
        'ellipsis' => 1,
        'html' => 0,
        'strip_tags' => 0,
      ),
      'empty' => '',
      'hide_empty' => 0,
      'empty_zero' => 0,
      'link_to_node' => 0,
      'label_type' => 'none',
      'format' => 'default',
      'multiple' => array(
        'group' => TRUE,
        'multiple_number' => '',
        'multiple_from' => '',
        'multiple_reversed' => FALSE,
      ),
      'exclude' => 1,
      'id' => 'field_issue_user_story_nid',
      'table' => 'node_data_field_issue_user_story',
      'field' => 'field_issue_user_story_nid',
      'relationship' => 'none',
    ),
  ));
  $handler->override_option('sorts', array(
    'weight' => array(
      'order' => 'ASC',
      'id' => 'weight',
      'table' => 'term_data',
      'field' => 'weight',
      'override' => array(
        'button' => 'Override',
      ),
      'relationship' => 'none',
    ),
    'created' => array(
      'order' => 'ASC',
      'granularity' => 'second',
      'id' => 'created',
      'table' => 'node',
      'field' => 'created',
      'override' => array(
        'button' => 'Override',
      ),
      'relationship' => 'none',
    ),
  ));
  $handler->override_option('filters', array(
    'status_extra' => array(
      'operator' => '=',
      'value' => '',
      'group' => '0',
      'exposed' => FALSE,
      'expose' => array(
        'operator' => FALSE,
        'label' => '',
      ),
      'id' => 'status_extra',
      'table' => 'node',
      'field' => 'status_extra',
      'relationship' => 'none',
    ),
    'type' => array(
      'operator' => 'in',
      'value' => array(
        'issue' => 'issue',
      ),
      'group' => '0',
      'exposed' => FALSE,
      'expose' => array(
        'operator' => FALSE,
        'label' => '',
      ),
      'id' => 'type',
      'table' => 'node',
      'field' => 'type',
      'relationship' => 'none',
    ),
    'picg' => array(
      'operator' => '=',
      'value' => '',
      'group' => '0',
      'exposed' => FALSE,
      'expose' => array(
        'operator' => FALSE,
        'label' => '',
      ),
      'id' => 'picg',
      'table' => 'og_ancestry',
      'field' => 'picg',
      'relationship' => 'none',
    ),
  ));
  $handler->override_option('access', array(
    'type' => 'perm',
    'perm' => 'edit any issue content',
  ));
  $handler->override_option('cache', array(
    'type' => 'none',
  ));
  $handler->override_option('title', 'Bulk Operations');
  $handler->override_option('items_per_page', 0);
  $handler->override_option('distinct', 1);
  $handler->override_option('style_plugin', 'bulk');
  $handler->override_option('style_options', array(
    'grouping' => 'field_issue_user_story_nid',
    'override' => 1,
    'sticky' => 0,
    'order' => 'asc',
    'columns' => array(
      'title' => 'title',
      'field_issue_assigned_to_uid' => 'field_issue_assigned_to_uid',
      'tid' => 'tid',
      'field_project_start_value' => 'field_project_start_value',
      'field_project_end_value' => 'field_project_end_value',
      'field_us_priority_value' => 'field_us_priority_value',
      'field_us_points_value' => 'field_us_points_value',
      'field_us_burned_points_value' => 'field_us_burned_points_value',
      'edit_node' => 'edit_node',
      'field_issue_user_story_nid' => 'field_issue_user_story_nid',
    ),
    'info' => array(
      'title' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'field_issue_assigned_to_uid' => array(
        'separator' => '',
      ),
      'tid' => array(
        'separator' => '',
      ),
      'field_project_start_value' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'field_project_end_value' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'field_us_priority_value' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'field_us_points_value' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'field_us_burned_points_value' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'edit_node' => array(
        'separator' => '',
      ),
      'field_issue_user_story_nid' => array(
        'separator' => '',
      ),
    ),
    'default' => '-1',
    'execution_type' => '1',
    'display_type' => '0',
    'hide_select_all' => 0,
    'skip_confirmation' => 1,
    'display_result' => 1,
    'merge_single_action' => 1,
    'selected_operations' => array(
      'views_bulk_operations_delete_node_action' => 'views_bulk_operations_delete_node_action',
      'og_make_private_action' => 'og_make_private_action',
      'og_make_public_action' => 'og_make_public_action',
      'views_bulk_operations_fields_action' => 'views_bulk_operations_fields_action',
      'views_bulk_operations_taxonomy_action' => 'views_bulk_operations_taxonomy_action',
      'node_publish_action' => 'node_publish_action',
      'og_remove_group_action' => 'og_remove_group_action',
      'system_send_email_action' => 'system_send_email_action',
      'node_unpublish_action' => 'node_unpublish_action',
      'og_add_group_action' => 0,
      'node_assign_owner_action' => 0,
      'node_mass_update:a27b9efabcd054685a549378b174ad11' => 0,
      'system_message_action' => 0,
      'views_bulk_operations_action' => 0,
      'views_bulk_operations_script_action' => 0,
      'node_make_sticky_action' => 0,
      'node_make_unsticky_action' => 0,
      'node_mass_update:c4d3b28efb86fd703619a50b74d43794' => 0,
      'views_bulk_operations_argument_selector_action' => 0,
      'node_promote_action' => 0,
      'node_mass_update:14de7d028b4bffdf2b4a266562ca18ac' => 0,
      'node_mass_update:9c585624b9b3af0b4687d5f97f35e047' => 0,
      'system_goto_action' => 0,
      'og_remove_groups_action' => 0,
      'node_unpromote_action' => 0,
      'node_mass_update:8ce21b08bb8e773d10018b484fe4815e' => 0,
      'node_save_action' => 0,
      'node_mass_update:0ccad85c1ebe4c9ceada1aa64293b080' => 0,
      'node_unpublish_by_keyword_action' => 0,
      'pathauto_node_update_alias_multiple:620e193b20ba9caa374fea9ca0ad38f0' => 0,
    ),
    'views_bulk_operations_fields_action' => array(
      'php_code' => 0,
      'display_fields' => array(
        'field_project_short_name' => 'field_project_short_name',
        'field_project_start' => 'field_project_start',
        'field_project_end' => 'field_project_end',
        'field_us_role' => 'field_us_role',
        'field_us_confirmation' => 'field_us_confirmation',
        'field_us_conversation' => 'field_us_conversation',
        'field_us_conversation_image' => 'field_us_conversation_image',
        'field_us_priority' => 'field_us_priority',
        'field_us_points' => 'field_us_points',
        'field_us_burned_points' => 'field_us_burned_points',
        'field_issue_user_story' => 'field_issue_user_story',
        'field_issue_assigned_to' => 'field_issue_assigned_to',
      ),
      '_error_element_base' => 'style_options][views_bulk_operations_fields_action][',
    ),
  ));
  $handler = $view->new_display('block', 'Block issues by user story', 'block_1');
  $handler->override_option('access', array(
    'type' => 'none',
  ));
  $handler->override_option('title', 'Issues by user story');
  $handler->override_option('style_plugin', 'table');
  $handler->override_option('style_options', array(
    'grouping' => 'field_issue_user_story_nid',
    'override' => 1,
    'sticky' => 0,
    'order' => 'asc',
    'columns' => array(
      'title' => 'title',
      'field_issue_assigned_to_uid' => 'field_issue_assigned_to_uid',
      'tid' => 'tid',
      'field_project_start_value' => 'field_project_start_value',
      'field_project_end_value' => 'field_project_end_value',
      'field_us_priority_value' => 'field_us_priority_value',
      'field_us_points_value' => 'field_us_points_value',
      'field_us_burned_points_value' => 'field_us_burned_points_value',
      'edit_node' => 'edit_node',
      'field_issue_user_story_nid' => 'field_issue_user_story_nid',
    ),
    'info' => array(
      'title' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'field_issue_assigned_to_uid' => array(
        'separator' => '',
      ),
      'tid' => array(
        'separator' => '',
      ),
      'field_project_start_value' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'field_project_end_value' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'field_us_priority_value' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'field_us_points_value' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'field_us_burned_points_value' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'edit_node' => array(
        'separator' => '',
      ),
      'field_issue_user_story_nid' => array(
        'separator' => '',
      ),
    ),
    'default' => '-1',
  ));
  $handler->override_option('block_description', '');
  $handler->override_option('block_caching', -1);
  $handler = $view->new_display('block', 'Block issues by who', 'block_2');
  $handler->override_option('access', array(
    'type' => 'none',
  ));
  $handler->override_option('title', 'Issues by assigned team member');
  $handler->override_option('style_plugin', 'table');
  $handler->override_option('style_options', array(
    'grouping' => 'field_issue_assigned_to_uid',
    'override' => 1,
    'sticky' => 0,
    'order' => 'asc',
    'columns' => array(
      'title' => 'title',
      'field_issue_assigned_to_uid' => 'field_issue_assigned_to_uid',
      'tid' => 'tid',
      'field_project_start_value' => 'field_project_start_value',
      'field_project_end_value' => 'field_project_end_value',
      'field_us_priority_value' => 'field_us_priority_value',
      'field_us_points_value' => 'field_us_points_value',
      'field_us_burned_points_value' => 'field_us_burned_points_value',
      'edit_node' => 'edit_node',
      'field_issue_user_story_nid' => 'field_issue_user_story_nid',
    ),
    'info' => array(
      'title' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'field_issue_assigned_to_uid' => array(
        'separator' => '',
      ),
      'tid' => array(
        'separator' => '',
      ),
      'field_project_start_value' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'field_project_end_value' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'field_us_priority_value' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'field_us_points_value' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'field_us_burned_points_value' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'edit_node' => array(
        'separator' => '',
      ),
      'field_issue_user_story_nid' => array(
        'separator' => '',
      ),
    ),
    'default' => '-1',
  ));
  $handler->override_option('block_description', '');
  $handler->override_option('block_caching', -1);
  $handler = $view->new_display('block', 'Block issues by status', 'block_3');
  $handler->override_option('access', array(
    'type' => 'none',
  ));
  $handler->override_option('title', 'Issues by status');
  $handler->override_option('style_plugin', 'table');
  $handler->override_option('style_options', array(
    'grouping' => 'tid',
    'override' => 1,
    'sticky' => 0,
    'order' => 'asc',
    'columns' => array(
      'title' => 'title',
      'field_issue_assigned_to_uid' => 'field_issue_assigned_to_uid',
      'tid' => 'tid',
      'field_project_start_value' => 'field_project_start_value',
      'field_project_end_value' => 'field_project_end_value',
      'field_us_priority_value' => 'field_us_priority_value',
      'field_us_points_value' => 'field_us_points_value',
      'field_us_burned_points_value' => 'field_us_burned_points_value',
      'edit_node' => 'edit_node',
      'field_issue_user_story_nid' => 'field_issue_user_story_nid',
    ),
    'info' => array(
      'title' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'field_issue_assigned_to_uid' => array(
        'separator' => '',
      ),
      'tid' => array(
        'separator' => '',
      ),
      'field_project_start_value' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'field_project_end_value' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'field_us_priority_value' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'field_us_points_value' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'field_us_burned_points_value' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'edit_node' => array(
        'separator' => '',
      ),
      'field_issue_user_story_nid' => array(
        'separator' => '',
      ),
    ),
    'default' => '-1',
  ));
  $handler->override_option('block_description', '');
  $handler->override_option('block_caching', -1);

  $views[$view->name] = $view;

  // Exported view: team_members
  $view = new view;
  $view->name = 'team_members';
  $view->description = 'Simple Member listing for cck userreference field';
  $view->tag = 'og';
  $view->view_php = '';
  $view->base_table = 'users';
  $view->is_cacheable = FALSE;
  $view->api_version = 2;
  $view->disabled = FALSE; /* Edit this to true to make a default view disabled initially */
  $handler = $view->new_display('default', 'Defaults', 'default');
  $handler->override_option('fields', array(
    'name' => array(
      'id' => 'name',
      'table' => 'users',
      'field' => 'name',
      'label' => 'Name',
      'link_to_user' => 1,
      'relationship' => 'none',
    ),
    'uid' => array(
      'id' => 'uid',
      'table' => 'users',
      'field' => 'uid',
    ),
  ));
  $handler->override_option('sorts', array(
    'is_admin' => array(
      'id' => 'is_admin',
      'table' => 'og_uid',
      'field' => 'is_admin',
      'order' => 'DESC',
      'relationship' => 'none',
    ),
    'is_active' => array(
      'id' => 'is_active',
      'table' => 'og_uid',
      'field' => 'is_active',
      'order' => 'ASC',
      'relationship' => 'none',
    ),
    'name' => array(
      'id' => 'name',
      'table' => 'users',
      'field' => 'name',
      'order' => 'ASC',
      'relationship' => 'none',
    ),
  ));
  $handler->override_option('filters', array(
    'status' => array(
      'id' => 'status',
      'table' => 'users',
      'field' => 'status',
      'operator' => '=',
      'value' => 1,
      'group' => 0,
      'exposed' => FALSE,
      'expose' => array(
        'operator' => FALSE,
        'label' => '',
      ),
      'relationship' => 'none',
      'expose_button' => array(
        'button' => 'Expose',
      ),
    ),
    'uid' => array(
      'operator' => '=',
      'value' => '1',
      'group' => '0',
      'exposed' => FALSE,
      'expose' => array(
        'operator' => FALSE,
        'label' => '',
      ),
      'id' => 'uid',
      'table' => 'og_uid',
      'field' => 'uid',
      'relationship' => 'none',
    ),
  ));
  $handler->override_option('access', array(
    'type' => 'none',
  ));
  $handler->override_option('cache', array(
    'type' => 'none',
  ));
  $handler->override_option('empty_format', '1');
  $handler->override_option('items_per_page', 90);
  $handler->override_option('use_pager', '1');
  $handler->override_option('distinct', 0);
  $handler->override_option('style_plugin', 'table');
  $handler->override_option('style_options', array(
    'override' => 0,
    'order' => 'asc',
    'columns' => array(
      'name' => 'name',
      'managelink' => 'managelink',
      'managelinkadmin' => 'managelinkadmin',
      'is_manager' => 'name',
      'is_admin' => 'name',
      'is_active' => 'name',
    ),
    'info' => array(
      'name' => array(
        'sortable' => 0,
        'separator' => '&nbsp;',
      ),
      'managelink' => array(
        'separator' => '',
      ),
      'managelinkadmin' => array(
        'separator' => '',
      ),
      'is_manager' => array(
        'separator' => '',
      ),
      'is_admin' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'is_active' => array(
        'sortable' => 0,
        'separator' => '',
      ),
    ),
    'default' => '-1',
  ));
  $handler = $view->new_display('page', 'Page', 'page');
  $handler->override_option('path', 'og/users/%/list');
  $handler->override_option('menu', array(
    'type' => 'default tab',
    'title' => 'List',
    'description' => '',
    'weight' => '0',
    'name' => 'navigation',
  ));
  $handler->override_option('tab_options', array(
    'type' => 'normal',
    'title' => 'List',
    'description' => '',
    'weight' => '0',
    'name' => 'navigation',
  ));

  $views[$view->name] = $view;

  return $views;
}
