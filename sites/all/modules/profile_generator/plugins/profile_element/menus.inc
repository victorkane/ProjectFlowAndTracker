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
  'title' => t('Menus'),
  'module' => 'node',
  'weight' => -1,
);


function profile_generator_profile_element_menus_form() {
  $header = 'De-select unwanted menus';

  $data['menus'] = _profile_generator_profile_element_get_menus();
  $opts = array();
  foreach ($data['menus'] as $name => $menu) {
    $opts[$name] = $menu->title;
  }
  $mkeys = array_keys($opts);
  $mkeys = array_combine($mkeys, $mkeys);


  $form['menus'] = array(
    '#type' => 'checkboxes',
    '#options' => $opts,
    '#default_value' => $mkeys,
    '#profile_generator_menus' => $data,
  );

  return array($header, $form);
}

function _profile_generator_profile_element_get_menus() {
  $menus = array();
  $results = db_query("SELECT * FROM {menu_custom}");
  while ($menu = db_fetch_object($results)) {
    $menu->children = _profile_generator_profile_element_walk_menu($menu->menu_name, 0);
    $menus[$menu->menu_name] = $menu;
  }
  return $menus;
}

function _profile_generator_profile_element_walk_menu($menu_name, $plid) {
    $menu = array();

    $results = db_query("SELECT * FROM {menu_links} WHERE menu_name='%s' AND plid=%d", $menu_name, $plid);
    while ($item = db_fetch_object($results)) {
        $kids = _profile_generator_profile_element_walk_menu($menu_name, $item->mlid);
        if (!empty($kids)) {
          $item->children = $kids;
        }
        unset($item->mlid, $item->plid, $item->p1, $item->p2, $item->p3, $item->p4, $item->p5, $item->p6, $item->p7, $item->p8, $item->p9);
        $item->options = unserialize($item->options);
        $menu[] = (array) $item;
    }

    return $menu;
}

function profile_generator_profile_element_menus_generate($profile_name, $element, $fields, &$form_state, $weight) {
  $output = array(
    '#type' => 'profile_generator_task',
    '#title' => $element['#title'],
    '#weight' => $weight,
  );
  $fields = $fields['menus'];
  $menu_data = $element['fields']['menus']['menus']['#profile_generator_menus']['menus'];
#dpm($menu_data);

  $output['setup_menu'] = array(
    '#type' => 'profile_generator_command',
    '#value' => '$mlids = array()',
    '#weight' => $weight++,
  );

  foreach (array_filter($fields['menus']) as $menu_name) {
    $menu = $menu_data[$menu_name];
    $custom_menu_name = strpos($menu_name, 'menu-')===FALSE ? $menu_name : substr($menu_name, 5);

    $output[$menu_name] = array(
      '#type' => 'install_profile_api',
      '#suffix' => ";\n\n",
      '#title' => t('Menu: !menu', array('!menu' => check_plain($menu->title))),
      '#install_function' => 'menu_create_menu',
      '#install_arguments' => array($menu->title, $custom_menu_name, $menu->description),
      '#install_variable' => '$menu_name',
      '#weight' => $weight++,
    );

    $output["{$menu_name}_setup"] = array(
      '#type' => 'profile_generator_command',
      '#value' => '$mlids["' . "{$menu_name}_kids" . '"] = 0',
      '#weight' => $weight++,
    );

    _profile_generator_profile_element_menu_children($menu->children, $output, "{$menu_name}_kids", $weight);
  }

  return $output;
}

#$path, $title, $description = '', $menu = 'navigation', $plid = 0, $weight = 0, $module = 'menu', $hidden = 0, $has_children = 0, $expanded = 0, $customized = 0, $updated = 0

function _profile_generator_profile_element_menu_children($kids, &$output, $tag, &$weight) {
  if (!is_array($kids)) return ;

  foreach ($kids as $key => $kid) {
    $keyed = "{$tag}_{$key}";
    $output[$keyed] = array(
      '#type' => 'install_profile_api',
      '#install_function' => 'menu_create_menu_item',
      '#install_arguments' => array($kid['link_path'], $kid['link_title'], $kid['options']['attributes']['title'], '$menu_name', '$mlids["' . $tag . '"]', $kid['weight'], $kid['module'], $kid['hidden'], !empty($kid['children']), $kid['expanded'], $kid['customized'], $kid['updated']),
      '#install_variable' => '$mlids["' . $keyed . '"]',
      '#weight' => $weight++,
    );
    _profile_generator_profile_element_menu_children($kid['children'], $output, $keyed, $weight);
  }

}
