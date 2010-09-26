<?php

/**
 * Implementation of hook_default_page_manager_handlers().
 */
function manage_projects_default_page_manager_handlers() {
  $export = array();
  $handler = new stdClass;
  $handler->disabled = FALSE; /* Edit this to true to make a default handler disabled initially */
  $handler->api_version = 1;
  $handler->name = 'node_view_panel_context_3';
  $handler->task = 'node_view';
  $handler->subtask = '';
  $handler->handler = 'panel_context';
  $handler->weight = -29;
  $handler->conf = array(
    'title' => 'Project variant',
    'no_blocks' => 0,
    'pipeline' => 'standard',
    'css_id' => '',
    'css' => '',
    'contexts' => array(
      0 => array(
        'name' => 'term',
        'id' => 1,
        'identifier' => 'New',
        'keyword' => 'term',
        'context_settings' => array(
          'vid' => '1',
          'taxonomy' => array(
            1 => 'New',
            2 => '',
          ),
          'tid' => '1',
        ),
      ),
      1 => array(
        'name' => 'term',
        'id' => 2,
        'identifier' => 'In progress',
        'keyword' => 'in_progress',
        'context_settings' => array(
          'vid' => '1',
          'taxonomy' => array(
            1 => 'In progress',
            2 => '',
          ),
          'tid' => '3',
        ),
      ),
      2 => array(
        'name' => 'term',
        'id' => 3,
        'identifier' => 'Ready',
        'keyword' => 'ready',
        'context_settings' => array(
          'vid' => '1',
          'taxonomy' => array(
            1 => 'Ready',
            2 => '',
          ),
          'tid' => '2',
        ),
      ),
      3 => array(
        'name' => 'term',
        'id' => 4,
        'identifier' => 'Accepted',
        'keyword' => 'accepted',
        'context_settings' => array(
          'vid' => '1',
          'taxonomy' => array(
            1 => 'Accepted',
            2 => '',
          ),
          'tid' => '4',
        ),
      ),
    ),
    'relationships' => array(),
    'access' => array(
      'plugins' => array(
        0 => array(
          'name' => 'node_type',
          'settings' => array(
            'type' => array(
              'project' => 'project',
            ),
          ),
          'context' => 'argument_nid_1',
          'not' => FALSE,
        ),
      ),
      'logic' => 'and',
    ),
  );
  $display = new panels_display;
  $display->api_version = 1;
  $display->layout = 'precision_column_three';
  $display->layout_settings = array();
  $display->panel_settings = array(
    'style_settings' => array(
      'default' => NULL,
      'main' => array(
        'title' => '',
        'filling_tabs' => 'disabled',
      ),
      'aside_first' => NULL,
      'aside_second' => NULL,
      'header_alpha' => NULL,
      'header_beta' => NULL,
      'aside_alpha' => NULL,
      'aside_beta' => NULL,
    ),
    'main' => array(
      'style' => 'tabs',
    ),
  );
  $display->cache = array();
  $display->title = '';
  $display->content = array();
  $display->panels = array();
    $pane = new stdClass;
    $pane->api_version = 1;
    $pane->pid = 'new-1';
    $pane->panel = 'aside_beta';
    $pane->type = 'block';
    $pane->subtype = 'og-0';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'override_title' => 0,
      'override_title_text' => '',
    );
    $pane->cache = array();
    $pane->style = array(
      'style' => 'rounded_corners',
      'settings' => NULL,
    );
    $pane->css = array();
    $pane->extras = array();
    $pane->position = 0;
    $display->content['new-1'] = $pane;
    $display->panels['aside_beta'][0] = 'new-1';
    $pane = new stdClass;
    $pane->api_version = 1;
    $pane->pid = 'new-2';
    $pane->panel = 'aside_beta';
    $pane->type = 'block';
    $pane->subtype = 'og_views-1';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'override_title' => 0,
      'override_title_text' => '',
    );
    $pane->cache = array();
    $pane->style = array(
      'settings' => NULL,
      'style' => 'default',
    );
    $pane->css = array();
    $pane->extras = array();
    $pane->position = 1;
    $display->content['new-2'] = $pane;
    $display->panels['aside_beta'][1] = 'new-2';
    $pane = new stdClass;
    $pane->api_version = 1;
    $pane->pid = 'new-3';
    $pane->panel = 'header_beta';
    $pane->type = 'node_content';
    $pane->subtype = 'node_content';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'links' => 1,
      'page' => 1,
      'no_extras' => 0,
      'override_title' => 0,
      'override_title_text' => '',
      'identifier' => '',
      'link' => 0,
      'leave_node_title' => 0,
      'build_mode' => 'full',
      'context' => 'argument_nid_1',
    );
    $pane->cache = array();
    $pane->style = array(
      'settings' => NULL,
    );
    $pane->css = array();
    $pane->extras = array();
    $pane->position = 0;
    $display->content['new-3'] = $pane;
    $display->panels['header_beta'][0] = 'new-3';
    $pane = new stdClass;
    $pane->api_version = 1;
    $pane->pid = 'new-4';
    $pane->panel = 'main';
    $pane->type = 'views';
    $pane->subtype = 'list_user_stories';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'override_pager_settings' => 0,
      'use_pager' => 0,
      'nodes_per_page' => '0',
      'pager_id' => '',
      'offset' => '0',
      'more_link' => 0,
      'feed_icons' => 0,
      'panel_args' => 0,
      'link_to_view' => 0,
      'args' => '',
      'url' => '',
      'display' => 'block_2',
      'override_title' => 1,
      'override_title_text' => 'Bulk Operations',
    );
    $pane->cache = array();
    $pane->style = array(
      'settings' => NULL,
    );
    $pane->css = array();
    $pane->extras = array();
    $pane->position = 0;
    $display->content['new-4'] = $pane;
    $display->panels['main'][0] = 'new-4';
    $pane = new stdClass;
    $pane->api_version = 1;
    $pane->pid = 'new-5';
    $pane->panel = 'main';
    $pane->type = 'views';
    $pane->subtype = 'list_user_stories';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'override_pager_settings' => 0,
      'use_pager' => 0,
      'nodes_per_page' => '0',
      'pager_id' => '',
      'offset' => '0',
      'more_link' => 0,
      'feed_icons' => 0,
      'panel_args' => 0,
      'link_to_view' => 0,
      'args' => '',
      'url' => '',
      'display' => 'block_1',
      'override_title' => 1,
      'override_title_text' => 'New',
      'context' => array(
        0 => 'context_term_1.name',
      ),
    );
    $pane->cache = array();
    $pane->style = array(
      'style' => 'default',
      'settings' => NULL,
    );
    $pane->css = array(
      'css_id' => '',
      'css_class' => 'grid-36',
    );
    $pane->extras = array();
    $pane->position = 1;
    $display->content['new-5'] = $pane;
    $display->panels['main'][1] = 'new-5';
    $pane = new stdClass;
    $pane->api_version = 1;
    $pane->pid = 'new-6';
    $pane->panel = 'main';
    $pane->type = 'views';
    $pane->subtype = 'list_user_stories';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'override_pager_settings' => 0,
      'use_pager' => 0,
      'nodes_per_page' => '0',
      'pager_id' => '',
      'offset' => '0',
      'more_link' => 0,
      'feed_icons' => 0,
      'panel_args' => 0,
      'link_to_view' => 0,
      'args' => '',
      'url' => '',
      'display' => 'block_1',
      'context' => array(
        0 => 'context_term_3.name',
      ),
      'override_title' => 1,
      'override_title_text' => 'Ready',
    );
    $pane->cache = array();
    $pane->style = array(
      'settings' => NULL,
    );
    $pane->css = array();
    $pane->extras = array();
    $pane->position = 2;
    $display->content['new-6'] = $pane;
    $display->panels['main'][2] = 'new-6';
    $pane = new stdClass;
    $pane->api_version = 1;
    $pane->pid = 'new-7';
    $pane->panel = 'main';
    $pane->type = 'views';
    $pane->subtype = 'list_user_stories';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'override_pager_settings' => 0,
      'use_pager' => 0,
      'nodes_per_page' => '0',
      'pager_id' => '',
      'offset' => '0',
      'more_link' => 0,
      'feed_icons' => 0,
      'panel_args' => 0,
      'link_to_view' => 0,
      'args' => '',
      'url' => '',
      'display' => 'block_1',
      'context' => array(
        0 => 'context_term_2.name',
      ),
      'override_title' => 1,
      'override_title_text' => 'In progress',
    );
    $pane->cache = array();
    $pane->style = array(
      'settings' => NULL,
    );
    $pane->css = array();
    $pane->extras = array();
    $pane->position = 3;
    $display->content['new-7'] = $pane;
    $display->panels['main'][3] = 'new-7';
    $pane = new stdClass;
    $pane->api_version = 1;
    $pane->pid = 'new-8';
    $pane->panel = 'main';
    $pane->type = 'views';
    $pane->subtype = 'list_user_stories';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'override_pager_settings' => 0,
      'use_pager' => 0,
      'nodes_per_page' => '0',
      'pager_id' => '',
      'offset' => '0',
      'more_link' => 0,
      'feed_icons' => 0,
      'panel_args' => 0,
      'link_to_view' => 0,
      'args' => '',
      'url' => '',
      'display' => 'block_1',
      'context' => array(
        0 => 'context_term_4.name',
      ),
      'override_title' => 1,
      'override_title_text' => 'Accepted',
    );
    $pane->cache = array();
    $pane->style = array(
      'settings' => NULL,
    );
    $pane->css = array();
    $pane->extras = array();
    $pane->position = 4;
    $display->content['new-8'] = $pane;
    $display->panels['main'][4] = 'new-8';
  $display->hide_title = PANELS_TITLE_FIXED;
  $display->title_pane = 'new-3';
  $handler->conf['display'] = $display;

  $export['node_view_panel_context_3'] = $handler;
  return $export;
}
