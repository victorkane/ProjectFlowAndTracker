<?php
// $Id: theme-settings.php,v 1.6.2.20 2010/04/23 18:44:58 sign Exp $

/**
 * @file
 * The theme settings
 */

/**
 * Implementation of THEMEHOOK_settings() function.
 *
 * @param $saved_settings
 *   array An array of saved settings for this theme.
 * @return
 *   array A form array.
 */
function rootcandy_settings($saved_settings, $subtheme_defaults = array()) {

  // Get the default values from the .info file.
  $themes = list_themes();
  $defaults = $themes['rootcandy']->info['settings'];

  // Allow a subtheme to override the default values.
  $defaults = array_merge($defaults, $subtheme_defaults);

  // Merge the saved variables and their default values.
  $settings = array_merge($defaults, $saved_settings);

  // Create the form widgets using Forms API
  $form['header'] = array(
    '#type' => 'fieldset',
    '#title' => t('Header'),
    '#weight' => 1,
    '#collapsible' => TRUE,
    '#collapsed' => TRUE,
  );
  $form['header']['rootcandy_header_display'] = array(
    '#type' => 'checkbox',
    '#title' => t('Disable header'),
    '#default_value' => $settings['rootcandy_header_display'],
  );
  $form['header']['rootcandy_hide_panel'] = array(
    '#type' => 'checkbox',
    '#title' => t('Disable sliding panel'),
    '#default_value' => $settings['rootcandy_hide_panel'],
  );
  $form['dashboard'] = array(
    '#type' => 'fieldset',
    '#title' => t('Dashboard'),
    '#weight' => 1,
    '#collapsible' => TRUE,
    '#collapsed' => TRUE,
  );
  $form['dashboard']['rootcandy_dashboard_display'] = array(
    '#type' => 'checkbox',
    '#title' => t('Disable dashboard regions'),
    '#default_value' => $settings['rootcandy_dashboard_display'],
  );
  $form['dashboard']['rootcandy_dashboard_help'] = array(
    '#type' => 'select',
    '#options' => array('left' => t('Left'), 'right' => t('Right'), 'content' => t('Content')),
    '#title' => t('Help box position'),
    '#default_value' => $settings['rootcandy_dashboard_help'],
  );
  $form['dashboard']['rootcandy_dashboard_messages'] = array(
    '#type' => 'select',
    '#options' => array('left' => t('Left'), 'right' => t('Right'), 'content' => t('Content')),
    '#title' => t('Messages box position'),
    '#default_value' => $settings['rootcandy_dashboard_messages'],
  );
  $form['dashboard']['rootcandy_dashboard_content_display'] = array(
    '#type' => 'checkbox',
    '#title' => t('Disable content on a dashboard'),
    '#default_value' => $settings['rootcandy_dashboard_content_display'],
  );

  $form['navigation'] = array(
    '#type' => 'fieldset',
    '#title' => t('Navigation'),
    '#weight' => 1,
    '#collapsible' => TRUE,
    '#collapsed' => TRUE,
  );
  // Create the form widgets using Forms API
  $form['navigation']['rootcandy_navigation_icons'] = array(
    '#type' => 'checkbox',
    '#title' => t('Disable icons for main navigation'),
    '#default_value' => $settings['rootcandy_navigation_icons'],
  );


  $form['navigation']['rootcandy_navigation_icons_size'] = array(
    '#type' => 'select',
    '#options' => array(16 => 16, 24 => 24, 32 => 32),
    '#title' => t('Set icons size for main navigation'),
    '#default_value' => $settings['rootcandy_navigation_icons_size'],
  );

  $menu_options = array_merge(array('_rootcandy_default_navigation' => t('default navigation')), menu_get_menus());

  if (!isset($settings['rootcandy_navigation_source_admin'])) {
    $settings['rootcandy_navigation_source_admin'] = '_rootcandy_default_navigation';
  }

  $form['navigation']['rootcandy_superuser_menu'] = array(
    '#type' => 'fieldset',
    '#title' => t('Super user (uid 1) menu'),
    '#weight' => 1,
    '#collapsible' => TRUE,
    '#collapsed' => TRUE,
  );

  $form['navigation']['rootcandy_superuser_menu']['rootcandy_navigation_source_admin'] = array(
    '#type' => 'select',
    '#default_value' => $settings['rootcandy_navigation_source_admin'],
    '#options' => $menu_options,
    '#tree' => FALSE,
  );

  $primary_options = array(
    NULL => t('None'),
  );

  $primary_options = array_merge($primary_options, $menu_options);

  $form['navigation']['role-weights'] = array(
    '#type' => 'fieldset',
    '#title' => t('Menu by role and weights'),
    '#weight' => 2,
    '#collapsible' => TRUE,
    '#collapsed' => TRUE,
  );

  $roles = user_roles(FALSE);
  $max_weight = 0;
  foreach ($roles as $rid => $role) {
    if (empty($settings['rootcandy_navigation_source_'. $rid])) $settings['rootcandy_navigation_source_'. $rid] = '';

    $form['navigation']['nav-by-role']['rootcandy_navigation_source_'. $rid] = array(
      '#type' => 'select',
      '#default_value' => $settings['rootcandy_navigation_source_'. $rid],
      '#options' => $primary_options,
      '#tree' => FALSE,
    );

    // check the highest weight for later use
    if (isset($settings['role-weight-'. $rid])) {
      if ($max_weight < $settings['role-weight-'. $rid]) {
        $max_weight = $settings['role-weight-'. $rid];
      }
    }
  }

  $form['navigation']['custom-icons'] = array(
    '#type' => 'fieldset',
    '#title' => t('Custom icons'),
    '#weight' => 1,
    '#collapsible' => TRUE,
    '#collapsed' => TRUE,
  );

  $form['navigation']['custom-icons']['rootcandy_navigation_custom_icons'] = array(
    '#type' => 'textarea',
    '#title' => t('Custom icons'),
    '#default_value' => $settings['rootcandy_navigation_custom_icons'],
    '#description' => t('Format: menu href|icon path (relative to drupal root) - one item per row. eg. admin/build|files/myicons/admin-build.png'),
    '#required' => FALSE
  );

  // Create the form widgets using Forms API
  $form['Misc'] = array(
    '#type' => 'fieldset',
    '#title' => t('Misc'),
    '#weight' => 1,
    '#collapsible' => TRUE,
    '#collapsed' => TRUE,
  );
  $form['Misc']['rootcandy_help_display'] = array(
    '#type' => 'checkbox',
    '#title' => t('Disable help'),
    '#default_value' => $settings['rootcandy_help_display'],
  );
  $form['Misc']['rootcandy_hide_author'] = array(
    '#type' => 'checkbox',
    '#title' => t('Hide author footer message'),
    '#default_value' => $settings['rootcandy_hide_author'],
  );

  $max_weight = (isset($max_weight)) ? $max_weight : 100;
  foreach ($roles as $rid => $role) {
    if (empty($settings['role-weight-'. $rid])) $settings['role-weight-'. $rid] = '';
    if (!$weight = $settings['role-weight-'. $rid]) {
      $weight = ++$max_weight;
    }
    $data = array($role);
    $form['rows'][$rid]['data'] = array('#type' => 'value', '#value' => $data);
    $form['rows'][$rid]['role-weight-'. $rid] = array(
      '#type' => 'textfield',
      '#size' => 5,
      '#default_value' => $weight,
      '#attributes' => array('class' => 'weight'),
    );
  }

  // Return the additional form widgets
  return $form;
}