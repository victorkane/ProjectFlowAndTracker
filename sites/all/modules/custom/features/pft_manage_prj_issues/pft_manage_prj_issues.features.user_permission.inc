<?php

/**
 * Implementation of hook_user_default_permissions().
 */
function pft_manage_prj_issues_user_default_permissions() {
  $permissions = array();

  // Exported permission: create issue content
  $permissions['create issue content'] = array(
    'name' => 'create issue content',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'authenticated user',
    ),
  );

  // Exported permission: edit own issue content
  $permissions['edit own issue content'] = array(
    'name' => 'edit own issue content',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'authenticated user',
    ),
  );

  return $permissions;
}
