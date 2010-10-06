<?php

/**
 * Implementation of hook_user_default_permissions().
 */
function pft_manage_biz_stories_user_default_permissions() {
  $permissions = array();

  // Exported permission: create biz_story content
  $permissions['create biz_story content'] = array(
    'name' => 'create biz_story content',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'authenticated user',
    ),
  );

  // Exported permission: edit own biz_story content
  $permissions['edit own biz_story content'] = array(
    'name' => 'edit own biz_story content',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'authenticated user',
    ),
  );

  return $permissions;
}
