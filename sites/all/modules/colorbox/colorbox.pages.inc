<?php
// $Id: colorbox.pages.inc,v 1.2 2010/04/22 17:37:11 frjo Exp $

/**
 * @file
 * User page callback file for the colorbox module.
 */

/**
 * Menu callback for colorbox_login.
 */
function colorbox_login() {
  $form_id = variable_get('colorbox_login_form', '');
  colorbox_form_page($form_id);
}

/**
 * Menu callback for colorbox_form_page.
 */
function colorbox_form_page($form_id) {
  $GLOBALS['devel_shutdown'] = FALSE; // Prevent devel module from spewing.

  switch ($form_id) {
    case 'contact_mail_page':
      module_load_include('inc', 'contact', 'contact.pages');
      print contact_site_page();
      break;
    default:
      $form = drupal_get_form($form_id);
      if (!empty($form)) {
        print $form;
      }
  }

  exit;
}
