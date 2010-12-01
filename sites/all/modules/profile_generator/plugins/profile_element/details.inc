<?php
/**
 * @file
 *
 *
 * sturnbull
 *
 * Created 7 Jul 2010
 */

$plugin = array(
  'title' => t('Details'),
  'module' => 'system',
  'section' => 'details',
  'collapsed' => FALSE,
  'always selected' => TRUE,
  'weight' => -50,
);


function profile_generator_profile_element_details_form() {

  $form['profile_title'] = array(
    '#type' => 'textfield',
    '#title' => t('Profile title'),
    '#description' => t('This is the name of the profile as it appears on the installation page.'),
    '#required' => TRUE,
    '#default_value' => t(ProfileGenerator::DEFAULT_TITLE),
    '#weight' => $weight++,
  );

  $form['profile_name'] = array(
    '#type' => 'textfield',
    '#title' => t('Profile name'),
    '#description' => t('This is the folder name in the profiles folder, it can only contain a-z and _ (underscore).'),
    '#required' => TRUE,
    '#default_value' => t(ProfileGenerator::DEFAULT_NAME),
    '#weight' => $weight++,
  );

  $form['profile_description'] = array(
    '#type' => 'textarea',
    '#title' => t('Profile description'),
    '#description' => t('This is the description of the profile as it appears on the installation page.'),
    '#required' => TRUE,
    '#default_value' => t(ProfileGenerator::DEFAULT_DESCRIPTION, array('!date' => date('jS M Y h:ia'))),
    '#weight' => $weight++,
  );

  return array(NULL, $form);
}

function profile_generator_profile_element_details_generate($profile_name, $element, $fields, &$form_state, $weight) {
  $details = array(
    'name' => $fields['profile_title'],
    'description' => $fields['profile_description'],
  );

  return array(
    '#type' => 'profile_generator_variable',
    '#suffix' => ';',
    '#profile_generator' => $form_state['values'],
    '#value' => $details,
    '#add_return' => TRUE,
  );
}
