<?php

/**
 * Implementation of hook_user_default_permissions().
 */
function pft_manage_roles_user_default_permissions() {
  $permissions = array();

  // Exported permission: create role content
  $permissions['create role content'] = array(
    'name' => 'create role content',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'authenticated user',
    ),
  );

  // Exported permission: edit own role content
  $permissions['edit own role content'] = array(
    'name' => 'edit own role content',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'authenticated user',
    ),
  );

  return $permissions;
}
