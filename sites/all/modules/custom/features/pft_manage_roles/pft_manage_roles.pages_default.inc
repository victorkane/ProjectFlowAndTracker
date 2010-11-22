<?php

/**
 * Implementation of hook_default_page_manager_handlers().
 */
function pft_manage_roles_default_page_manager_handlers() {
  $export = array();
  $handler = new stdClass;
  $handler->disabled = FALSE; /* Edit this to true to make a default handler disabled initially */
  $handler->api_version = 1;
  $handler->name = 'node_view_panel_context_6';
  $handler->task = 'node_view';
  $handler->subtask = '';
  $handler->handler = 'panel_context';
  $handler->weight = -26;
  $handler->conf = array(
    'title' => 'Role variant',
    'no_blocks' => 0,
    'pipeline' => 'standard',
    'css_id' => '',
    'css' => '',
    'contexts' => array(
      0 => array(
        'name' => 'node',
        'id' => 1,
        'identifier' => 'Node_4',
        'keyword' => 'node_4',
        'context_settings' => array(
          'node' => 'Ut venenatis convallis tortor... [nid: 4]',
          'nid' => '4',
        ),
      ),
    ),
    'relationships' => array(
      0 => array(
        'context' => 'argument_nid_1',
        'name' => 'node_from_noderef',
        'id' => 1,
        'identifier' => 'User story node from reference',
        'keyword' => 'user-story-nodereference',
        'relationship_settings' => array(
          'field_name' => 'field_issue_user_story',
        ),
      ),
    ),
    'access' => array(
      'plugins' => array(
        0 => array(
          'name' => 'node_type',
          'settings' => array(
            'type' => array(
              'role' => 'role',
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
  $display->layout = 'pft_column_two';
  $display->layout_settings = array();
  $display->panel_settings = array(
    'style_settings' => array(
      'default' => array(
        'corner_location' => 'pane',
      ),
      'left' => NULL,
      'middle' => NULL,
      'right' => NULL,
      'main' => NULL,
      'aside_beta' => NULL,
      'header_beta' => array(
        'title' => '',
        'filling_tabs' => 'disabled',
      ),
      'aside_alpha' => NULL,
      'main1' => array(
        'title' => '',
        'filling_tabs' => 'disabled',
      ),
      'header_alpha' => NULL,
      'main2' => NULL,
      'main3' => NULL,
    ),
    'style' => 'rounded_corners',
    'header_alpha' => array(
      'style' => 'default',
    ),
    'header_beta' => array(
      'style' => 'tabs',
    ),
    'main1' => array(
      'style' => 'tabs',
    ),
  );
  $display->cache = array();
  $display->title = 'Role: %node:title';
  $display->content = array();
  $display->panels = array();
    $pane = new stdClass;
    $pane->pid = 'new-1';
    $pane->panel = 'aside_beta';
    $pane->type = 'block';
    $pane->subtype = 'views-list_roles-block_1';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'override_title' => 1,
      'override_title_text' => 'Roles',
    );
    $pane->cache = array();
    $pane->style = array(
      'settings' => NULL,
    );
    $pane->css = array();
    $pane->extras = array();
    $pane->position = 0;
    $display->content['new-1'] = $pane;
    $display->panels['aside_beta'][0] = 'new-1';
    $pane = new stdClass;
    $pane->pid = 'new-2';
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
      'settings' => NULL,
    );
    $pane->css = array();
    $pane->extras = array();
    $pane->position = 1;
    $display->content['new-2'] = $pane;
    $display->panels['aside_beta'][1] = 'new-2';
    $pane = new stdClass;
    $pane->pid = 'new-3';
    $pane->panel = 'aside_beta';
    $pane->type = 'node_author';
    $pane->subtype = 'node_author';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'link' => 1,
      'context' => 'argument_nid_1',
      'override_title' => 0,
      'override_title_text' => '',
    );
    $pane->cache = array();
    $pane->style = array(
      'settings' => NULL,
    );
    $pane->css = array();
    $pane->extras = array();
    $pane->position = 2;
    $display->content['new-3'] = $pane;
    $display->panels['aside_beta'][2] = 'new-3';
    $pane = new stdClass;
    $pane->pid = 'new-4';
    $pane->panel = 'header_alpha';
    $pane->type = 'node_title';
    $pane->subtype = 'node_title';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'link' => 0,
      'context' => 'argument_nid_1',
      'override_title' => 1,
      'override_title_text' => 'Role',
    );
    $pane->cache = array();
    $pane->style = array(
      'settings' => array(
        'id' => '',
        'class' => '',
        'grid' => '24',
        'prefix' => '',
        'suffix' => '',
        'pad' => '',
        'push' => '',
        'pull' => '',
        'alpha' => 1,
        'omega' => 1,
      ),
      'style' => 'precision_grid',
    );
    $pane->css = array(
      'css_id' => '',
      'css_class' => 'title',
    );
    $pane->extras = array();
    $pane->position = 0;
    $display->content['new-4'] = $pane;
    $display->panels['header_alpha'][0] = 'new-4';
    $pane = new stdClass;
    $pane->pid = 'new-5';
    $pane->panel = 'header_alpha';
    $pane->type = 'node_terms';
    $pane->subtype = 'node_terms';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'vid' => '0',
      'term_format' => 'ul',
      'link' => 1,
      'term_delimiter' => ', ',
      'context' => 'argument_nid_1',
      'override_title' => 0,
      'override_title_text' => '',
    );
    $pane->cache = array();
    $pane->style = array(
      'settings' => array(
        'id' => '',
        'class' => '',
        'grid' => '10',
        'prefix' => '',
        'suffix' => '',
        'pad' => '',
        'push' => '',
        'pull' => '',
        'alpha' => 1,
        'omega' => 1,
      ),
      'style' => 'precision_grid',
    );
    $pane->css = array();
    $pane->extras = array();
    $pane->position = 1;
    $display->content['new-5'] = $pane;
    $display->panels['header_alpha'][1] = 'new-5';
    $pane = new stdClass;
    $pane->pid = 'new-6';
    $pane->panel = 'main1';
    $pane->type = 'node_body';
    $pane->subtype = 'node_body';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'context' => 'argument_nid_1',
      'override_title' => 1,
      'override_title_text' => 'Description',
    );
    $pane->cache = array();
    $pane->style = array(
      'settings' => NULL,
    );
    $pane->css = array();
    $pane->extras = array();
    $pane->position = 0;
    $display->content['new-6'] = $pane;
    $display->panels['main1'][0] = 'new-6';
    $pane = new stdClass;
    $pane->pid = 'new-7';
    $pane->panel = 'main1';
    $pane->type = 'content_fieldgroup';
    $pane->subtype = 'issue:group_issue_metrics';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'label' => 'normal',
      'format' => 'simple',
      'empty' => '',
      'context' => 'argument_nid_1',
      'override_title' => 0,
      'override_title_text' => '',
    );
    $pane->cache = array();
    $pane->style = array(
      'settings' => NULL,
    );
    $pane->css = array();
    $pane->extras = array();
    $pane->position = 1;
    $display->content['new-7'] = $pane;
    $display->panels['main1'][1] = 'new-7';
    $pane = new stdClass;
    $pane->pid = 'new-8';
    $pane->panel = 'main2';
    $pane->type = 'node_links';
    $pane->subtype = 'node_links';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'override_title' => 0,
      'override_title_text' => '',
      'teaser' => 1,
      'identifier' => '',
      'link' => 1,
      'context' => 'argument_nid_1',
    );
    $pane->cache = array();
    $pane->style = array(
      'settings' => NULL,
    );
    $pane->css = array(
      'css_id' => '',
      'css_class' => 'clear-block',
    );
    $pane->extras = array();
    $pane->position = 0;
    $display->content['new-8'] = $pane;
    $display->panels['main2'][0] = 'new-8';
    $pane = new stdClass;
    $pane->pid = 'new-9';
    $pane->panel = 'main2';
    $pane->type = 'block';
    $pane->subtype = 'views-list_user_stories-block_4';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'override_title' => 1,
      'override_title_text' => 'User Stories for this Role',
    );
    $pane->cache = array();
    $pane->style = array(
      'settings' => NULL,
    );
    $pane->css = array();
    $pane->extras = array();
    $pane->position = 1;
    $display->content['new-9'] = $pane;
    $display->panels['main2'][1] = 'new-9';
    $pane = new stdClass;
    $pane->pid = 'new-10';
    $pane->panel = 'main3';
    $pane->type = 'node_created';
    $pane->subtype = 'node_created';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'format' => 'large',
      'context' => 'argument_nid_1',
      'override_title' => 0,
      'override_title_text' => '',
    );
    $pane->cache = array();
    $pane->style = array(
      'settings' => NULL,
    );
    $pane->css = array();
    $pane->extras = array();
    $pane->position = 0;
    $display->content['new-10'] = $pane;
    $display->panels['main3'][0] = 'new-10';
    $pane = new stdClass;
    $pane->pid = 'new-11';
    $pane->panel = 'main3';
    $pane->type = 'node_updated';
    $pane->subtype = 'node_updated';
    $pane->shown = TRUE;
    $pane->access = array();
    $pane->configuration = array(
      'format' => 'large',
      'context' => 'argument_nid_1',
      'override_title' => 0,
      'override_title_text' => '',
    );
    $pane->cache = array();
    $pane->style = array(
      'settings' => NULL,
    );
    $pane->css = array();
    $pane->extras = array();
    $pane->position = 1;
    $display->content['new-11'] = $pane;
    $display->panels['main3'][1] = 'new-11';
  $display->hide_title = PANELS_TITLE_FIXED;
  $display->title_pane = '0';
  $handler->conf['display'] = $display;

  $export['node_view_panel_context_6'] = $handler;
  return $export;
}
