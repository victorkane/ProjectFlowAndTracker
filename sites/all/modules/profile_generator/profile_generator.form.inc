<?php
/**
 * @file
 *
 *
 * sturnbull
 *
 * Created 18 Jun 2010
 */

#-----------------------------------------------------------------------------

/**
 * Fetch metadata for all profile_element CTools plugins.
 *
 * @return
 *   An array of arrays with information about all available profile_generator profile_elements.
 */
function profile_generator_get_profile_elements() {
  ctools_include('context');
  ctools_include('plugins');
  return ctools_get_plugins('profile_generator', ProfileGenerator::PLUGIN);
}


/**
 * Fetch metadata on a specific profile_element CTools plugin.
 *
 * @param $profile_elem
 *   Name of a profile generator profile element.
 *
 * @return
 *   An array with information about the requested profile_generator profile_element.
 */
function profile_generator_get_profile_element($profile_element) {
  ctools_include('context');
  ctools_include('plugins');
  return ctools_get_plugins('profile_generator', ProfileGenerator::PLUGIN, $profile_element);
}


/**
 * Inform CTools that the layout plugin can be loaded from themes.
 */
function profile_generator_ctools_plugin_profile_element() {
  return array(
    'defaults' => array(
      'default value' => TRUE,
      'collapsed' => TRUE,
      'always selected' => FALSE,
      'directory' => NULL,
      'section' => 'tasks',
    ),
    'process' => 'profile_generator_profile_element_process',
  );
}

function profile_generator_profile_element_process(&$plugin, $info) {
  $plugin += array(
    ProfileGenerator::PLUGIN_FORM_CALLBACK => ProfileGenerator::make_function($plugin, 'form'),
    ProfileGenerator::PLUGIN_GENERATE_CALLBACK => ProfileGenerator::make_function($plugin, 'generate'),
  );
}

#-----------------------------------------------------------------------------

function profile_generator_form() {

  $plugins = profile_generator_get_profile_elements();

  $weight = 0;

  $profile_items = array();
  foreach ($plugins as $name => $plugin) {
    // Check to see that any required module is actually enabled
    if (!module_exists($plugin['module'])) continue;

    $profile_items[$name] = array(
      '#type' => 'fieldset',
      '#title' => $plugin['title'],
      '#description' => $plugin['description'],
      '#weight' => $plugin['weight'],
      '#tree' => TRUE,
      '#collapsible' => TRUE,
      '#collapsed' => $plugin['collapsed'],
    );

    if ($plugin['always selected']) {
      $select = array(
        '#type' => 'value',
        '#value' => TRUE,
        '#weight' => 0,
      );
    } else {
      $select = array(
        '#type' => 'checkbox',
        '#title' => t('Generate in profile'),
        '#default_value' => $plugin['default value'],
        '#profile_generator_plugin' => $name,
        '#weight' => 0,
      );
    }
    $profile_items[$name]['select'] = $select;


    if ($function = ctools_plugin_get_function($plugin, ProfileGenerator::PLUGIN_FORM_CALLBACK)) {
      list($header, $content, $open) = $function();
      if ($header) {
        $profile_items[$name]['fields'] = array(
          '#type' => 'fieldset',
          '#title' => t($header),
          '#collapsible' => TRUE,
          '#collapsed' => !$open,
          $name => $content,
        );
      }
      elseif ($content) {
        $profile_items[$name]['fields'] = $content;
      }
    }
  }

  $form['profile_items'] = array(
    '#type' => 'fieldset',
    '#title' => t('Profile items'),
    '#description' => t('Select the profile items you want to include in this installation profile.'),
    '#weight' => $weight++,
  ) + $profile_items;

  $form['buttons'] = array(
    'download' => array('#type' => 'submit', '#value' => t('Download')),
    'display' => array('#type' => 'submit', '#value' => t('Display')),
    '#weight' => $weight++,
  );

  return $form;
}

function profile_generator_form_submit($form, &$form_state) {
  $values =& $form_state['values'];
  $profile_name = $values['details']['fields']['profile_name'];
  $weight = 0;

  $output = array(
    '#prefix' => "<?php\n",
    '#suffix' => "\n",
    'details' => array(
      '#type' => 'profile_generator_function',
      '#title' => 'Details',
      '#profile_name' => $profile_name,
      '#profile_generator' => $values,
      '#weight' => $weight++,
    ),
    'modules' => array(
      '#type' => 'profile_generator_function',
      '#title' => 'Modules',
      '#profile_name' => $profile_name,
      '#profile_generator' => $values,
      '#weight' => $weight++,
    ),
    'tasks' => array(
      '#type' => 'profile_generator_function',
      '#title' => 'Tasks',
      '#profile_name' => $profile_name,
      '#profile_generator' => $values,
      '#weight' => $weight++,
    ),
  );

  $plugins = profile_generator_get_profile_elements();
  foreach ($plugins as $name => $plugin) {
    if ($values[$name]['select'] && ($function = ctools_plugin_get_function($plugin, ProfileGenerator::PLUGIN_GENERATE_CALLBACK))) {
      $fields = $values[$name]['fields'];
      $output[$plugin['section']][$name] = $function($profile_name, $form['profile_items'][$name], $fields, $form_state, $plugin['weight']);
    }
  }

  if ($end_tasks = profile_generator_end_tasks(NULL, $weight++)) {
    $tasks['end_tasks'] = $end_tasks;
  }

  drupal_alter('profile_generator_profile', $output);

  echo theme('page', '<pre><code language="php">' . highlight_string(drupal_render($output), true) . '</code></pre>');
}

#-------------------------------------------------------------------

function profile_generator_end_tasks($task = NULL, $weight = NULL) {
  static $end_tasks = array();
  if ($task!==NULL) {
    $end_tasks[] = $task;
  }
  if ($weight!==NULL && !empty($end_tasks)){
    $end_tasks += array(
      '#type' => 'profile_generator_task',
      '#title' => 'End tasks',
      '#weight' => $weight,
    );
    return $end_tasks;
  }
}

#-------------------------------------------------------------------

