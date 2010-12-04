<?php
/**
 * @file
 *
 *
 * sturnbull
 *
 * Created 13 Jul 2010
 */

$plugin = array(
  'title' => t('Blocks and boxes'),
  'module' => 'block',
  'weight' => 20,
);


#function profile_generator_profile_element_blocks_form() {}

function profile_generator_profile_element_blocks_generate($profile_name, $element, $fields, &$form_state, $weight) {
  $output = array(
    '#type' => 'profile_generator_task',
    '#title' => $element['#title'],
    '#weight' => $weight,
  );
  $weight = 0;
  $fields = $fields['blocks'];

  $blocks = db_query('SELECT * FROM {blocks}');
  while ($block = db_fetch_object($blocks)) {
    $bid = $block->bid;
    unset($block->bid);

    $commands = array();
    $commands[] = sprintf('$block = (object) %s', sprintf_var_export((array) $block, TRUE));

    $rids = db_query("SELECT rid FROM {blocks_roles} WHERE module = '%s' AND delta = '%s'", $block->module, $block->delta);
    while ($rid = db_fetch_object($rids)) {
      $commands[] = sprintf('$block->roles[] = $roles_map[%d]', $rid->rid);
    }

    $box = db_fetch_array(db_query('SELECT body, info, format FROM {boxes} WHERE info="%s"', $block->title));
    if (!empty($box)) {
      $commands[] = sprintf('$block->box = (object) %s', sprintf_var_export($box));
    }


    $output["{$bid}"] = array(
      '#type' => 'profile_generator_commands',
      '#commands' => $commands,
      '#weight' => $weight++,
    );
    $output["{$bid}_create"] = array(
      '#type' => 'install_profile_api',
      '#install_function' => 'create_block',
      '#install_arguments' => array('$block'),
      '#install_variable' => "\$block_map[{$bid}]",
      '#weight' => $weight++,
    );
  }

  return $output;
}
