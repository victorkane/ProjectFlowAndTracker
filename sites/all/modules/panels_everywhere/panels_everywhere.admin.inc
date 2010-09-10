<?php
// $Id: panels_everywhere.admin.inc,v 1.5 2010/07/26 18:29:51 merlinofchaos Exp $

/**
 * @file
 * Contains administrative pages for the Panels Everywhere module.
 */

function panels_everywhere_settings_page() {
  $form = array();

  ctools_include('dependent');
  $form['panels_everywhere_site_template_enabled'] = array(
    '#title' => t('Enable Panels Everywhere site template'),
    '#type' => 'checkbox',
    '#default_value' => variable_get('panels_everywhere_site_template_enabled', FALSE),
    '#description' => t('This will enable a page in the page manager pages list that allows you to "wrap" any page in a panels display. You may use variants on that page to check site data such as the URL and apply wrappers selectively.'),
  );
  $form['panels_everywhere_site_template_enabled_admin'] = array(
    '#title' => t('Enable Panels Everywhere site template for the admin theme'),
    '#type' => 'checkbox',
    '#default_value' => variable_get('panels_everywhere_site_template_enabled_admin', FALSE),
    '#description' => t('This will also enable the site template for your admin theme. Note that if your admin theme is the same as your site theme, the site_template will be used regardless of this setting. If you do not wish to use the site_template with your admin theme, you must select a different admin theme at administer >> site configuration >> administration theme.'),
    '#process' => array('ctools_dependent_process'),
    '#dependency' => array('edit-panels-everywhere-site-template-enabled' => array(1)),
  );
/* @todo
  $form['panels_everywhere_override_blocks'] = array(
    '#title' => t('Override the blocks administration page'),
    '#type' => 'checkbox',
    '#default_value' => variable_get('panels_everywhere_override_blocks', FALSE),
    '#description' => t('If checked, the standard Drupal block administration page will be replaced with the site template page manager page.'),
    '#process' => array('ctools_dependent_process'),
    '#dependency' => array('edit-panels-everywhere-site-template-enabled' => array(1)),
  );
*/

  $form['panels_everywhere_provide_sample'] = array(
    '#title' => t('Provide a sample variant for the site template'),
    '#type' => 'checkbox',
    '#default_value' => variable_get('panels_everywhere_provide_sample', FALSE),
    '#description' => t('If checked, the site template in the page administration will come with a sample variant pre-created with the minimal options, to help get you started faster. It is recommended you use this on a new installation, and once you are comfortable with Panels Everywhere, you can turn this off again to get it out of the way.'),
    '#process' => array('ctools_dependent_process'),
    '#dependency' => array('edit-panels-everywhere-site-template-enabled' => array(1)),
  );

  $form['panels_everywhere_override_page_tpl'] = array(
    '#title' => t('Override the page template'),
    '#type' => 'checkbox',
    '#default_value' => variable_get('panels_everywhere_override_page_tpl', FALSE),
    '#description' => t('If checked, the page.tpl.php file and preprocess functions in your theme will not be used. Instead the simplified page.tpl.php provided by Panels Everywhere will be used. This is recommended once you have your site templates set up, unless you actually need to have more control over the final page template. <strong>Note that for safety reasons, editing the site_template page will always happen in the default page.tpl.php just in case your site template is not valid.</strong>'),
    '#process' => array('ctools_dependent_process'),
    '#dependency' => array('edit-panels-everywhere-site-template-enabled' => array(1)),
  );

  $form['head_title'] = array(
    '#type' => 'fieldset',
    '#title' => t('Head title'),
    '#description' => t('The head title is the version of the site title that the browser places in the title bar.'),
    '#input' => TRUE,
    '#process' => array('ctools_dependent_process'),
    '#dependency' => array('edit-panels-everywhere-override-page-tpl' => array(1)),
    '#id' => 'edit-head-title',
    '#prefix' => '<div id="edit-head-title-wrapper">',
    '#suffix' => '</div>',
  );

  $form['head_title']['panels_everywhere_head_title_include_name'] = array(
    '#title' => t('Include the site name'),
    '#type' => 'checkbox',
    '#default_value' => variable_get('panels_everywhere_head_title_include_name', TRUE),
  );

  $form['head_title']['panels_everywhere_head_title_include_slogan'] = array(
    '#title' => t('Use site slogan if there is no page title'),
    '#type' => 'checkbox',
    '#default_value' => variable_get('panels_everywhere_head_title_include_slogan', TRUE),
  );

  $form['head_title']['panels_everywhere_head_title_separator'] = array(
    '#title' => t('Separator'),
    '#type' => 'textfield',
    '#default_value' => variable_get('panels_everywhere_head_title_separator', ' | '),
  );

  $form['#submit'][] = 'panels_everywhere_settings_page_submit';
  return system_settings_form($form);
}

function panels_everywhere_settings_page_submit(&$form, &$form_state) {
  if (empty($form_state['values']['panels_everywhere_site_template_enabled'])) {
    // Automatically unset dependencies.
    $form_state['values']['panels_everywhere_override_blocks'] = FALSE;
    $form_state['values']['panels_everywhere_override_page_tpl'] = FALSE;
  }
}
