<?php

/**
 * Implementation of hook_strongarm().
 */
function pft_manage_biz_stories_strongarm() {
  $export = array();
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'comment_anonymous_biz_story';
  $strongarm->value = 0;

  $export['comment_anonymous_biz_story'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'comment_biz_story';
  $strongarm->value = '2';

  $export['comment_biz_story'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'comment_controls_biz_story';
  $strongarm->value = '3';

  $export['comment_controls_biz_story'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'comment_default_mode_biz_story';
  $strongarm->value = '4';

  $export['comment_default_mode_biz_story'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'comment_default_order_biz_story';
  $strongarm->value = '1';

  $export['comment_default_order_biz_story'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'comment_default_per_page_biz_story';
  $strongarm->value = '50';

  $export['comment_default_per_page_biz_story'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'comment_form_location_biz_story';
  $strongarm->value = '0';

  $export['comment_form_location_biz_story'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'comment_preview_biz_story';
  $strongarm->value = '1';

  $export['comment_preview_biz_story'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'comment_subject_field_biz_story';
  $strongarm->value = '1';

  $export['comment_subject_field_biz_story'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'node_options_biz_story';
  $strongarm->value = array(
    0 => 'status',
    1 => 'revision',
  );

  $export['node_options_biz_story'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'og_content_type_usage_biz_story';
  $strongarm->value = 'group_post_wiki';

  $export['og_content_type_usage_biz_story'] = $strongarm;
  return $export;
}
