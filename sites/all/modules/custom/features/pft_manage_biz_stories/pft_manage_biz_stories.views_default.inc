<?php

/**
 * Implementation of hook_views_default_views().
 */
function pft_manage_biz_stories_views_default_views() {
  $views = array();

  // Exported view: list_biz_stories
  $view = new view;
  $view->name = 'list_biz_stories';
  $view->description = 'List business stories viewable by a project team';
  $view->tag = 'PFT';
  $view->view_php = '';
  $view->base_table = 'node';
  $view->is_cacheable = FALSE;
  $view->api_version = 2;
  $view->disabled = FALSE; /* Edit this to true to make a default view disabled initially */
  $handler = $view->new_display('default', 'Defaults', 'default');
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
        'button' => 'Override',
      ),
    ),
    'tid' => array(
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
      'type' => 'separator',
      'separator' => ', ',
      'link_to_taxonomy' => 0,
      'limit' => 1,
      'vids' => array(
        '4' => 4,
        '3' => 0,
        '1' => 0,
        '2' => 0,
      ),
      'exclude' => 1,
      'id' => 'tid',
      'table' => 'term_node',
      'field' => 'tid',
      'override' => array(
        'button' => 'Override',
      ),
      'relationship' => 'none',
    ),
    'edit_node' => array(
      'label' => '',
      'alter' => array(
        'alter_text' => 1,
        'text' => '<small>[[edit_node]]</small>',
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
      'override' => array(
        'button' => 'Override',
      ),
      'relationship' => 'none',
    ),
  ));
  $handler->override_option('sorts', array(
    'weight' => array(
      'order' => 'DESC',
      'id' => 'weight',
      'table' => 'term_data',
      'field' => 'weight',
      'override' => array(
        'button' => 'Override',
      ),
      'relationship' => 'none',
    ),
    'title' => array(
      'order' => 'ASC',
      'id' => 'title',
      'table' => 'node',
      'field' => 'title',
      'override' => array(
        'button' => 'Override',
      ),
      'relationship' => 'none',
    ),
  ));
  $handler->override_option('filters', array(
    'type' => array(
      'operator' => 'in',
      'value' => array(
        'biz_story' => 'biz_story',
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
      'id' => 'picg',
      'table' => 'og_ancestry',
      'field' => 'picg',
    ),
  ));
  $handler->override_option('access', array(
    'type' => 'none',
  ));
  $handler->override_option('cache', array(
    'type' => 'none',
  ));
  $handler->override_option('title', 'Biz model');
  $handler->override_option('items_per_page', 0);
  $handler->override_option('use_more', 0);
  $handler->override_option('use_more_always', 0);
  $handler->override_option('use_more_text', 'page view with bulk operations');
  $handler->override_option('style_plugin', 'table');
  $handler->override_option('style_options', array(
    'grouping' => 'tid',
    'override' => 0,
    'sticky' => 1,
    'order' => 'desc',
    'columns' => array(
      'title' => 'title',
      'tid' => 'tid',
      'edit_node' => 'title',
    ),
    'info' => array(
      'title' => array(
        'sortable' => 0,
        'separator' => ' ',
      ),
      'tid' => array(
        'separator' => '',
      ),
      'edit_node' => array(
        'separator' => '',
      ),
    ),
    'default' => '-1',
  ));
  $handler = $view->new_display('block', 'Block', 'block_1');
  $handler->override_option('block_description', '');
  $handler->override_option('block_caching', -1);
  $handler = $view->new_display('page', 'Bulk Operations Page', 'page_1');
  $handler->override_option('arguments', array(
    'group_nid' => array(
      'default_action' => 'empty',
      'style_plugin' => 'default_summary',
      'style_options' => array(),
      'wildcard' => 'all',
      'wildcard_substitution' => 'All',
      'title' => '',
      'breadcrumb' => '',
      'default_argument_type' => 'php',
      'default_argument' => '',
      'validate_type' => 'none',
      'validate_fail' => 'not found',
      'break_phrase' => 0,
      'not' => 0,
      'id' => 'group_nid',
      'table' => 'og_ancestry',
      'field' => 'group_nid',
      'validate_user_argument_type' => 'uid',
      'validate_user_roles' => array(
        '2' => 0,
        '3' => 0,
      ),
      'override' => array(
        'button' => 'Use default',
      ),
      'relationship' => 'none',
      'default_options_div_prefix' => '',
      'default_argument_fixed' => '',
      'default_argument_user' => 0,
      'default_argument_php' => 'return ',
      'validate_argument_node_type' => array(
        'project' => 0,
        'user_story' => 0,
        'issue' => 0,
        'role' => 0,
        'biz_story' => 0,
        'page' => 0,
        'story' => 0,
      ),
      'validate_argument_node_access' => 0,
      'validate_argument_nid_type' => 'nid',
      'validate_argument_vocabulary' => array(
        '4' => 0,
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
    'type' => array(
      'operator' => 'in',
      'value' => array(
        'biz_story' => 'biz_story',
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
  $handler->override_option('style_plugin', 'bulk');
  $handler->override_option('style_options', array(
    'grouping' => 'tid',
    'override' => 0,
    'sticky' => 1,
    'order' => 'asc',
    'columns' => array(
      'title' => 'title',
      'tid' => 'tid',
      'edit_node' => 'edit_node',
    ),
    'info' => array(
      'title' => array(
        'sortable' => 0,
        'separator' => '',
      ),
      'tid' => array(
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
      'og_add_group_action' => 'og_add_group_action',
      'views_bulk_operations_delete_node_action' => 'views_bulk_operations_delete_node_action',
      'og_make_private_action' => 'og_make_private_action',
      'og_make_public_action' => 'og_make_public_action',
      'views_bulk_operations_fields_action' => 'views_bulk_operations_fields_action',
      'views_bulk_operations_taxonomy_action' => 'views_bulk_operations_taxonomy_action',
      'og_remove_group_action' => 'og_remove_group_action',
      'node_mass_update:0ccad85c1ebe4c9ceada1aa64293b080' => 'node_mass_update:0ccad85c1ebe4c9ceada1aa64293b080',
      'node_unpublish_action' => 'node_unpublish_action',
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
      'node_publish_action' => 0,
      'system_goto_action' => 0,
      'og_remove_groups_action' => 0,
      'node_unpromote_action' => 0,
      'node_mass_update:8ce21b08bb8e773d10018b484fe4815e' => 0,
      'node_save_action' => 0,
      'system_send_email_action' => 0,
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
  $handler->override_option('path', 'view/list/biz-stories/%');
  $handler->override_option('menu', array(
    'type' => 'none',
    'title' => '',
    'description' => '',
    'weight' => 0,
    'name' => 'navigation',
  ));
  $handler->override_option('tab_options', array(
    'type' => 'none',
    'title' => '',
    'description' => '',
    'weight' => 0,
    'name' => 'navigation',
  ));

  $views[$view->name] = $view;

  return $views;
}
