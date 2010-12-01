<?php
/**
 * @file
 *
 *
 * sturnbull
 *
 * Created 18 Jun 2010
 */

function profile_generator_db_insert($table, $object, $exclude = array()) {
  static $schema, $sql = 'db_query("INSERT INTO {%s} (%s) VALUES (%s)")';

  if ($schema===NULL) {
    $schema = drupal_get_schema();
  }

  if (!is_array($exclude)) {
    $exclude = array();
  }

  $vals = array();
  $fields = array();
  foreach ($schema[$table]['fields'] as $field => $defn) {
    if (!in_array($field, $exclude)) {
      $val = property_exists($object, $field) ? $object->$field : $defn['default'];
      $vals[] = str_replace('"', '\\"', var_export($val, TRUE));
      $fields[] = $field;
    }
  }
  return sprintf($sql, $table, implode(', ', $fields), implode(', ', $vals));
}

function profile_generator_db_table($table, $truncate = FALSE, $sep = ";\n") {
  $rows = array();

  if ($truncate) {
    $rows[] = profile_generator_db_truncate_table($table, $sep);
  }

  $results = db_query('SELECT * FROM {%s}', $table);
  while ($object = db_fetch_object($results)) {
    $rows[] = profile_generator_db_insert($table, $object);
  }

  return implode($sep, $rows);
}

function profile_generator_db_truncate_table($tables, $sep = ";\n") {
  if (!is_array($tables)) {
    $tables = array($tables);
  }

  $rows = array();
  foreach ($tables as $table) {
    $rows[] = sprintf('db_query("TRUNCATE TABLE {%%s}", %s)', var_export($table, TRUE));
  }

  return implode($sep, $rows);
}

function profile_generator_php($value) {
  $lines = preg_split('/\n\$/', $value);
  foreach ($lines as $k => $line) {
    $lines[$k] = ($k?'$':'') . preg_replace('/\s+/', ' ', $line);
  }
  return implode("\n", $lines);
}

function profile_generator_export($export) {
  ctools_include('export');

  $ids = array();
  $results = db_query('SELECT %s AS id FROM {%s}', $export['primary key'], $export['table']);
  while ($res = db_fetch_object($results)) {
    $ids[] = $res->id;
  }

  $objects = array();
  $func = $export['multiple load callback'];
  if (function_exists($func)) {
    $objects = $func($ids);
  }

  $value = '';
  foreach ($objects as $id => $object) {
    $func = $export['export callback'];
    if (function_exists($func)) {
      $value .= $func($object);
      $value .= sprintf('$x = %s($%s);', $export['save callback'], $export['identifier']) . PHP_EOL;
    }
  }

  return profile_generator_php($value);
}

function profile_generator_label($label, $width = 30) {
  if ($label) {
    $len = strlen($label);
    if (($width-$len)<4) $width = $len + 4;
    $pre = $post = ($width - $len)/2;
    if (($pre+$post)<$width) $post++;
    $label = drupal_strtoupper($label);
    $output = '/*' . str_repeat('*', $width) . "*\n";
    $output .= ' *' . str_repeat(' ', $pre) . $label . str_repeat(' ', $post) . "*\n";
    $output .= ' *' . str_repeat('*', $width) . "*/\n";
  }
  return $output;
}

function theme_profile_generator_function($element) {
  $title = drupal_strtolower($element['#title']);
  $function_name = "{$element['#profile_name']}_profile_{$title}";
  $label = profile_generator_label($title);
  $content = (!empty($element['#children']) ? $element['#children'] : '') . (isset($element['#value']) ? $element['#value'] : '');
  return "{$label}function {$function_name}() \{\n{$content}\n\}\n\n";
}

function theme_profile_generator_variable($element) {
  $title = drupal_strtolower($element['#title']);
  $label = profile_generator_label($title);
  return $label . ($element['#add_return']? '  return ' : '') . sprintf_var_export($element['#value']);
}

function theme_profile_generator_db_truncate_table($element) {
  $title = drupal_strtolower($element['#title']);
  $label = profile_generator_label($title);
  return $label . profile_generator_db_truncate_table($element['#db_insert_table']);
}

function theme_profile_generator_db_insert($element) {
  $title = drupal_strtolower($element['#title']);
  $label = profile_generator_label($title);
  return $label . profile_generator_db_insert($element['#db_insert_table'], $element['#db_insert_object'], $element['#db_insert_exclude_fields']);
}

function theme_profile_generator_db_table($element) {
  $title = drupal_strtolower($element['#title']);
  $label = profile_generator_label($title);
  return $label . profile_generator_db_table($element['#db_insert_table'], $element['#truncate']);
}

function theme_profile_generator_command($element) {
  $title = drupal_strtolower($element['#title']);
  $label = profile_generator_label($title);
  return $label . ($element['#add_return']? '  return ' : '') . $element['#value'];
}

function theme_profile_generator_commands($element) {
  $title = drupal_strtolower($element['#title']);
  $label = profile_generator_label($title);
  $commands = implode($element['#suffix'], $element['#commands']);
  return $label . $commands;
}

function theme_profile_generator_task($element) {
  $title = drupal_strtolower($element['#title']);
  $label = profile_generator_label($title);
  return $label . (!empty($element['#children']) ? $element['#children'] : '') . (isset($element['#value']) ? $element['#value'] : '');
}

function theme_profile_generator_php($element) {
  $title = drupal_strtolower($element['#title']);
  $label = profile_generator_label($title);
  $value = profile_generator_php($element['#value']);
  return $label . (!empty($element['#children']) ? $element['#children'] : '') . (isset($value) ? $value : '');
}

function theme_profile_generator_export($element) {
  $title = drupal_strtolower($element['#title']);
  $label = profile_generator_label($title);
  $value = profile_generator_export($element['#export_object']);
  return $label . (!empty($element['#children']) ? $element['#children'] : '') . (isset($value) ? $value : '');
}

function theme_install_profile_api($element) {
  $title = drupal_strtolower($element['#title']);
  $label = profile_generator_label($title);
  $var = $element['#install_variable'];
  $args = $element['#install_arguments'];
  $call = "install_{$element['#install_function']}(" . sprintf_placeholders($args) . ")";
  array_unshift($args, $call);
  return $label . ($var ? "{$var} = " : '') . call_user_func_array('sprintf', $args);
}