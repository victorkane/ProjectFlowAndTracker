<?php

/**
 * Implementation of hook_views_default_views().
 */
function pft_manage_prj_issues_views_default_views() {
  $views = array();

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
      'value' => '0',
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
