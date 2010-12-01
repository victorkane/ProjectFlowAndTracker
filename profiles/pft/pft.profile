<?php
/********************************
 *           DETAILS            *
 ********************************/
function pft_profile_details() {
  return array ( 'name' => 'Project Flow & Tracker', 'description' => 'Installation profile for Project Flow & Tracker generated automatically on 27th Nov 2010 06:54am', );
}

/********************************
 *           MODULES            *
 ********************************/
function pft_profile_modules() {
  return array ( 0 => 'admin_menu', 1 => 'adminrole', 2 => 'advanced_help', 3 => 'block', 4 => 'ctools', 5 => 'clone', 6 => 'color', 7 => 'jquery_update', 8 => 'comment', 9 => 'content', 10 => 'content_copy', 11 => 'bulk_export', 12 => 'ctools_custom_content', 13 => 'date_api', 14 => 'date_timezone', 15 => 'date_popup', 16 => 'date', 17 => 'dblog', 18 => 'diff', 19 => 'fieldgroup', 20 => 'filefield', 21 => 'filefield_sources', 22 => 'filter', 23 => 'path', 24 => 'help', 25 => 'imageapi', 26 => 'imageapi_imagemagick', 27 => 'imagecache', 28 => 'imagecache_ui', 29 => 'imagefield', 30 => 'panels', 31 => 'colorbox', 32 => 'login_destination', 33 => 'menu', 34 => 'node', 35 => 'optionwidgets', 36 => 'text', 37 => 'number', 38 => 'og', 39 => 'og_access', 40 => 'og_actions', 41 => 'views', 42 => 'nodereference', 43 => 'page_manager', 44 => 'jquery_ui', 45 => 'panels_everywhere', 46 => 'panels_ipe', 47 => 'panels_mini', 48 => 'tabs', 49 => 'globalredirect', 50 => 'token', 51 => 'strongarm', 52 => 'stylizer', 53 => 'system', 54 => 'panels_tabs', 55 => 'taxonomy', 56 => 'nodereference_url', 57 => 'pathauto', 58 => 'update', 59 => 'user', 60 => 'userreference', 61 => 'vertical_tabs', 62 => 'og_views', 63 => 'views_attach', 64 => 'views_bulk_operations', 65 => 'views_content', 66 => 'views_export', 67 => 'views_ui', );
}

/********************************
 *            TASKS             *
 ********************************/
function pft_profile_tasks() {

/********************************
 *     INSTALL PROFILE API      *
 ********************************/
install_include(pft_profile_modules());


/********************************
 *    VARIABLES (AND THEMES)     *
 ********************************/
variable_set("admin_theme", 'bluemarine');
variable_set("anonymous", 'Anonymous');
variable_set("clean_url", '1');
variable_set("colorbox_compression_type", 'min');
variable_set("colorbox_custom_settings_activate", '0');
variable_set("colorbox_imagecache_preset", 'diagram_large');
variable_set("colorbox_imagefield_gallery", '1');
variable_set("colorbox_load", 0);
variable_set("colorbox_login", 0);
variable_set("colorbox_login_form", 'user_login');
variable_set("colorbox_maxheight", '100%');
variable_set("colorbox_maxwidth", '100%');
variable_set("colorbox_opacity", '0.90');
variable_set("colorbox_overlayclose", 1);
variable_set("colorbox_pages", 'admin* img_assist* imce* node/add/* node/*/edit');
variable_set("colorbox_path", 'sites/all/libraries/colorbox');
variable_set("colorbox_slideshow", '0');
variable_set("colorbox_slideshowauto", 1);
variable_set("colorbox_slideshowspeed", '2500');
variable_set("colorbox_style", 'default');
variable_set("colorbox_text_close", 'Close');
variable_set("colorbox_text_current", '{current} of {total}');
variable_set("colorbox_text_next", 'Next »');
variable_set("colorbox_text_previous", '« Prev');
variable_set("colorbox_text_start", 'start slideshow');
variable_set("colorbox_text_stop", 'stop slideshow');
variable_set("colorbox_title_trim", '0');
variable_set("colorbox_title_trim_length", '75');
variable_set("colorbox_transition_speed", '350');
variable_set("colorbox_transition_type", 'elastic');
variable_set("comment_anonymous_biz_story", 0);
variable_set("comment_anonymous_issue", 0);
variable_set("comment_anonymous_project", 0);
variable_set("comment_anonymous_role", 0);
variable_set("comment_anonymous_user_story", 0);
variable_set("comment_biz_story", '2');
variable_set("comment_controls_biz_story", '3');
variable_set("comment_controls_issue", '3');
variable_set("comment_controls_project", '3');
variable_set("comment_controls_role", '3');
variable_set("comment_controls_user_story", '3');
variable_set("comment_default_mode_biz_story", '4');
variable_set("comment_default_mode_issue", '4');
variable_set("comment_default_mode_project", '4');
variable_set("comment_default_mode_role", '4');
variable_set("comment_default_mode_user_story", '4');
variable_set("comment_default_order_biz_story", '1');
variable_set("comment_default_order_issue", '1');
variable_set("comment_default_order_project", '1');
variable_set("comment_default_order_role", '1');
variable_set("comment_default_order_user_story", '1');
variable_set("comment_default_per_page_biz_story", '50');
variable_set("comment_default_per_page_issue", '50');
variable_set("comment_default_per_page_project", '50');
variable_set("comment_default_per_page_role", '50');
variable_set("comment_default_per_page_user_story", '50');
variable_set("comment_form_location_biz_story", '0');
variable_set("comment_form_location_issue", '0');
variable_set("comment_form_location_project", '0');
variable_set("comment_form_location_role", '0');
variable_set("comment_form_location_user_story", '0');
variable_set("comment_issue", '2');
variable_set("comment_page", 0);
variable_set("comment_preview_biz_story", '1');
variable_set("comment_preview_issue", '1');
variable_set("comment_preview_project", '1');
variable_set("comment_preview_role", '1');
variable_set("comment_preview_user_story", '1');
variable_set("comment_project", '2');
variable_set("comment_role", '2');
variable_set("comment_subject_field_biz_story", '1');
variable_set("comment_subject_field_issue", '1');
variable_set("comment_subject_field_project", '1');
variable_set("comment_subject_field_role", '1');
variable_set("comment_subject_field_user_story", '1');
variable_set("comment_user_story", '2');
variable_set("configurable_timezones", '1');
variable_set("content_extra_weights_issue", array ( 'title' => '19', 'body_field' => '22', 'revision_information' => '28', 'author' => '27', 'options' => '29', 'comment_settings' => '31', 'menu' => '26', 'taxonomy' => '20', 'path' => '30', 'og_nodeapi' => '25', ));
variable_set("content_extra_weights_project", array ( 'title' => '-5', 'body_field' => '-1', 'revision_information' => '6', 'author' => '5', 'options' => '7', 'comment_settings' => '8', 'menu' => '1', 'og_description' => '-4', 'og_selective' => '0', 'og_register' => '4', 'og_directory' => '3', 'og_private' => '2', ));
variable_set("content_extra_weights_user_story", array ( 'title' => '-5', 'body_field' => '-1', 'revision_information' => '6', 'author' => '5', 'options' => '7', 'comment_settings' => '8', 'menu' => '4', 'taxonomy' => '-4', 'path' => '10', 'og_nodeapi' => '2', 'list_issues_node_content_1' => '9', ));
variable_set("css_js_query_string", 'Ymi325CbfHenuWkIVspj');
variable_set("ctools_last_cron", 1289817188);
variable_set("date:issue:full:field_project_end_fromto", 'both');
variable_set("date:issue:full:field_project_end_multiple_from", '');
variable_set("date:issue:full:field_project_end_multiple_number", '');
variable_set("date:issue:full:field_project_end_multiple_to", '');
variable_set("date:issue:full:field_project_end_show_repeat_rule", 'show');
variable_set("date:issue:full:field_project_start_fromto", 'both');
variable_set("date:issue:full:field_project_start_multiple_from", '');
variable_set("date:issue:full:field_project_start_multiple_number", '');
variable_set("date:issue:full:field_project_start_multiple_to", '');
variable_set("date:issue:full:field_project_start_show_repeat_rule", 'show');
variable_set("date:issue:teaser:field_project_end_fromto", 'both');
variable_set("date:issue:teaser:field_project_end_multiple_from", '');
variable_set("date:issue:teaser:field_project_end_multiple_number", '');
variable_set("date:issue:teaser:field_project_end_multiple_to", '');
variable_set("date:issue:teaser:field_project_end_show_repeat_rule", 'show');
variable_set("date:issue:teaser:field_project_start_fromto", 'both');
variable_set("date:issue:teaser:field_project_start_multiple_from", '');
variable_set("date:issue:teaser:field_project_start_multiple_number", '');
variable_set("date:issue:teaser:field_project_start_multiple_to", '');
variable_set("date:issue:teaser:field_project_start_show_repeat_rule", 'show');
variable_set("date:project:full:field_project_end_fromto", 'both');
variable_set("date:project:full:field_project_end_multiple_from", '');
variable_set("date:project:full:field_project_end_multiple_number", '');
variable_set("date:project:full:field_project_end_multiple_to", '');
variable_set("date:project:full:field_project_end_show_repeat_rule", 'show');
variable_set("date:project:full:field_project_start_fromto", 'both');
variable_set("date:project:full:field_project_start_multiple_from", '');
variable_set("date:project:full:field_project_start_multiple_number", '');
variable_set("date:project:full:field_project_start_multiple_to", '');
variable_set("date:project:full:field_project_start_show_repeat_rule", 'show');
variable_set("date:project:teaser:field_project_end_fromto", 'both');
variable_set("date:project:teaser:field_project_end_multiple_from", '');
variable_set("date:project:teaser:field_project_end_multiple_number", '');
variable_set("date:project:teaser:field_project_end_multiple_to", '');
variable_set("date:project:teaser:field_project_end_show_repeat_rule", 'show');
variable_set("date:project:teaser:field_project_start_fromto", 'both');
variable_set("date:project:teaser:field_project_start_multiple_from", '');
variable_set("date:project:teaser:field_project_start_multiple_number", '');
variable_set("date:project:teaser:field_project_start_multiple_to", '');
variable_set("date:project:teaser:field_project_start_show_repeat_rule", 'show');
variable_set("date_api_use_iso8601", 0);
variable_set("date_api_version", '5.2');
variable_set("date_default_timezone", -28800);
variable_set("date_default_timezone_name", 'America/Los_Angeles');
variable_set("date_first_day", '0');
variable_set("date_format_long", 'l, F j, Y - H:i');
variable_set("date_format_medium", 'D, Y-m-d H:i');
variable_set("date_format_short", 'Y-m-d H:i');
variable_set("default_nodes_main", '10');
variable_set("drupal_http_request_fails", false);
variable_set("enable_revisions_page_biz_story", 1);
variable_set("enable_revisions_page_issue", 1);
variable_set("enable_revisions_page_role", 1);
variable_set("features_codecache", array ( 'manage_projects' => array ( 'user_role' => '44428c86afffe17e9f358ed1b87e7b20', 'user_permission' => 'b7b3dd1210a24f4fe71495c77413a094', 'content' => '74738733a70e13e6f0df7d07eecb64ec', 'fieldgroup' => '711bdae32e7fca48bbdc2d44ea2a1201', 'dependencies' => '03178ef260a2db01513a77f356f825c3', 'variable' => 'f4905eec03903a0f4720b3ac29a90f6e', 'node' => '03e8e5f86098304c9d45d3c5d7bca5e5', 'page_manager_handlers' => 'c590373d31171b9c71e058888dd5738c', 'imagecache' => '407625b8c83d68964ef966f7ed5fac1b', ), 'pft_manage_prj_and_us' => array ( 'user_role' => '44428c86afffe17e9f358ed1b87e7b20', 'user_permission' => '0c8499aecf82153c75d53e96f5d54ff6', 'content' => 'cf4f3533ecb2210794a5829e1f43328a', 'fieldgroup' => '12cce246af480599c744046ace939ae0', 'dependencies' => 'a3acfcd4c449abce93439e6598ed0ddf', 'variable' => 'd5df7c087a06c4851b3bffdc54149830', 'node' => '03e8e5f86098304c9d45d3c5d7bca5e5', 'imagecache' => '407625b8c83d68964ef966f7ed5fac1b', 'views' => 'c3bcad83f27d693dc4709d06a75a3da8', 'page_manager_handlers' => '47a3009182d35a21f4262a5231f07260', 'taxonomy' => 'faddd9113c789a5fb0c71a687d7e1f01', ), 'pft_manage_prj_issues' => array ( 'dependencies' => '2e2c4d00919bb6ac91320e47883afe26', 'variable' => 'b304206072f3d40604bcb3ce167a8b9c', 'node' => '9be19a3210525705338046cad67b2167', 'user_permission' => '85b88eaa365d38d720bef999cad7029e', 'content' => '2762dab8516e64a411b20e4719dc1b35', 'fieldgroup' => '445a50743592e31740a2e98e6090b74f', 'taxonomy' => '110013c49f40cd534d73e0298dfd278c', 'views' => 'fc368b9f6aef15d46971a169ca59d675', 'page_manager_handlers' => '1d29fce751c560c538cb0044c285d232', ), 'pft_manage_roles' => array ( 'user_permission' => '1dc63d85dac65b84cdfb50e98471417e', 'content' => '2c83b4fecceda2a72418fd0512b040f7', 'dependencies' => 'c13c16ceefe20a4de973eb042d4c9283', 'variable' => 'd1f8e4e2659447d7e04f10de18162f18', 'node' => '31f339facb2691b5232b166497262027', 'views' => 'bf8509fcf39fad6939af343c7a768fdf', 'page_manager_handlers' => '54a7f0950ee3bfd2346250cba1d4c4a5', ), 'pft_manage_biz_stories' => array ( 'taxonomy' => 'cd9d2ea694577e6087f7e55cf762a97f', 'user_permission' => '5952b4d2850564bb5f870d26287737e8', 'dependencies' => '1ede297042ee24a4846841fefe7cc0bb', 'variable' => 'e511bac60662256dbff56f944e092a09', 'node' => '7830f1c98ced2bcd8b31e4cadc636921', 'views' => 'b50bea1c8e0eb5ea36f680268cd5b24d', 'page_manager_handlers' => 'aaafbc07c40bb51e1f3c77244a21c568', ), ));
variable_set("features_ignored_orphans", array ( 'fieldgroup' => 'fieldgroup', 'colorbox' => 'colorbox', 'comment' => 'comment', 'ctools_custom_content' => 'ctools_custom_content', 'date' => 'date', 'date_popup' => 'date_popup', 'imagefield' => 'imagefield', 'login_destination' => 'login_destination', 'number' => 'number', 'og_access' => 'og_access', 'og_views' => 'og_views', 'panels_everywhere' => 'panels_everywhere', 'strongarm' => 'strongarm', 'views_content' => 'views_content', ));
variable_set("features_semaphore", array ( ));
variable_set("fieldgroup_schema_version", 6000);
variable_set("file_directory_temp", '/tmp');
variable_set("filter_html_1", 1);
variable_set("form_build_id_biz_story", 'form-caa0839cf7ef6eeb68ee7e58d7ecf0f4');
variable_set("form_build_id_issue", 'form-6a485c3814712b655a54f616d325fdab');
variable_set("form_build_id_project", 'form-51c77c25af39e5f7bee47362401c6f95');
variable_set("form_build_id_role", 'form-f4d694e3c1e73e92739a3ff5988df7d2');
variable_set("form_build_id_user_story", 'form-c745a94d8cb5e711d5d027dd8d0e2a81');
variable_set("head_title", NULL);
variable_set("imageapi_image_toolkit", 'imageapi_imagemagick');
variable_set("image_jpeg_quality", '85');
variable_set("image_toolkit", 'gd');
variable_set("install_task", 'done');
variable_set("install_time", 1284143132);
variable_set("javascript_parsed", array ( ));
variable_set("jquery_update_replace", true);
variable_set("ld_condition_snippet", '');
variable_set("ld_condition_type", 'always');
variable_set("ld_destination", 0);
variable_set("ld_url_destination", 'user');
variable_set("ld_url_type", 'static');
variable_set("menu_expanded", array ( ));
variable_set("menu_masks", array ( 0 => 127, 1 => 125, 2 => 63, 3 => 62, 4 => 61, 5 => 59, 6 => 58, 7 => 57, 8 => 56, 9 => 44, 10 => 31, 11 => 30, 12 => 29, 13 => 28, 14 => 24, 15 => 23, 16 => 21, 17 => 15, 18 => 14, 19 => 13, 20 => 12, 21 => 11, 22 => 7, 23 => 6, 24 => 5, 25 => 4, 26 => 3, 27 => 2, 28 => 1, ));
variable_set("nodeaccess_userreference_priority", '-10');
variable_set("node_admin_theme", 0);
variable_set("node_options_biz_story", array ( 0 => 'status', 1 => 'revision', ));
variable_set("node_options_forum", array ( 0 => 'status', ));
variable_set("node_options_issue", array ( 0 => 'status', 1 => 'promote', ));
variable_set("node_options_page", array ( 0 => 'status', ));
variable_set("node_options_project", array ( 0 => 'status', ));
variable_set("node_options_role", array ( 0 => 'status', 1 => 'revision', ));
variable_set("node_options_user_story", array ( 0 => 'status', ));
variable_set("node_preview", '0');
variable_set("og_admin_email_body", '@body -- This message was sent by an administrator in the \'@group\' group at @site. To visit this group, browse to !url_group. To unsubscribe from this group, visit !url_unsubscribe');
variable_set("og_approve_user_body", 'You may now post messages in this group located at !group_url');
variable_set("og_approve_user_subject", 'Membership request approved for \'@title\'');
variable_set("og_audience_checkboxes", 1);
variable_set("og_audience_required", '0');
variable_set("og_content_type_usage_biz_story", 'group_post_wiki');
variable_set("og_content_type_usage_issue", 'group_post_wiki');
variable_set("og_content_type_usage_project", 'group');
variable_set("og_content_type_usage_role", 'group_post_wiki');
variable_set("og_content_type_usage_user_story", 'group_post_wiki');
variable_set("og_deny_user_body", 'Sorry, your membership request was denied.');
variable_set("og_deny_user_subject", 'Membership request denied for \'@title\'');
variable_set("og_email_notification_pattern", '@user_name <@site_mail>');
variable_set("og_home_page_view", '0');
variable_set("og_invite_user_body", 'Hi. I\'m a member of \'@group\' and I welcome you to join this group as well. Please see the link and message below. @group @description Join: !group_url @body');
variable_set("og_invite_user_subject", 'Invitation to join the group \'@group\' at @site');
variable_set("og_max_groups_biz_story", '');
variable_set("og_max_groups_issue", '');
variable_set("og_max_groups_project", '');
variable_set("og_max_groups_role", '');
variable_set("og_max_groups_user_story", '');
variable_set("og_new_admin_body", '@username, you are now an administrator for the group \'@group\'. You can administer this group by logging in here: !group_url');
variable_set("og_new_admin_subject", 'You are now an administrator for the group \'@group\'');
variable_set("og_new_node_body", '@type \'@subject\' by @username @node_teaser !read_more: !content_url Post reply: !reply_url -- You are subscribed from the group \'@group\' at @site. To manage your subscription, visit !group_url');
variable_set("og_new_node_subject", '@group: \'@title\' at @site');
variable_set("og_private_groups", '2');
variable_set("og_request_user_body", 'To instantly approve this request, visit !approve_url. You may deny this request or manage members at !group_url. Personal message from @username: ------------------ @request');
variable_set("og_request_user_subject", 'Membership request for \'@group\' from \'@username\'');
variable_set("og_visibility", '0');
variable_set("og_visibility_directory", '2');
variable_set("og_visibility_registration", '3');
variable_set("page_manager_node_view_disabled", false);
variable_set("panels_everywhere_head_title_include_name", 1);
variable_set("panels_everywhere_head_title_include_slogan", 1);
variable_set("panels_everywhere_head_title_separator", ' | ');
variable_set("panels_everywhere_override_page_tpl", 1);
variable_set("panels_everywhere_provide_sample", 1);
variable_set("panels_everywhere_site_template_enabled", 1);
variable_set("panels_everywhere_site_template_enabled_admin", 0);
variable_set("panels_legacy_rendering_mode", false);
variable_set("pathauto_case", '1');
variable_set("pathauto_ignore_words", 'a,an,as,at,before,but,by,for,from,is,in,into,like,of,off,on,onto,per,since,than,the,this,that,to,up,via,with');
variable_set("pathauto_indexaliases", false);
variable_set("pathauto_indexaliases_bulkupdate", false);
variable_set("pathauto_max_bulk_update", '50');
variable_set("pathauto_max_component_length", '100');
variable_set("pathauto_max_length", '100');
variable_set("pathauto_modulelist", array ( 0 => 'node', 1 => 'user', 2 => 'taxonomy', ));
variable_set("pathauto_node_applytofeeds", '');
variable_set("pathauto_node_bulkupdate", false);
variable_set("pathauto_node_forum_pattern", '');
variable_set("pathauto_node_image_pattern", '');
variable_set("pathauto_node_page_pattern", '');
variable_set("pathauto_node_pattern", '[type]/[title-raw]');
variable_set("pathauto_node_project_pattern", '');
variable_set("pathauto_node_story_pattern", '');
variable_set("pathauto_node_supportsfeeds", 'feed');
variable_set("pathauto_node_user_story_pattern", '');
variable_set("pathauto_punctuation_ampersand", '0');
variable_set("pathauto_punctuation_asterisk", '0');
variable_set("pathauto_punctuation_at", '0');
variable_set("pathauto_punctuation_backtick", '0');
variable_set("pathauto_punctuation_back_slash", '0');
variable_set("pathauto_punctuation_caret", '0');
variable_set("pathauto_punctuation_colon", '0');
variable_set("pathauto_punctuation_comma", '0');
variable_set("pathauto_punctuation_dollar", '0');
variable_set("pathauto_punctuation_double_quotes", '0');
variable_set("pathauto_punctuation_equal", '0');
variable_set("pathauto_punctuation_exclamation", '0');
variable_set("pathauto_punctuation_greater_than", '0');
variable_set("pathauto_punctuation_hash", '0');
variable_set("pathauto_punctuation_hyphen", '1');
variable_set("pathauto_punctuation_left_curly", '0');
variable_set("pathauto_punctuation_left_parenthesis", '0');
variable_set("pathauto_punctuation_left_square", '0');
variable_set("pathauto_punctuation_less_than", '0');
variable_set("pathauto_punctuation_percent", '0');
variable_set("pathauto_punctuation_period", '0');
variable_set("pathauto_punctuation_pipe", '0');
variable_set("pathauto_punctuation_plus", '0');
variable_set("pathauto_punctuation_question_mark", '0');
variable_set("pathauto_punctuation_quotes", '0');
variable_set("pathauto_punctuation_right_curly", '0');
variable_set("pathauto_punctuation_right_parenthesis", '0');
variable_set("pathauto_punctuation_right_square", '0');
variable_set("pathauto_punctuation_semicolon", '0');
variable_set("pathauto_punctuation_slash", '0');
variable_set("pathauto_punctuation_tilde", '0');
variable_set("pathauto_punctuation_underscore", '0');
variable_set("pathauto_reduce_ascii", 0);
variable_set("pathauto_separator", '-');
variable_set("pathauto_taxonomy_1_pattern", '');
variable_set("pathauto_taxonomy_2_pattern", '');
variable_set("pathauto_taxonomy_applytofeeds", '');
variable_set("pathauto_taxonomy_bulkupdate", 0);
variable_set("pathauto_taxonomy_pattern", 'category/[vocab-raw]/[catpath-raw]');
variable_set("pathauto_taxonomy_supportsfeeds", '0/feed');
variable_set("pathauto_transliterate", false);
variable_set("pathauto_update_action", '2');
variable_set("pathauto_user_bulkupdate", 0);
variable_set("pathauto_user_pattern", 'users/[user-raw]');
variable_set("pathauto_user_supportsfeeds", NULL);
variable_set("pathauto_verbose", 0);
variable_set("rebuild", 'Rebuild permissions');
variable_set("show_diff_inline_biz_story", 0);
variable_set("show_diff_inline_issue", 0);
variable_set("show_diff_inline_role", 0);
variable_set("show_preview_changes_biz_story", 1);
variable_set("show_preview_changes_issue", 1);
variable_set("show_preview_changes_role", 1);
variable_set("site_footer", '');
variable_set("site_frontpage", 'project/project-flow-tracker');
variable_set("site_mail", 'victorkane@gmail.com');
variable_set("site_mission", '');
variable_set("site_name", 'Project Flow & Tracker');
variable_set("site_slogan", '');
variable_set("teaser_length", '600');
system_theme_data();
variable_set("theme_default", 'pft');
variable_set("theme_pft_settings", array ( 'toggle_logo' => 1, 'toggle_name' => 1, 'toggle_slogan' => 0, 'toggle_mission' => 1, 'toggle_node_user_picture' => 0, 'toggle_comment_user_picture' => 0, 'toggle_search' => 0, 'toggle_favicon' => 1, 'toggle_primary_links' => 1, 'toggle_secondary_links' => 1, 'default_logo' => 1, 'logo_path' => 'sites/default/files/pft_logo.png', 'logo_upload' => '', 'default_favicon' => 1, 'favicon_path' => 'sites/default/files/pft_favicon_5.ico', 'favicon_upload' => '', ));
variable_set("theme_settings", array ( 'toggle_logo' => 1, 'toggle_name' => 1, 'toggle_slogan' => 0, 'toggle_mission' => 1, 'toggle_node_user_picture' => 0, 'toggle_comment_user_picture' => 0, 'toggle_search' => 0, 'toggle_favicon' => 1, 'toggle_primary_links' => 1, 'toggle_secondary_links' => 1, 'toggle_node_info_issue' => 0, 'toggle_node_info_page' => 0, 'toggle_node_info_project' => 0, 'toggle_node_info_role' => 0, 'toggle_node_info_story' => 1, 'toggle_node_info_user_story' => 0, 'default_logo' => 1, 'logo_path' => '', 'logo_upload' => '', 'default_favicon' => 1, 'favicon_path' => '', 'favicon_upload' => '', ));
variable_set("update_last_check", 1290869600);
variable_set("user_admin_role", '3');
variable_set("user_email_verification", 1);
variable_set("user_mail_password_reset_body", '!username, A request to reset the password for your account has been made at !site. You may now log in to !uri_brief by clicking on this link or copying and pasting it in your browser: !login_url This is a one-time login, so it can be used only once. It expires after one day and nothing will happen if it\'s not used. After logging in, you will be redirected to !edit_uri so you can change your password.');
variable_set("user_mail_password_reset_subject", 'Replacement login information for !username at !site');
variable_set("user_mail_register_admin_created_body", '!username, A site administrator at !site has created an account for you. You may now log in to !login_uri using the following username and password: username: !username password: !password You may also log in by clicking on this link or copying and pasting it in your browser: !login_url This is a one-time login, so it can be used only once. After logging in, you will be redirected to !edit_uri so you can change your password. -- !site team');
variable_set("user_mail_register_admin_created_subject", 'An administrator created an account for you at !site');
variable_set("user_mail_register_no_approval_required_body", '!username, Thank you for registering at !site. You may now log in to !login_uri using the following username and password: username: !username password: !password You may also log in by clicking on this link or copying and pasting it in your browser: !login_url This is a one-time login, so it can be used only once. After logging in, you will be redirected to !edit_uri so you can change your password. -- !site team');
variable_set("user_mail_register_no_approval_required_subject", 'Account details for !username at !site');
variable_set("user_mail_register_pending_approval_body", '!username, Thank you for registering at !site. Your application for an account is currently pending approval. Once it has been approved, you will receive another e-mail containing information about how to log in, set your password, and other details. -- !site team');
variable_set("user_mail_register_pending_approval_subject", 'Account details for !username at !site (pending admin approval)');
variable_set("user_mail_status_activated_body", '!username, Your account at !site has been activated. You may now log in by clicking on this link or copying and pasting it in your browser: !login_url This is a one-time login, so it can be used only once. After logging in, you will be redirected to !edit_uri so you can change your password. Once you have set your own password, you will be able to log in to !login_uri in the future using: username: !username ');
variable_set("user_mail_status_activated_notify", 1);
variable_set("user_mail_status_activated_subject", 'Account details for !username at !site (approved)');
variable_set("user_mail_status_blocked_body", '!username, Your account on !site has been blocked.');
variable_set("user_mail_status_blocked_notify", 0);
variable_set("user_mail_status_blocked_subject", 'Account details for !username at !site (blocked)');
variable_set("user_mail_status_deleted_body", '!username, Your account on !site has been deleted.');
variable_set("user_mail_status_deleted_notify", 0);
variable_set("user_mail_status_deleted_subject", 'Account details for !username at !site (deleted)');
variable_set("user_pictures", '0');
variable_set("user_picture_default", '');
variable_set("user_picture_dimensions", '85x85');
variable_set("user_picture_file_size", '30');
variable_set("user_picture_guidelines", '');
variable_set("user_picture_path", 'pictures');
variable_set("user_register", '0');
variable_set("user_registration_help", '');
variable_set("user_signatures", '0');
variable_set("vertical_tabs_forms", array ( ));


/********************************
 *    VOCABULARIES AND TERMS     *
 ********************************/
$tids = array(0 => 0);
/********************************
 *   TAXONOMY: BIZ STORY TYPE    *
 ********************************/
$vid = install_taxonomy_add_vocabulary('Biz Story Type', array ( 'biz_story' => 'biz_story', ), array ( 'name' => 'Biz Story Type', 'description' => 'Business Story types', 'help' => '', 'relations' => '1', 'hierarchy' => '0', 'multiple' => '0', 'required' => '0', 'tags' => '0', 'module' => 'features_biz_story_type', 'weight' => '0', ));

$term = array ( 'name' => 'problem', 'description' => 'An item in the problem domain requiring solution domain functionality in the form of features.', 'weight' => '0', );
$term["parent"] = array($tids[0]);
$tids[1] = install_taxonomy_add_term($vid, $term["name"], $term["description"], $term);

$term = array ( 'name' => 'value', 'description' => '', 'weight' => '1', );
$term["parent"] = array($tids[0]);
$tids[1] = install_taxonomy_add_term($vid, $term["name"], $term["description"], $term);

$term = array ( 'name' => 'feature', 'description' => 'The functionality in the solution domain to solve an item in the problem domain.', 'weight' => '2', );
$term["parent"] = array($tids[0]);
$tids[1] = install_taxonomy_add_term($vid, $term["name"], $term["description"], $term);

/********************************
 *     TAXONOMY: ISSUE TYPE      *
 ********************************/
$vid = install_taxonomy_add_vocabulary('Issue Type', array ( 'issue' => 'issue', ), array ( 'name' => 'Issue Type', 'description' => 'Issue Type', 'help' => '', 'relations' => '1', 'hierarchy' => '1', 'multiple' => '0', 'required' => '0', 'tags' => '0', 'module' => 'features_issue_type', 'weight' => '0', ));

$term = array ( 'name' => 'Change request', 'description' => 'Change request', 'weight' => '0', );
$term["parent"] = array($tids[0]);
$tids[1] = install_taxonomy_add_term($vid, $term["name"], $term["description"], $term);

$term = array ( 'name' => 'defect', 'description' => 'Defect', 'weight' => '0', );
$term["parent"] = array($tids[0]);
$tids[1] = install_taxonomy_add_term($vid, $term["name"], $term["description"], $term);

$term = array ( 'name' => 'task', 'description' => 'Task', 'weight' => '0', );
$term["parent"] = array($tids[0]);
$tids[1] = install_taxonomy_add_term($vid, $term["name"], $term["description"], $term);

/********************************
 *       TAXONOMY: STATUS        *
 ********************************/
$vid = install_taxonomy_add_vocabulary('Status', array ( 'issue' => 'issue', 'user_story' => 'user_story', ), array ( 'name' => 'Status', 'description' => 'The status of a user story or issue.', 'help' => '', 'relations' => '1', 'hierarchy' => '0', 'multiple' => '0', 'required' => '1', 'tags' => '0', 'module' => 'features_status', 'weight' => '0', ));

$term = array ( 'name' => 'New', 'description' => 'Entered into scope', 'weight' => '0', );
$term["parent"] = array($tids[0]);
$tids[1] = install_taxonomy_add_term($vid, $term["name"], $term["description"], $term);

$term = array ( 'name' => 'Ready', 'description' => 'Having sufficient definition so that it can be prioritized by the Project Owner and can be placed into a Sprint backlog.', 'weight' => '1', );
$term["parent"] = array($tids[0]);
$tids[1] = install_taxonomy_add_term($vid, $term["name"], $term["description"], $term);

$term = array ( 'name' => 'In progress', 'description' => 'In the current sprint. Acceptance tests are being written, Analysis and Design is being done, Implementation is being done, Acceptance tests are being executed. Not healthy to separate these activities into separate states.', 'weight' => '2', );
$term["parent"] = array($tids[0]);
$tids[1] = install_taxonomy_add_term($vid, $term["name"], $term["description"], $term);

$term = array ( 'name' => 'Accepted', 'description' => 'Has passed acceptance tests', 'weight' => '3', );
$term["parent"] = array($tids[0]);
$tids[1] = install_taxonomy_add_term($vid, $term["name"], $term["description"], $term);

/********************************
 *  TAXONOMY: USER STORY TYPE   *
 ********************************/
$vid = install_taxonomy_add_vocabulary('User Story Type', array ( 'user_story' => 'user_story', ), array ( 'name' => 'User Story Type', 'description' => 'User Story type', 'help' => '', 'relations' => '1', 'hierarchy' => '0', 'multiple' => '0', 'required' => '0', 'tags' => '0', 'module' => 'features_user_story_type', 'weight' => '0', ));

$term = array ( 'name' => 'user story', 'description' => '', 'weight' => '0', );
$term["parent"] = array($tids[0]);
$tids[1] = install_taxonomy_add_term($vid, $term["name"], $term["description"], $term);

$term = array ( 'name' => 'feature', 'description' => '', 'weight' => '1', );
$term["parent"] = array($tids[0]);
$tids[1] = install_taxonomy_add_term($vid, $term["name"], $term["description"], $term);

$term = array ( 'name' => 'constraint', 'description' => '', 'weight' => '2', );
$term["parent"] = array($tids[0]);
$tids[1] = install_taxonomy_add_term($vid, $term["name"], $term["description"], $term);

$term = array ( 'name' => 'epic', 'description' => '', 'weight' => '3', );
$term["parent"] = array($tids[0]);
$tids[1] = install_taxonomy_add_term($vid, $term["name"], $term["description"], $term);



/********************************
 *    ROLES AND PERMISSIONS     *
 ********************************/
$roles_map[1] = install_add_role('anonymous user');
install_add_permissions($roles_map[1], array ( 0 => 'access content', ));

$roles_map[2] = install_add_role('authenticated user');
install_add_permissions($roles_map[2], array ( 0 => 'access comments', 1 => 'post comments', 2 => 'post comments without approval', 3 => 'access content', 4 => 'create biz_story content', 5 => 'create issue content', 6 => 'create project content', 7 => 'create role content', 8 => 'create user_story content', 9 => 'edit own biz_story content', 10 => 'edit own issue content', 11 => 'edit own project content', 12 => 'edit own role content', 13 => 'edit own user_story content', 14 => 'revert revisions', 15 => 'view revisions', ));

$roles_map[3] = install_add_role('administrator');
install_add_permissions($roles_map[3], array ( 0 => 'administer blocks', 1 => 'use PHP for block visibility', 2 => 'access comments', 3 => 'post comments', 4 => 'administer comments', 5 => 'post comments without approval', 6 => 'administer filters', 7 => 'administer menu', 8 => 'administer content types', 9 => 'administer nodes', 10 => 'access content', 11 => 'view revisions', 12 => 'revert revisions', 13 => 'delete revisions', 14 => 'create biz_story content', 15 => 'delete own biz_story content', 16 => 'delete any biz_story content', 17 => 'edit own biz_story content', 18 => 'edit any biz_story content', 19 => 'create project content', 20 => 'delete own project content', 21 => 'delete any project content', 22 => 'edit own project content', 23 => 'edit any project content', 24 => 'create user_story content', 25 => 'delete own user_story content', 26 => 'delete any user_story content', 27 => 'edit own user_story content', 28 => 'edit any user_story content', 29 => 'create issue content', 30 => 'delete own issue content', 31 => 'delete any issue content', 32 => 'edit own issue content', 33 => 'edit any issue content', 34 => 'create role content', 35 => 'delete own role content', 36 => 'delete any role content', 37 => 'edit own role content', 38 => 'edit any role content', 39 => 'create page content', 40 => 'delete own page content', 41 => 'delete any page content', 42 => 'edit own page content', 43 => 'edit any page content', 44 => 'create story content', 45 => 'delete own story content', 46 => 'delete any story content', 47 => 'edit own story content', 48 => 'edit any story content', 49 => 'create url aliases', 50 => 'administer url aliases', 51 => 'administer site configuration', 52 => 'access administration pages', 53 => 'administer actions', 54 => 'access site reports', 55 => 'select different theme', 56 => 'administer files', 57 => 'administer taxonomy', 58 => 'administer permissions', 59 => 'administer users', 60 => 'access user profiles', 61 => 'change own username', 62 => 'access administration menu', 63 => 'display drupal links', 64 => 'view advanced help topic', 65 => 'view advanced help popup', 66 => 'view advanced help index', 67 => 'Use PHP input for field settings (dangerous - grant with care)', 68 => 'use bulk exporter', 69 => 'administer custom content', 70 => 'administer stylizer', 71 => 'view date repeats', 72 => 'administer imageapi', 73 => 'administer imagecache', 74 => 'flush imagecache', 75 => 'view imagecache diagram_large', 76 => 'view imagecache diagram_medium', 77 => 'view imagecache diagram_thumbnail', 78 => 'administer login destination', 79 => 'clone node', 80 => 'clone own nodes', 81 => 'administer organic groups', 82 => 'view all panes', 83 => 'view pane admin links', 84 => 'administer pane visibility', 85 => 'administer pane access', 86 => 'administer advanced pane settings', 87 => 'administer panels layouts', 88 => 'use panels caching features', 89 => 'use panels dashboard', 90 => 'use panels in place editing', 91 => 'create mini panels', 92 => 'administer mini panels', 93 => 'generate installation profile', 94 => 'use views exporter', 95 => 'administer pathauto', 96 => 'notify of path changes', 97 => 'access all views', 98 => 'administer views', 99 => 'administer features', 100 => 'manage features', 101 => 'access devel information', 102 => 'execute php code', 103 => 'switch users', 104 => 'display source code', 105 => 'use page manager', 106 => 'administer page manager', ));



/********************************
 *     FILTERS AND FORMATS      *
 ********************************/
$formats_map[1] = install_add_format('Filtered HTML', '1');
install_add_format(array ( $roles_map[1], $roles_map[2],), $formats_map[1]);
$formats_map[2] = install_add_format('Full HTML', '1');
install_add_format(array (), $formats_map[2]);
install_set_filter($formats_map[1], 'filter', '2', '0');
install_set_filter($formats_map[1], 'filter', '0', '1');
install_set_filter($formats_map[1], 'filter', '1', '2');
install_set_filter($formats_map[1], 'filter', '3', '10');
install_set_filter($formats_map[2], 'filter', '2', '0');
install_set_filter($formats_map[2], 'filter', '1', '1');
install_set_filter($formats_map[2], 'filter', '3', '10');


/********************************
 *      USERS AND PROFILES       *
 ********************************/
$user_3 = install_add_user('victorkane', 'eded995645e93a3b1df15612c8eed315', 'victor.kane@gmail.com', array ( 2 => 'authenticated user', 3 => 'administrator', ), '1');
$user_4 = install_add_user('juanv87', '06c94b02bb1c24b7cc0128c6bbc3b80e', 'juanv87@gmail.com', array ( 2 => 'authenticated user', 3 => 'administrator', ), '0');
$user_5 = install_add_user('teammember1', '107af43fd55432125ac9cb759f10a8a9', 'teammember1@awebfactory.com.ar', array ( 2 => 'authenticated user', ), '1');
$user_6 = install_add_user('teammember2', '3a992f5cd9bec21bd405b19b134864a9', 'teammember2@awebfactory.com.ar', array ( 2 => 'authenticated user', ), '1');


/********************************
 *            PANELS             *
 ********************************/

/********************************
 *         MINI PANELS          *
 ********************************/


/********************************
 *            PANELS             *
 ********************************/
$display = new panels_display;
$display->layout = 'threecol_33_34_33';
$display->layout_settings = array();
$display->panel_settings = array( 'style_settings' => array( 'default' => array( 'corner_location' => 'pane', ), 'left' => NULL, 'middle' => NULL, 'right' => NULL, ), 'style' => 'rounded_corners', );
$display->cache = array();
$display->title = '%node:title';
$display->content = array();
$display->panels = array(); $pane = new stdClass; $pane->pid = 'new-1'; $pane->panel = 'left'; $pane->type = 'node_title'; $pane->subtype = 'node_title'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'link' => 0, 'context' => 'argument_nid_1', 'override_title' => 1, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-1'] = $pane; $display->panels['left'][0] = 'new-1'; $pane = new stdClass; $pane->pid = 'new-2'; $pane->panel = 'left'; $pane->type = 'node_body'; $pane->subtype = 'node_body'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'context' => 'argument_nid_1', 'override_title' => 1, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 1; $display->content['new-2'] = $pane; $display->panels['left'][1] = 'new-2'; $pane = new stdClass; $pane->pid = 'new-3'; $pane->panel = 'left'; $pane->type = 'content_fieldgroup'; $pane->subtype = 'user_story:group_us_confirmation'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'label' => 'normal', 'format' => 'simple', 'empty' => '', 'context' => 'argument_nid_1', 'override_title' => 1, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 2; $display->content['new-3'] = $pane; $display->panels['left'][2] = 'new-3'; $pane = new stdClass; $pane->pid = 'new-4'; $pane->panel = 'middle'; $pane->type = 'content_fieldgroup'; $pane->subtype = 'user_story:group_us_conversation'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'label' => 'normal', 'format' => 'fieldset_collapsible', 'empty' => '', 'context' => 'argument_nid_1', 'override_title' => 1, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-4'] = $pane; $display->panels['middle'][0] = 'new-4'; $pane = new stdClass; $pane->pid = 'new-5'; $pane->panel = 'right'; $pane->type = 'node_author'; $pane->subtype = 'node_author'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'link' => 1, 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-5'] = $pane; $display->panels['right'][0] = 'new-5'; $pane = new stdClass; $pane->pid = 'new-6'; $pane->panel = 'right'; $pane->type = 'node_created'; $pane->subtype = 'node_created'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'format' => 'large', 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 1; $display->content['new-6'] = $pane; $display->panels['right'][1] = 'new-6'; $pane = new stdClass; $pane->pid = 'new-7'; $pane->panel = 'right'; $pane->type = 'node_updated'; $pane->subtype = 'node_updated'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'format' => 'large', 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 2; $display->content['new-7'] = $pane; $display->panels['right'][2] = 'new-7'; $pane = new stdClass; $pane->pid = 'new-8'; $pane->panel = 'right'; $pane->type = 'node_links'; $pane->subtype = 'node_links'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_title' => 0, 'override_title_text' => '', 'teaser' => 1, 'identifier' => '', 'link' => 1, 'context' => 'argument_nid_1', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 3; $display->content['new-8'] = $pane; $display->panels['right'][3] = 'new-8'; $pane = new stdClass; $pane->pid = 'new-9'; $pane->panel = 'right'; $pane->type = 'node_terms'; $pane->subtype = 'node_terms'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'vid' => '0', 'term_format' => 'ul', 'link' => 1, 'term_delimiter' => ', ', 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 4; $display->content['new-9'] = $pane; $display->panels['right'][4] = 'new-9';
$display->hide_title = PANELS_TITLE_FIXED;
$display->title_pane = '0';
$x = panels_save_display($display);
$display = new panels_display;
$display->layout = 'precision_site_template';
$display->layout_settings = array( 'items' => array( 'canvas' => array( 'type' => 'row', 'contains' => 'column', 'children' => array( 0 => 'main', ), 'parent' => NULL, ), 'main' => array( 'type' => 'column', 'width' => 100, 'width_type' => '%', 'children' => array( 0 => 1, 1 => 'main-row', ), 'parent' => 'canvas', ), 'main-row' => array( 'type' => 'row', 'contains' => 'region', 'children' => array( 0 => 'content', ), 'parent' => 'main', ), 'content' => array( 'type' => 'region', 'title' => 'Content', 'width' => '100', 'width_type' => '%', 'parent' => 'main-row', 'class' => '', ), 1 => array( 'type' => 'row', 'contains' => 'region', 'children' => array( 0 => 'header', ), 'parent' => 'main', ), 'header' => array( 'type' => 'region', 'title' => 'Header', 'width' => 100, 'width_type' => '%', 'parent' => '1', ), ), );
$display->panel_settings = array( 'style_settings' => array( 'default' => NULL, 'content' => NULL, 'sidebar' => NULL, 'header' => NULL, 'branding' => NULL, 'main' => NULL, 'footer' => NULL, ), );
$display->cache = array();
$display->title = '';
$display->content = array();
$display->panels = array(); $pane = new stdClass; $pane->pid = 'new-1'; $pane->panel = 'branding'; $pane->type = 'pane_header'; $pane->subtype = 'pane_header'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array(); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-1'] = $pane; $display->panels['branding'][0] = 'new-1'; $pane = new stdClass; $pane->pid = 'new-2'; $pane->panel = 'branding'; $pane->type = 'pane_navigation'; $pane->subtype = 'pane_navigation'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array(); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 1; $display->content['new-2'] = $pane; $display->panels['branding'][1] = 'new-2'; $pane = new stdClass; $pane->pid = 'new-3'; $pane->panel = 'footer'; $pane->type = 'block'; $pane->subtype = 'user-0'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-3'] = $pane; $display->panels['footer'][0] = 'new-3'; $pane = new stdClass; $pane->pid = 'new-4'; $pane->panel = 'footer'; $pane->type = 'block'; $pane->subtype = 'user-1'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 1; $display->content['new-4'] = $pane; $display->panels['footer'][1] = 'new-4'; $pane = new stdClass; $pane->pid = 'new-5'; $pane->panel = 'main'; $pane->type = 'pane_messages'; $pane->subtype = 'pane_messages'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array(); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-5'] = $pane; $display->panels['main'][0] = 'new-5'; $pane = new stdClass; $pane->pid = 'new-6'; $pane->panel = 'main'; $pane->type = 'page_content'; $pane->subtype = 'page_content'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'context' => 'argument_page_content_1', 'override_title' => 1, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 1; $display->content['new-6'] = $pane; $display->panels['main'][1] = 'new-6';
$display->hide_title = PANELS_TITLE_PANE;
$display->title_pane = 'new-6';
$x = panels_save_display($display);
$display = new panels_display;
$display->layout = 'precision_column_one';
$display->layout_settings = array();
$display->panel_settings = array( 'style_settings' => array( 'default' => NULL, 'main' => NULL, 'aside_first' => NULL, 'aside_second' => NULL, ), );
$display->cache = array();
$display->title = '';
$display->content = array();
$display->panels = array(); $pane = new stdClass; $pane->pid = 'new-1'; $pane->panel = 'main'; $pane->type = 'node_content'; $pane->subtype = 'node_content'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'links' => 1, 'page' => 1, 'no_extras' => 0, 'override_title' => 0, 'override_title_text' => '', 'identifier' => '', 'link' => 0, 'leave_node_title' => 0, 'build_mode' => 'full', 'context' => 'argument_nid_1', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-1'] = $pane; $display->panels['main'][0] = 'new-1';
$display->hide_title = PANELS_TITLE_FIXED;
$display->title_pane = 'new-1';
$x = panels_save_display($display);
$display = new panels_display;
$display->layout = 'pft_column_two';
$display->layout_settings = array( 'items' => array( 'canvas' => array( 'type' => 'row', 'contains' => 'column', 'children' => array( 0 => 'main', 1 => 1, ), 'parent' => NULL, ), 'main' => array( 'type' => 'column', 'width' => '100', 'width_type' => '%', 'children' => array( 0 => 2, 1 => 'main-row', ), 'parent' => 'canvas', ), 'main-row' => array( 'type' => 'row', 'contains' => 'region', 'children' => array( 0 => 'center', ), 'parent' => 'main', ), 'center' => array( 'type' => 'region', 'title' => 'Center', 'width' => 100, 'width_type' => '%', 'parent' => 'main-row', ), 1 => array( 'type' => 'column', 'width' => '100', 'width_type' => 'px', 'parent' => 'canvas', 'children' => array( 0 => 3, ), ), 2 => array( 'type' => 'row', 'contains' => 'region', 'children' => array( 0 => 'row_1', ), 'parent' => 'main', 'class' => 'grid-36', ), 'row_1' => array( 'type' => 'region', 'title' => 'Row 1', 'width' => '427', 'width_type' => 'px', 'parent' => '2', 'class' => 'grid-36', ), 3 => array( 'type' => 'row', 'contains' => 'region', 'children' => array( 0 => 'aside', ), 'parent' => '1', ), 'aside' => array( 'type' => 'region', 'title' => 'Aside', 'width' => '86', 'width_type' => 'px', 'parent' => '3', 'class' => 'grid-14', ), ), );
$display->panel_settings = array( 'style_settings' => array( 'default' => NULL, 'main' => array( 'title' => 'User Stories', 'filling_tabs' => 'disabled', ), 'aside_first' => NULL, 'aside_second' => NULL, 'header_alpha' => NULL, 'header_beta' => NULL, 'aside_alpha' => NULL, 'aside_beta' => NULL, 'center' => array( 'title' => 'User Stories', 'filling_tabs' => 'disabled', ), 'row_1' => array( 'title' => 'User Stories', 'filling_tabs' => 'disabled', ), 'aside' => array( 'corner_location' => 'pane', ), 'main1' => array( 'corner_location' => 'pane', ), 'main2' => array( 'title' => 'User Stories', 'filling_tabs' => 'disabled', ), 'main3' => array( 'title' => 'Issues', 'filling_tabs' => 'disabled', ), ), 'main' => array( 'style' => 'tabs', ), 'center' => array( 'style' => 'tabs', ), 'aside' => array( 'style' => 'rounded_corners', ), 'row_1' => array( 'style' => 'tabs', ), 'main1' => array( 'style' => 'rounded_corners', ), 'main2' => array( 'style' => 'tabs', ), 'main3' => array( 'style' => 'tabs', ), );
$display->cache = array();
$display->title = 'Project: %node:title';
$display->content = array();
$display->panels = array(); $pane = new stdClass; $pane->pid = 'new-1'; $pane->panel = 'aside_beta'; $pane->type = 'block'; $pane->subtype = 'og-0'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'style' => 'rounded_corners', 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-1'] = $pane; $display->panels['aside_beta'][0] = 'new-1'; $pane = new stdClass; $pane->pid = 'new-2'; $pane->panel = 'aside_beta'; $pane->type = 'block'; $pane->subtype = 'og_views-1'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, 'style' => 'default', ); $pane->css = array(); $pane->extras = array(); $pane->position = 1; $display->content['new-2'] = $pane; $display->panels['aside_beta'][1] = 'new-2'; $pane = new stdClass; $pane->pid = 'new-3'; $pane->panel = 'header_alpha'; $pane->type = 'node_content'; $pane->subtype = 'node_content'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'links' => 1, 'page' => 1, 'no_extras' => 0, 'override_title' => 0, 'override_title_text' => '', 'identifier' => '', 'link' => 0, 'leave_node_title' => 0, 'build_mode' => 'full', 'context' => 'argument_nid_1', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-3'] = $pane; $display->panels['header_alpha'][0] = 'new-3'; $pane = new stdClass; $pane->pid = 'new-4'; $pane->panel = 'main1'; $pane->type = 'block'; $pane->subtype = 'views-list_biz_stories-block_1'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, 'style' => 'default', ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-4'] = $pane; $display->panels['main1'][0] = 'new-4'; $pane = new stdClass; $pane->pid = 'new-5'; $pane->panel = 'main1'; $pane->type = 'views'; $pane->subtype = 'list_roles'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_pager_settings' => 0, 'use_pager' => 0, 'nodes_per_page' => '10', 'pager_id' => '', 'offset' => '0', 'more_link' => 0, 'feed_icons' => 0, 'panel_args' => 0, 'link_to_view' => 0, 'args' => '', 'url' => '', 'display' => 'default', 'override_title' => 1, 'override_title_text' => 'Roles (primary actors)', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 1; $display->content['new-5'] = $pane; $display->panels['main1'][1] = 'new-5'; $pane = new stdClass; $pane->pid = 'new-6'; $pane->panel = 'main2'; $pane->type = 'views'; $pane->subtype = 'list_user_stories'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_pager_settings' => 0, 'use_pager' => 0, 'nodes_per_page' => '0', 'pager_id' => '', 'offset' => '0', 'more_link' => 0, 'feed_icons' => 0, 'panel_args' => 0, 'link_to_view' => 0, 'args' => '', 'url' => '', 'display' => 'block_2', 'override_title' => 1, 'override_title_text' => 'Bulk Operations', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-6'] = $pane; $display->panels['main2'][0] = 'new-6'; $pane = new stdClass; $pane->pid = 'new-7'; $pane->panel = 'main2'; $pane->type = 'views'; $pane->subtype = 'list_user_stories'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_pager_settings' => 0, 'use_pager' => 0, 'nodes_per_page' => '0', 'pager_id' => '', 'offset' => '0', 'more_link' => 0, 'feed_icons' => 0, 'panel_args' => 0, 'link_to_view' => 0, 'args' => '', 'url' => '', 'display' => 'block_1', 'override_title' => 1, 'override_title_text' => 'New', 'context' => array( 0 => 'context_term_1.name', ), ); $pane->cache = array(); $pane->style = array( 'style' => 'default', 'settings' => NULL, ); $pane->css = array( 'css_id' => '', 'css_class' => '', ); $pane->extras = array(); $pane->position = 1; $display->content['new-7'] = $pane; $display->panels['main2'][1] = 'new-7'; $pane = new stdClass; $pane->pid = 'new-8'; $pane->panel = 'main2'; $pane->type = 'views'; $pane->subtype = 'list_user_stories'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_pager_settings' => 0, 'use_pager' => 0, 'nodes_per_page' => '0', 'pager_id' => '', 'offset' => '0', 'more_link' => 0, 'feed_icons' => 0, 'panel_args' => 0, 'link_to_view' => 0, 'args' => '', 'url' => '', 'display' => 'block_1', 'context' => array( 0 => 'context_term_3.name', ), 'override_title' => 1, 'override_title_text' => 'Ready', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array( 'css_id' => '', 'css_class' => '', ); $pane->extras = array(); $pane->position = 2; $display->content['new-8'] = $pane; $display->panels['main2'][2] = 'new-8'; $pane = new stdClass; $pane->pid = 'new-9'; $pane->panel = 'main2'; $pane->type = 'views'; $pane->subtype = 'list_user_stories'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_pager_settings' => 0, 'use_pager' => 0, 'nodes_per_page' => '0', 'pager_id' => '', 'offset' => '0', 'more_link' => 0, 'feed_icons' => 0, 'panel_args' => 0, 'link_to_view' => 0, 'args' => '', 'url' => '', 'display' => 'block_1', 'context' => array( 0 => 'context_term_2.name', ), 'override_title' => 1, 'override_title_text' => 'In progress', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array( 'css_id' => '', 'css_class' => '', ); $pane->extras = array(); $pane->position = 3; $display->content['new-9'] = $pane; $display->panels['main2'][3] = 'new-9'; $pane = new stdClass; $pane->pid = 'new-10'; $pane->panel = 'main2'; $pane->type = 'views'; $pane->subtype = 'list_user_stories'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_pager_settings' => 0, 'use_pager' => 0, 'nodes_per_page' => '0', 'pager_id' => '', 'offset' => '0', 'more_link' => 0, 'feed_icons' => 0, 'panel_args' => 0, 'link_to_view' => 0, 'args' => '', 'url' => '', 'display' => 'block_1', 'context' => array( 0 => 'context_term_4.name', ), 'override_title' => 1, 'override_title_text' => 'Accepted', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array( 'css_id' => '', 'css_class' => '', ); $pane->extras = array(); $pane->position = 4; $display->content['new-10'] = $pane; $display->panels['main2'][4] = 'new-10'; $pane = new stdClass; $pane->pid = 'new-11'; $pane->panel = 'main2'; $pane->type = 'block'; $pane->subtype = 'views-list_user_stories-block_3'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_title' => 1, 'override_title_text' => 'By Role', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 5; $display->content['new-11'] = $pane; $display->panels['main2'][5] = 'new-11'; $pane = new stdClass; $pane->pid = 'new-12'; $pane->panel = 'main3'; $pane->type = 'views'; $pane->subtype = 'list_issues_by_project'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_pager_settings' => 0, 'use_pager' => 0, 'nodes_per_page' => '0', 'pager_id' => '', 'offset' => '0', 'more_link' => 0, 'feed_icons' => 0, 'panel_args' => 0, 'link_to_view' => 0, 'args' => '', 'url' => '', 'display' => 'default', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-12'] = $pane; $display->panels['main3'][0] = 'new-12'; $pane = new stdClass; $pane->pid = 'new-13'; $pane->panel = 'main3'; $pane->type = 'views'; $pane->subtype = 'list_issues_by_project'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_pager_settings' => 0, 'use_pager' => 0, 'nodes_per_page' => '0', 'pager_id' => '', 'offset' => '0', 'more_link' => 0, 'feed_icons' => 0, 'panel_args' => 0, 'link_to_view' => 0, 'args' => '', 'url' => '', 'display' => 'block_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 1; $display->content['new-13'] = $pane; $display->panels['main3'][1] = 'new-13'; $pane = new stdClass; $pane->pid = 'new-14'; $pane->panel = 'main3'; $pane->type = 'views'; $pane->subtype = 'list_issues_by_project'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_pager_settings' => 0, 'use_pager' => 0, 'nodes_per_page' => '0', 'pager_id' => '', 'offset' => '0', 'more_link' => 0, 'feed_icons' => 0, 'panel_args' => 0, 'link_to_view' => 0, 'args' => '', 'url' => '', 'display' => 'block_2', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 2; $display->content['new-14'] = $pane; $display->panels['main3'][2] = 'new-14'; $pane = new stdClass; $pane->pid = 'new-15'; $pane->panel = 'main3'; $pane->type = 'views'; $pane->subtype = 'list_issues_by_project'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_pager_settings' => 0, 'use_pager' => 0, 'nodes_per_page' => '0', 'pager_id' => '', 'offset' => '0', 'more_link' => 0, 'feed_icons' => 0, 'panel_args' => 0, 'link_to_view' => 0, 'args' => '', 'url' => '', 'display' => 'block_3', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 3; $display->content['new-15'] = $pane; $display->panels['main3'][3] = 'new-15';
$display->hide_title = PANELS_TITLE_FIXED;
$display->title_pane = 'new-3';
$x = panels_save_display($display);
$display = new panels_display;
$display->layout = 'pft_column_two';
$display->layout_settings = array();
$display->panel_settings = array( 'style_settings' => array( 'default' => array( 'corner_location' => 'pane', ), 'left' => NULL, 'middle' => NULL, 'right' => NULL, 'main' => NULL, 'aside_beta' => NULL, 'header_beta' => array( 'title' => '', 'filling_tabs' => 'disabled', ), 'aside_alpha' => NULL, 'main1' => array( 'title' => '', 'filling_tabs' => 'disabled', ), 'main2' => NULL, 'main3' => NULL, 'header_alpha' => NULL, ), 'style' => 'rounded_corners', 'header_alpha' => array( 'style' => 'default', ), 'header_beta' => array( 'style' => 'tabs', ), 'main1' => array( 'style' => 'tabs', ), );
$display->cache = array();
$display->title = 'User story: %node:title';
$display->content = array();
$display->panels = array(); $pane = new stdClass; $pane->pid = 'new-1'; $pane->panel = 'aside_beta'; $pane->type = 'content_field'; $pane->subtype = 'field_us_biz_story'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'label' => 'normal', 'formatter' => 'default', 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-1'] = $pane; $display->panels['aside_beta'][0] = 'new-1'; $pane = new stdClass; $pane->pid = 'new-2'; $pane->panel = 'aside_beta'; $pane->type = 'content_field'; $pane->subtype = 'field_us_role'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'label' => 'normal', 'formatter' => 'default', 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 1; $display->content['new-2'] = $pane; $display->panels['aside_beta'][1] = 'new-2'; $pane = new stdClass; $pane->pid = 'new-3'; $pane->panel = 'aside_beta'; $pane->type = 'block'; $pane->subtype = 'og-0'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 2; $display->content['new-3'] = $pane; $display->panels['aside_beta'][2] = 'new-3'; $pane = new stdClass; $pane->pid = 'new-4'; $pane->panel = 'aside_beta'; $pane->type = 'node_author'; $pane->subtype = 'node_author'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'link' => 1, 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 3; $display->content['new-4'] = $pane; $display->panels['aside_beta'][3] = 'new-4'; $pane = new stdClass; $pane->pid = 'new-5'; $pane->panel = 'header_alpha'; $pane->type = 'node_title'; $pane->subtype = 'node_title'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'link' => 0, 'context' => 'argument_nid_1', 'override_title' => 1, 'override_title_text' => ' User Story', ); $pane->cache = array(); $pane->style = array( 'style' => 'precision_grid', 'settings' => array( 'id' => '', 'class' => '', 'grid' => '24', 'prefix' => '', 'suffix' => '', 'pad' => '', 'push' => '', 'pull' => '', 'alpha' => 1, 'omega' => 1, ), ); $pane->css = array( 'css_id' => '', 'css_class' => 'title', ); $pane->extras = array(); $pane->position = 0; $display->content['new-5'] = $pane; $display->panels['header_alpha'][0] = 'new-5'; $pane = new stdClass; $pane->pid = 'new-6'; $pane->panel = 'header_alpha'; $pane->type = 'node_terms'; $pane->subtype = 'node_terms'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'vid' => '0', 'term_format' => 'ul', 'link' => 1, 'term_delimiter' => ', ', 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'style' => 'precision_grid', 'settings' => array( 'id' => '', 'class' => '', 'grid' => '10', 'prefix' => '', 'suffix' => '', 'pad' => '', 'push' => '', 'pull' => '', 'alpha' => 1, 'omega' => 1, ), ); $pane->css = array(); $pane->extras = array(); $pane->position = 1; $display->content['new-6'] = $pane; $display->panels['header_alpha'][1] = 'new-6'; $pane = new stdClass; $pane->pid = 'new-7'; $pane->panel = 'main1'; $pane->type = 'node_body'; $pane->subtype = 'node_body'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'context' => 'argument_nid_1', 'override_title' => 1, 'override_title_text' => 'Card', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-7'] = $pane; $display->panels['main1'][0] = 'new-7'; $pane = new stdClass; $pane->pid = 'new-8'; $pane->panel = 'main1'; $pane->type = 'content_fieldgroup'; $pane->subtype = 'user_story:group_us_conversation'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'label' => 'normal', 'format' => 'fieldset_collapsible', 'empty' => '', 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'style' => 'rounded_corners', 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 1; $display->content['new-8'] = $pane; $display->panels['main1'][1] = 'new-8'; $pane = new stdClass; $pane->pid = 'new-9'; $pane->panel = 'main1'; $pane->type = 'content_fieldgroup'; $pane->subtype = 'user_story:group_us_confirmation'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'label' => 'normal', 'format' => 'simple', 'empty' => '', 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, 'style' => 'rounded_corners', ); $pane->css = array(); $pane->extras = array(); $pane->position = 2; $display->content['new-9'] = $pane; $display->panels['main1'][2] = 'new-9'; $pane = new stdClass; $pane->pid = 'new-10'; $pane->panel = 'main1'; $pane->type = 'content_fieldgroup'; $pane->subtype = 'user_story:group_us_metrics'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'label' => 'normal', 'format' => 'simple', 'empty' => '', 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 3; $display->content['new-10'] = $pane; $display->panels['main1'][3] = 'new-10'; $pane = new stdClass; $pane->pid = 'new-11'; $pane->panel = 'main2'; $pane->type = 'node_links'; $pane->subtype = 'node_links'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_title' => 0, 'override_title_text' => '', 'teaser' => 1, 'identifier' => '', 'link' => 1, 'context' => 'argument_nid_1', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-11'] = $pane; $display->panels['main2'][0] = 'new-11'; $pane = new stdClass; $pane->pid = 'new-12'; $pane->panel = 'main2'; $pane->type = 'views'; $pane->subtype = 'list_issues'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_pager_settings' => 0, 'use_pager' => 0, 'nodes_per_page' => '0', 'pager_id' => '', 'offset' => '0', 'more_link' => 0, 'feed_icons' => 0, 'panel_args' => 0, 'link_to_view' => 0, 'args' => '', 'url' => '', 'display' => 'node_content_1', 'context' => array( 0 => '', ), 'override_title' => 1, 'override_title_text' => 'Issues', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 1; $display->content['new-12'] = $pane; $display->panels['main2'][1] = 'new-12'; $pane = new stdClass; $pane->pid = 'new-13'; $pane->panel = 'main3'; $pane->type = 'node_created'; $pane->subtype = 'node_created'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'format' => 'large', 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-13'] = $pane; $display->panels['main3'][0] = 'new-13'; $pane = new stdClass; $pane->pid = 'new-14'; $pane->panel = 'main3'; $pane->type = 'node_updated'; $pane->subtype = 'node_updated'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'format' => 'large', 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 1; $display->content['new-14'] = $pane; $display->panels['main3'][1] = 'new-14';
$display->hide_title = PANELS_TITLE_FIXED;
$display->title_pane = '0';
$x = panels_save_display($display);
$display = new panels_display;
$display->layout = 'pft_column_two';
$display->layout_settings = array();
$display->panel_settings = array( 'style_settings' => array( 'default' => array( 'corner_location' => 'pane', ), 'left' => NULL, 'middle' => NULL, 'right' => NULL, 'main' => NULL, 'aside_beta' => NULL, 'header_beta' => array( 'title' => '', 'filling_tabs' => 'disabled', ), 'aside_alpha' => NULL, 'main1' => array( 'title' => '', 'filling_tabs' => 'disabled', ), 'header_alpha' => NULL, 'main2' => NULL, 'main3' => NULL, ), 'style' => 'rounded_corners', 'header_alpha' => array( 'style' => 'default', ), 'header_beta' => array( 'style' => 'tabs', ), 'main1' => array( 'style' => 'tabs', ), );
$display->cache = array();
$display->title = 'Issue: %node:title';
$display->content = array();
$display->panels = array(); $pane = new stdClass; $pane->pid = 'new-1'; $pane->panel = 'aside_beta'; $pane->type = 'content_field'; $pane->subtype = 'field_issue_user_story'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'label' => 'normal', 'formatter' => 'default', 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-1'] = $pane; $display->panels['aside_beta'][0] = 'new-1'; $pane = new stdClass; $pane->pid = 'new-2'; $pane->panel = 'aside_beta'; $pane->type = 'views'; $pane->subtype = 'list_issues'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_pager_settings' => 0, 'use_pager' => 0, 'nodes_per_page' => '10', 'pager_id' => '', 'offset' => '0', 'more_link' => 0, 'feed_icons' => 0, 'panel_args' => 0, 'link_to_view' => 0, 'args' => '', 'url' => '', 'display' => 'block_1', 'context' => array( 0 => 'relationship_node_from_noderef_1.nid', ), 'override_title' => 1, 'override_title_text' => 'Issues list', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 1; $display->content['new-2'] = $pane; $display->panels['aside_beta'][1] = 'new-2'; $pane = new stdClass; $pane->pid = 'new-3'; $pane->panel = 'aside_beta'; $pane->type = 'block'; $pane->subtype = 'og-0'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 2; $display->content['new-3'] = $pane; $display->panels['aside_beta'][2] = 'new-3'; $pane = new stdClass; $pane->pid = 'new-4'; $pane->panel = 'aside_beta'; $pane->type = 'node_author'; $pane->subtype = 'node_author'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'link' => 1, 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 3; $display->content['new-4'] = $pane; $display->panels['aside_beta'][3] = 'new-4'; $pane = new stdClass; $pane->pid = 'new-5'; $pane->panel = 'header_alpha'; $pane->type = 'node_title'; $pane->subtype = 'node_title'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'link' => 0, 'context' => 'argument_nid_1', 'override_title' => 1, 'override_title_text' => ' Issue', ); $pane->cache = array(); $pane->style = array( 'settings' => array( 'id' => '', 'class' => '', 'grid' => '24', 'prefix' => '', 'suffix' => '', 'pad' => '', 'push' => '', 'pull' => '', 'alpha' => 1, 'omega' => 1, ), 'style' => 'precision_grid', ); $pane->css = array( 'css_id' => '', 'css_class' => 'title', ); $pane->extras = array(); $pane->position = 0; $display->content['new-5'] = $pane; $display->panels['header_alpha'][0] = 'new-5'; $pane = new stdClass; $pane->pid = 'new-6'; $pane->panel = 'header_alpha'; $pane->type = 'node_terms'; $pane->subtype = 'node_terms'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'vid' => '0', 'term_format' => 'ul', 'link' => 1, 'term_delimiter' => ', ', 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => array( 'id' => '', 'class' => '', 'grid' => '10', 'prefix' => '', 'suffix' => '', 'pad' => '', 'push' => '', 'pull' => '', 'alpha' => 1, 'omega' => 1, ), 'style' => 'precision_grid', ); $pane->css = array(); $pane->extras = array(); $pane->position = 1; $display->content['new-6'] = $pane; $display->panels['header_alpha'][1] = 'new-6'; $pane = new stdClass; $pane->pid = 'new-7'; $pane->panel = 'main1'; $pane->type = 'node_body'; $pane->subtype = 'node_body'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'context' => 'argument_nid_1', 'override_title' => 1, 'override_title_text' => 'Description', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-7'] = $pane; $display->panels['main1'][0] = 'new-7'; $pane = new stdClass; $pane->pid = 'new-8'; $pane->panel = 'main1'; $pane->type = 'content_fieldgroup'; $pane->subtype = 'issue:group_issue_metrics'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'label' => 'normal', 'format' => 'simple', 'empty' => '', 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 1; $display->content['new-8'] = $pane; $display->panels['main1'][1] = 'new-8'; $pane = new stdClass; $pane->pid = 'new-9'; $pane->panel = 'main2'; $pane->type = 'node_created'; $pane->subtype = 'node_created'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'format' => 'large', 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-9'] = $pane; $display->panels['main2'][0] = 'new-9'; $pane = new stdClass; $pane->pid = 'new-10'; $pane->panel = 'main2'; $pane->type = 'node_updated'; $pane->subtype = 'node_updated'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'format' => 'large', 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 1; $display->content['new-10'] = $pane; $display->panels['main2'][1] = 'new-10'; $pane = new stdClass; $pane->pid = 'new-11'; $pane->panel = 'main2'; $pane->type = 'node_links'; $pane->subtype = 'node_links'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_title' => 0, 'override_title_text' => '', 'teaser' => 1, 'identifier' => '', 'link' => 1, 'context' => 'argument_nid_1', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 2; $display->content['new-11'] = $pane; $display->panels['main2'][2] = 'new-11';
$display->hide_title = PANELS_TITLE_FIXED;
$display->title_pane = '0';
$x = panels_save_display($display);
$display = new panels_display;
$display->layout = 'pft_column_two';
$display->layout_settings = array();
$display->panel_settings = array( 'style_settings' => array( 'default' => array( 'corner_location' => 'pane', ), 'left' => NULL, 'middle' => NULL, 'right' => NULL, 'main' => NULL, 'aside_beta' => NULL, 'header_beta' => array( 'title' => '', 'filling_tabs' => 'disabled', ), 'aside_alpha' => NULL, 'main1' => array( 'title' => '', 'filling_tabs' => 'disabled', ), 'header_alpha' => NULL, 'main2' => NULL, 'main3' => NULL, ), 'style' => 'rounded_corners', 'header_alpha' => array( 'style' => 'default', ), 'header_beta' => array( 'style' => 'tabs', ), 'main1' => array( 'style' => 'tabs', ), );
$display->cache = array();
$display->title = 'Role: %node:title';
$display->content = array();
$display->panels = array(); $pane = new stdClass; $pane->pid = 'new-1'; $pane->panel = 'aside_beta'; $pane->type = 'block'; $pane->subtype = 'views-list_roles-block_1'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_title' => 1, 'override_title_text' => 'Roles', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-1'] = $pane; $display->panels['aside_beta'][0] = 'new-1'; $pane = new stdClass; $pane->pid = 'new-2'; $pane->panel = 'aside_beta'; $pane->type = 'block'; $pane->subtype = 'og-0'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 1; $display->content['new-2'] = $pane; $display->panels['aside_beta'][1] = 'new-2'; $pane = new stdClass; $pane->pid = 'new-3'; $pane->panel = 'aside_beta'; $pane->type = 'node_author'; $pane->subtype = 'node_author'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'link' => 1, 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 2; $display->content['new-3'] = $pane; $display->panels['aside_beta'][2] = 'new-3'; $pane = new stdClass; $pane->pid = 'new-4'; $pane->panel = 'header_alpha'; $pane->type = 'node_title'; $pane->subtype = 'node_title'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'link' => 0, 'context' => 'argument_nid_1', 'override_title' => 1, 'override_title_text' => 'Role', ); $pane->cache = array(); $pane->style = array( 'settings' => array( 'id' => '', 'class' => '', 'grid' => '24', 'prefix' => '', 'suffix' => '', 'pad' => '', 'push' => '', 'pull' => '', 'alpha' => 1, 'omega' => 1, ), 'style' => 'precision_grid', ); $pane->css = array( 'css_id' => '', 'css_class' => 'title', ); $pane->extras = array(); $pane->position = 0; $display->content['new-4'] = $pane; $display->panels['header_alpha'][0] = 'new-4'; $pane = new stdClass; $pane->pid = 'new-5'; $pane->panel = 'header_alpha'; $pane->type = 'node_terms'; $pane->subtype = 'node_terms'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'vid' => '0', 'term_format' => 'ul', 'link' => 1, 'term_delimiter' => ', ', 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => array( 'id' => '', 'class' => '', 'grid' => '10', 'prefix' => '', 'suffix' => '', 'pad' => '', 'push' => '', 'pull' => '', 'alpha' => 1, 'omega' => 1, ), 'style' => 'precision_grid', ); $pane->css = array(); $pane->extras = array(); $pane->position = 1; $display->content['new-5'] = $pane; $display->panels['header_alpha'][1] = 'new-5'; $pane = new stdClass; $pane->pid = 'new-6'; $pane->panel = 'main1'; $pane->type = 'node_body'; $pane->subtype = 'node_body'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'context' => 'argument_nid_1', 'override_title' => 1, 'override_title_text' => 'Description', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-6'] = $pane; $display->panels['main1'][0] = 'new-6'; $pane = new stdClass; $pane->pid = 'new-7'; $pane->panel = 'main1'; $pane->type = 'content_fieldgroup'; $pane->subtype = 'issue:group_issue_metrics'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'label' => 'normal', 'format' => 'simple', 'empty' => '', 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 1; $display->content['new-7'] = $pane; $display->panels['main1'][1] = 'new-7'; $pane = new stdClass; $pane->pid = 'new-8'; $pane->panel = 'main2'; $pane->type = 'node_links'; $pane->subtype = 'node_links'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_title' => 0, 'override_title_text' => '', 'teaser' => 1, 'identifier' => '', 'link' => 1, 'context' => 'argument_nid_1', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array( 'css_id' => '', 'css_class' => 'clear-block', ); $pane->extras = array(); $pane->position = 0; $display->content['new-8'] = $pane; $display->panels['main2'][0] = 'new-8'; $pane = new stdClass; $pane->pid = 'new-9'; $pane->panel = 'main2'; $pane->type = 'block'; $pane->subtype = 'views-list_user_stories-block_4'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_title' => 1, 'override_title_text' => 'User Stories for this Role', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 1; $display->content['new-9'] = $pane; $display->panels['main2'][1] = 'new-9'; $pane = new stdClass; $pane->pid = 'new-10'; $pane->panel = 'main3'; $pane->type = 'node_created'; $pane->subtype = 'node_created'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'format' => 'large', 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-10'] = $pane; $display->panels['main3'][0] = 'new-10'; $pane = new stdClass; $pane->pid = 'new-11'; $pane->panel = 'main3'; $pane->type = 'node_updated'; $pane->subtype = 'node_updated'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'format' => 'large', 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 1; $display->content['new-11'] = $pane; $display->panels['main3'][1] = 'new-11';
$display->hide_title = PANELS_TITLE_FIXED;
$display->title_pane = '0';
$x = panels_save_display($display);
$display = new panels_display;
$display->layout = 'pft_column_two';
$display->layout_settings = array();
$display->panel_settings = array( 'style_settings' => array( 'default' => array( 'corner_location' => 'pane', ), 'left' => NULL, 'middle' => NULL, 'right' => NULL, 'main' => NULL, 'aside_beta' => NULL, 'header_beta' => array( 'title' => '', 'filling_tabs' => 'disabled', ), 'aside_alpha' => NULL, 'main1' => array( 'title' => '', 'filling_tabs' => 'disabled', ), 'header_alpha' => NULL, 'main2' => NULL, 'main3' => NULL, ), 'style' => 'rounded_corners', 'header_alpha' => array( 'style' => 'default', ), 'header_beta' => array( 'style' => 'tabs', ), 'main1' => array( 'style' => 'tabs', ), );
$display->cache = array();
$display->title = 'Issue: %node:title';
$display->content = array();
$display->panels = array(); $pane = new stdClass; $pane->pid = 'new-1'; $pane->panel = 'aside_beta'; $pane->type = 'block'; $pane->subtype = 'og-0'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-1'] = $pane; $display->panels['aside_beta'][0] = 'new-1'; $pane = new stdClass; $pane->pid = 'new-2'; $pane->panel = 'aside_beta'; $pane->type = 'node_author'; $pane->subtype = 'node_author'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'link' => 1, 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 1; $display->content['new-2'] = $pane; $display->panels['aside_beta'][1] = 'new-2'; $pane = new stdClass; $pane->pid = 'new-3'; $pane->panel = 'header_alpha'; $pane->type = 'node_title'; $pane->subtype = 'node_title'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'link' => 0, 'context' => 'argument_nid_1', 'override_title' => 1, 'override_title_text' => 'Biz story', ); $pane->cache = array(); $pane->style = array( 'settings' => array( 'id' => '', 'class' => '', 'grid' => '24', 'prefix' => '', 'suffix' => '', 'pad' => '', 'push' => '', 'pull' => '', 'alpha' => 1, 'omega' => 1, ), 'style' => 'precision_grid', ); $pane->css = array( 'css_id' => '', 'css_class' => 'title', ); $pane->extras = array(); $pane->position = 0; $display->content['new-3'] = $pane; $display->panels['header_alpha'][0] = 'new-3'; $pane = new stdClass; $pane->pid = 'new-4'; $pane->panel = 'header_alpha'; $pane->type = 'node_terms'; $pane->subtype = 'node_terms'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'vid' => '0', 'term_format' => 'ul', 'link' => 1, 'term_delimiter' => ', ', 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => array( 'id' => '', 'class' => '', 'grid' => '10', 'prefix' => '', 'suffix' => '', 'pad' => '', 'push' => '', 'pull' => '', 'alpha' => 1, 'omega' => 1, ), 'style' => 'precision_grid', ); $pane->css = array(); $pane->extras = array(); $pane->position = 1; $display->content['new-4'] = $pane; $display->panels['header_alpha'][1] = 'new-4'; $pane = new stdClass; $pane->pid = 'new-5'; $pane->panel = 'main1'; $pane->type = 'node_body'; $pane->subtype = 'node_body'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'context' => 'argument_nid_1', 'override_title' => 1, 'override_title_text' => 'Description', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-5'] = $pane; $display->panels['main1'][0] = 'new-5'; $pane = new stdClass; $pane->pid = 'new-6'; $pane->panel = 'main2'; $pane->type = 'views'; $pane->subtype = 'list_user_stories'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_pager_settings' => 0, 'use_pager' => 0, 'nodes_per_page' => '0', 'pager_id' => '', 'offset' => '0', 'more_link' => 0, 'feed_icons' => 0, 'panel_args' => 0, 'link_to_view' => 0, 'args' => '%1', 'url' => '', 'display' => 'block_5', 'context' => array( 0 => '', ), 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-6'] = $pane; $display->panels['main2'][0] = 'new-6'; $pane = new stdClass; $pane->pid = 'new-7'; $pane->panel = 'main3'; $pane->type = 'node_links'; $pane->subtype = 'node_links'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'override_title' => 0, 'override_title_text' => '', 'teaser' => 1, 'identifier' => '', 'link' => 1, 'context' => 'argument_nid_1', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 0; $display->content['new-7'] = $pane; $display->panels['main3'][0] = 'new-7'; $pane = new stdClass; $pane->pid = 'new-8'; $pane->panel = 'main3'; $pane->type = 'node_created'; $pane->subtype = 'node_created'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'format' => 'large', 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 1; $display->content['new-8'] = $pane; $display->panels['main3'][1] = 'new-8'; $pane = new stdClass; $pane->pid = 'new-9'; $pane->panel = 'main3'; $pane->type = 'node_updated'; $pane->subtype = 'node_updated'; $pane->shown = TRUE; $pane->access = array(); $pane->configuration = array( 'format' => 'large', 'context' => 'argument_nid_1', 'override_title' => 0, 'override_title_text' => '', ); $pane->cache = array(); $pane->style = array( 'settings' => NULL, ); $pane->css = array(); $pane->extras = array(); $pane->position = 2; $display->content['new-9'] = $pane; $display->panels['main3'][2] = 'new-9';
$display->hide_title = PANELS_TITLE_FIXED;
$display->title_pane = '0';
$x = panels_save_display($display); 


/********************************
 *         PAGE MANAGER          *
 ********************************/
db_query("TRUNCATE TABLE {%s}", 'page_manager_handlers');
db_query("INSERT INTO {page_manager_handlers} (did, name, task, subtask, handler, weight, conf) VALUES ('1', 'node_view_panel_context', 'node_view', '', 'panel_context', '-24', 'a:8:{s:5:\"title\";s:18:\"Basic node variant\";s:9:\"no_blocks\";i:0;s:8:\"pipeline\";s:8:\"standard\";s:6:\"css_id\";s:0:\"\";s:3:\"css\";s:0:\"\";s:8:\"contexts\";a:1:{i:0;a:5:{s:4:\"name\";s:4:\"node\";s:2:\"id\";i:1;s:10:\"identifier\";s:6:\"Node_4\";s:7:\"keyword\";s:6:\"node_4\";s:16:\"context_settings\";a:2:{s:4:\"node\";s:41:\"Ut venenatis convallis tortor... [nid: 4]\";s:3:\"nid\";s:1:\"4\";}}}s:13:\"relationships\";a:0:{}s:3:\"did\";s:1:\"1\";}')");
db_query("INSERT INTO {page_manager_handlers} (did, name, task, subtask, handler, weight, conf) VALUES ('2', 'site_template_panel_context', 'site_template', '', 'panel_context', '0', 'a:10:{s:5:\"title\";s:12:\"Main variant\";s:9:\"no_blocks\";i:1;s:6:\"css_id\";s:0:\"\";s:3:\"css\";s:0:\"\";s:8:\"contexts\";a:0:{}s:13:\"relationships\";a:0:{}s:6:\"access\";a:2:{s:7:\"plugins\";a:0:{}s:5:\"logic\";s:3:\"and\";}s:3:\"did\";s:1:\"2\";s:8:\"pipeline\";s:8:\"standard\";s:11:\"temp_layout\";s:23:\"precision_site_template\";}')");
db_query("INSERT INTO {page_manager_handlers} (did, name, task, subtask, handler, weight, conf) VALUES ('3', 'node_view_panel_context_2', 'node_view', '', 'panel_context', '-25', 'a:9:{s:5:\"title\";s:12:\"Page variant\";s:9:\"no_blocks\";i:0;s:8:\"pipeline\";s:8:\"standard\";s:6:\"css_id\";s:0:\"\";s:3:\"css\";s:0:\"\";s:8:\"contexts\";a:0:{}s:13:\"relationships\";a:0:{}s:6:\"access\";a:2:{s:7:\"plugins\";a:1:{i:0;a:4:{s:4:\"name\";s:9:\"node_type\";s:8:\"settings\";a:1:{s:4:\"type\";a:1:{s:4:\"page\";s:4:\"page\";}}s:7:\"context\";s:14:\"argument_nid_1\";s:3:\"not\";b:0;}}s:5:\"logic\";s:3:\"and\";}s:3:\"did\";s:1:\"3\";}')");
db_query("INSERT INTO {page_manager_handlers} (did, name, task, subtask, handler, weight, conf) VALUES ('4', 'node_view_panel_context_3', 'node_view', '', 'panel_context', '-30', 'a:10:{s:5:\"title\";s:15:\"Project variant\";s:9:\"no_blocks\";i:0;s:8:\"pipeline\";s:8:\"standard\";s:6:\"css_id\";s:0:\"\";s:3:\"css\";s:0:\"\";s:8:\"contexts\";a:4:{i:0;a:5:{s:4:\"name\";s:4:\"term\";s:2:\"id\";i:1;s:10:\"identifier\";s:3:\"New\";s:7:\"keyword\";s:4:\"term\";s:16:\"context_settings\";a:3:{s:3:\"vid\";s:1:\"1\";s:8:\"taxonomy\";a:2:{i:1;s:3:\"New\";i:2;s:0:\"\";}s:3:\"tid\";s:1:\"1\";}}i:1;a:5:{s:4:\"name\";s:4:\"term\";s:2:\"id\";i:2;s:10:\"identifier\";s:11:\"In progress\";s:7:\"keyword\";s:11:\"in_progress\";s:16:\"context_settings\";a:3:{s:3:\"vid\";s:1:\"1\";s:8:\"taxonomy\";a:2:{i:1;s:11:\"In progress\";i:2;s:0:\"\";}s:3:\"tid\";s:1:\"3\";}}i:2;a:5:{s:4:\"name\";s:4:\"term\";s:2:\"id\";i:3;s:10:\"identifier\";s:5:\"Ready\";s:7:\"keyword\";s:5:\"ready\";s:16:\"context_settings\";a:3:{s:3:\"vid\";s:1:\"1\";s:8:\"taxonomy\";a:2:{i:1;s:5:\"Ready\";i:2;s:0:\"\";}s:3:\"tid\";s:1:\"2\";}}i:3;a:5:{s:4:\"name\";s:4:\"term\";s:2:\"id\";i:4;s:10:\"identifier\";s:8:\"Accepted\";s:7:\"keyword\";s:8:\"accepted\";s:16:\"context_settings\";a:3:{s:3:\"vid\";s:1:\"1\";s:8:\"taxonomy\";a:2:{i:1;s:8:\"Accepted\";i:2;s:0:\"\";}s:3:\"tid\";s:1:\"4\";}}}s:13:\"relationships\";a:0:{}s:6:\"access\";a:2:{s:7:\"plugins\";a:1:{i:0;a:4:{s:4:\"name\";s:9:\"node_type\";s:8:\"settings\";a:1:{s:4:\"type\";a:1:{s:7:\"project\";s:7:\"project\";}}s:7:\"context\";s:14:\"argument_nid_1\";s:3:\"not\";b:0;}}s:5:\"logic\";s:3:\"and\";}s:3:\"did\";s:1:\"4\";s:11:\"temp_layout\";s:14:\"pft_column_two\";}')");
db_query("INSERT INTO {page_manager_handlers} (did, name, task, subtask, handler, weight, conf) VALUES ('5', 'node_view_panel_context_4', 'node_view', '', 'panel_context', '-28', 'a:10:{s:5:\"title\";s:18:\"User Story variant\";s:9:\"no_blocks\";i:0;s:8:\"pipeline\";s:8:\"standard\";s:6:\"css_id\";s:0:\"\";s:3:\"css\";s:0:\"\";s:8:\"contexts\";a:1:{i:0;a:5:{s:4:\"name\";s:4:\"node\";s:2:\"id\";i:1;s:10:\"identifier\";s:6:\"Node_4\";s:7:\"keyword\";s:6:\"node_4\";s:16:\"context_settings\";a:2:{s:4:\"node\";s:41:\"Ut venenatis convallis tortor... [nid: 4]\";s:3:\"nid\";s:1:\"4\";}}}s:13:\"relationships\";a:0:{}s:3:\"did\";s:1:\"5\";s:6:\"access\";a:2:{s:7:\"plugins\";a:1:{i:0;a:4:{s:4:\"name\";s:9:\"node_type\";s:8:\"settings\";a:1:{s:4:\"type\";a:1:{s:10:\"user_story\";s:10:\"user_story\";}}s:7:\"context\";s:14:\"argument_nid_1\";s:3:\"not\";b:0;}}s:5:\"logic\";s:3:\"and\";}s:11:\"temp_layout\";s:14:\"pft_column_two\";}')");
db_query("INSERT INTO {page_manager_handlers} (did, name, task, subtask, handler, weight, conf) VALUES ('6', 'node_view_panel_context_5', 'node_view', '', 'panel_context', '-27', 'a:10:{s:5:\"title\";s:13:\"Issue variant\";s:9:\"no_blocks\";i:0;s:8:\"pipeline\";s:8:\"standard\";s:6:\"css_id\";s:0:\"\";s:3:\"css\";s:0:\"\";s:8:\"contexts\";a:1:{i:0;a:5:{s:4:\"name\";s:4:\"node\";s:2:\"id\";i:1;s:10:\"identifier\";s:6:\"Node_4\";s:7:\"keyword\";s:6:\"node_4\";s:16:\"context_settings\";a:2:{s:4:\"node\";s:41:\"Ut venenatis convallis tortor... [nid: 4]\";s:3:\"nid\";s:1:\"4\";}}}s:13:\"relationships\";a:1:{i:0;a:6:{s:7:\"context\";s:14:\"argument_nid_1\";s:4:\"name\";s:17:\"node_from_noderef\";s:2:\"id\";i:1;s:10:\"identifier\";s:30:\"User story node from reference\";s:7:\"keyword\";s:24:\"user-story-nodereference\";s:21:\"relationship_settings\";a:1:{s:10:\"field_name\";s:22:\"field_issue_user_story\";}}}s:6:\"access\";a:2:{s:7:\"plugins\";a:1:{i:0;a:4:{s:4:\"name\";s:9:\"node_type\";s:8:\"settings\";a:1:{s:4:\"type\";a:1:{s:5:\"issue\";s:5:\"issue\";}}s:7:\"context\";s:14:\"argument_nid_1\";s:3:\"not\";b:0;}}s:5:\"logic\";s:3:\"and\";}s:3:\"did\";s:1:\"6\";s:11:\"temp_layout\";s:14:\"pft_column_two\";}')");
db_query("INSERT INTO {page_manager_handlers} (did, name, task, subtask, handler, weight, conf) VALUES ('7', 'node_view_panel_context_6', 'node_view', '', 'panel_context', '-26', 'a:9:{s:5:\"title\";s:12:\"Role variant\";s:9:\"no_blocks\";i:0;s:8:\"pipeline\";s:8:\"standard\";s:6:\"css_id\";s:0:\"\";s:3:\"css\";s:0:\"\";s:8:\"contexts\";a:1:{i:0;a:5:{s:4:\"name\";s:4:\"node\";s:2:\"id\";i:1;s:10:\"identifier\";s:6:\"Node_4\";s:7:\"keyword\";s:6:\"node_4\";s:16:\"context_settings\";a:2:{s:4:\"node\";s:41:\"Ut venenatis convallis tortor... [nid: 4]\";s:3:\"nid\";s:1:\"4\";}}}s:13:\"relationships\";a:1:{i:0;a:6:{s:7:\"context\";s:14:\"argument_nid_1\";s:4:\"name\";s:17:\"node_from_noderef\";s:2:\"id\";i:1;s:10:\"identifier\";s:30:\"User story node from reference\";s:7:\"keyword\";s:24:\"user-story-nodereference\";s:21:\"relationship_settings\";a:1:{s:10:\"field_name\";s:22:\"field_issue_user_story\";}}}s:6:\"access\";a:2:{s:7:\"plugins\";a:1:{i:0;a:4:{s:4:\"name\";s:9:\"node_type\";s:8:\"settings\";a:1:{s:4:\"type\";a:1:{s:4:\"role\";s:4:\"role\";}}s:7:\"context\";s:14:\"argument_nid_1\";s:3:\"not\";b:0;}}s:5:\"logic\";s:3:\"and\";}s:3:\"did\";s:1:\"7\";}')");
db_query("INSERT INTO {page_manager_handlers} (did, name, task, subtask, handler, weight, conf) VALUES ('8', 'node_view_panel_context_7', 'node_view', '', 'panel_context', '-29', 'a:9:{s:5:\"title\";s:17:\"Biz story variant\";s:9:\"no_blocks\";i:0;s:8:\"pipeline\";s:8:\"standard\";s:6:\"css_id\";s:0:\"\";s:3:\"css\";s:0:\"\";s:8:\"contexts\";a:1:{i:0;a:5:{s:4:\"name\";s:4:\"node\";s:2:\"id\";i:1;s:10:\"identifier\";s:6:\"Node_4\";s:7:\"keyword\";s:6:\"node_4\";s:16:\"context_settings\";a:2:{s:4:\"node\";s:41:\"Ut venenatis convallis tortor... [nid: 4]\";s:3:\"nid\";s:1:\"4\";}}}s:13:\"relationships\";a:2:{i:0;a:6:{s:7:\"context\";s:14:\"argument_nid_1\";s:4:\"name\";s:17:\"node_from_noderef\";s:2:\"id\";i:1;s:10:\"identifier\";s:30:\"User story node from reference\";s:7:\"keyword\";s:24:\"user-story-nodereference\";s:21:\"relationship_settings\";a:1:{s:10:\"field_name\";s:22:\"field_issue_user_story\";}}i:1;a:6:{s:7:\"context\";s:14:\"argument_nid_1\";s:4:\"name\";s:17:\"node_from_noderef\";s:2:\"id\";i:2;s:10:\"identifier\";s:38:\"Biz story from reference in user story\";s:7:\"keyword\";s:34:\"biz-story-referenced-in-user-story\";s:21:\"relationship_settings\";a:1:{s:10:\"field_name\";s:18:\"field_us_biz_story\";}}}s:6:\"access\";a:2:{s:7:\"plugins\";a:1:{i:0;a:4:{s:4:\"name\";s:9:\"node_type\";s:8:\"settings\";a:1:{s:4:\"type\";a:1:{s:9:\"biz_story\";s:9:\"biz_story\";}}s:7:\"context\";s:14:\"argument_nid_1\";s:3:\"not\";b:0;}}s:5:\"logic\";s:3:\"and\";}s:3:\"did\";s:1:\"8\";}')");
db_query("TRUNCATE TABLE {%s}", 'page_manager_pages');
db_query("TRUNCATE TABLE {%s}", 'page_manager_weights');


/********************************
 *            MENUS             *
 ********************************/
$mlids = array();
/********************************
 *       MENU: NAVIGATION        *
 ********************************/
$menu_name = install_menu_create_menu('Navigation', 'navigation', 'The navigation menu is provided by Drupal and is the main interactive menu for any site. It is usually the only menu that contains personalized links for authenticated users, and is often not even visible to anonymous users.');

$mlids["navigation_kids"] = 0;
$mlids["navigation_kids_0"] = install_menu_create_menu_item('batch', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_1"] = install_menu_create_menu_item('node', 'Content', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_2"] = install_menu_create_menu_item('logout', 'Log out', 0, $menu_name, $mlids["navigation_kids"], '10', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_3"] = install_menu_create_menu_item('rss.xml', 'RSS feed', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_4"] = install_menu_create_menu_item('user', 'User account', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_5"] = install_menu_create_menu_item('node/%', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_6"] = install_menu_create_menu_item('filter/tips', 'Compose tips', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '1', FALSE, '0', '0', '0');
$mlids["navigation_kids_7"] = install_menu_create_menu_item('comment/delete', 'Delete comment', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_8"] = install_menu_create_menu_item('comment/edit', 'Edit comment', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_9"] = install_menu_create_menu_item('system/files', 'File download', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_10"] = install_menu_create_menu_item('user/autocomplete', 'User autocomplete', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_11"] = install_menu_create_menu_item('user/%', 'My account', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_11_0"] = install_menu_create_menu_item('user/%/delete', 'Delete', 0, $menu_name, $mlids["navigation_kids_11"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_12"] = install_menu_create_menu_item('node/%/delete', 'Delete', 0, $menu_name, $mlids["navigation_kids"], '1', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_13"] = install_menu_create_menu_item('comment/reply/%', 'Reply to comment', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_14"] = install_menu_create_menu_item('admin/build/menu-customize/%/delete', 'Delete menu', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_15"] = install_menu_create_menu_item('user/reset/%/%/%', 'Reset password', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_16"] = install_menu_create_menu_item('node/%/revisions/%/delete', 'Delete earlier revision', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_17"] = install_menu_create_menu_item('node/%/revisions/%/revert', 'Revert to earlier revision', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_18"] = install_menu_create_menu_item('node/%/revisions/%/view', 'Revisions', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_19"] = install_menu_create_menu_item('taxonomy/autocomplete', 'Autocomplete taxonomy', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_20"] = install_menu_create_menu_item('taxonomy/term/%', 'Taxonomy term', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_21"] = install_menu_create_menu_item('admin/content/node-type/page/delete', 'Delete', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_22"] = install_menu_create_menu_item('admin/content/node-type/story/delete', 'Delete', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_23"] = install_menu_create_menu_item('admin_menu/toggle-modules', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_24"] = install_menu_create_menu_item('admin_menu/flush-cache', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_25"] = install_menu_create_menu_item('content/js_add_more', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_26"] = install_menu_create_menu_item('filefield/progress', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_27"] = install_menu_create_menu_item('panels/ajax', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_28"] = install_menu_create_menu_item('nodereference/autocomplete', 'Nodereference autocomplete', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_29"] = install_menu_create_menu_item('user/timezone', 'User timezone', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_30"] = install_menu_create_menu_item('userreference/autocomplete', 'Userreference autocomplete', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_31"] = install_menu_create_menu_item('views/ajax', 'Views', 'Ajax callback for view loading.', $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_32"] = install_menu_create_menu_item('help/%/%', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_33"] = install_menu_create_menu_item('ctools/autocomplete/node', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_34"] = install_menu_create_menu_item('search/advanced_help/%', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_35"] = install_menu_create_menu_item('advanced_help/search/%', 'Search help', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_36"] = install_menu_create_menu_item('ctools/context/ajax/add', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_37"] = install_menu_create_menu_item('ctools/context/ajax/delete', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_38"] = install_menu_create_menu_item('ctools/context/ajax/configure', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_39"] = install_menu_create_menu_item('ctools/context/ajax/access/add', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_40"] = install_menu_create_menu_item('ctools/context/ajax/access/delete', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_41"] = install_menu_create_menu_item('ctools/context/ajax/access/configure', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_42"] = install_menu_create_menu_item('filefield/ahah/%/%/%', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_43"] = install_menu_create_menu_item('admin/build/ctools-content/list/%/clone', 'Clone', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_44"] = install_menu_create_menu_item('admin/build/mini-panels/list/%/clone', 'Clone', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_45"] = install_menu_create_menu_item('admin/build/stylizer/list/%/clone', 'Clone', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_46"] = install_menu_create_menu_item('admin/build/ctools-content/list/%/delete', 'Delete', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_47"] = install_menu_create_menu_item('admin/build/mini-panels/list/%/delete', 'Delete', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_48"] = install_menu_create_menu_item('admin/build/stylizer/list/%/delete', 'Delete', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_49"] = install_menu_create_menu_item('admin/build/ctools-content/list/%/disable', 'Disable', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_50"] = install_menu_create_menu_item('admin/build/mini-panels/list/%/disable', 'Disable', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_51"] = install_menu_create_menu_item('admin/build/stylizer/list/%/disable', 'Disable', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_52"] = install_menu_create_menu_item('admin/build/ctools-content/list/%/enable', 'Enable', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_53"] = install_menu_create_menu_item('admin/build/mini-panels/list/%/enable', 'Enable', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_54"] = install_menu_create_menu_item('admin/build/stylizer/list/%/enable', 'Enable', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_55"] = install_menu_create_menu_item('admin/build/ctools-content/list/%/revert', 'Revert', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_56"] = install_menu_create_menu_item('admin/build/mini-panels/list/%/revert', 'Revert', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_57"] = install_menu_create_menu_item('admin/build/stylizer/list/%/revert', 'Revert', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_58"] = install_menu_create_menu_item('colorbox/form', 'Form', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_59"] = install_menu_create_menu_item('list/stories', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_60"] = install_menu_create_menu_item('admin/content/node-type/user-story/delete', 'Delete', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_61"] = install_menu_create_menu_item('og/unsubscribe/%/%', 'Leave group', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_62"] = install_menu_create_menu_item('admin/build/panels/layouts/list/%/delete', 'Delete', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_63"] = install_menu_create_menu_item('system/files/imagecache', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_64"] = install_menu_create_menu_item('sites/default/files/imagecache', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_65"] = install_menu_create_menu_item('admin/build/imagecache/%/delete', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_66"] = install_menu_create_menu_item('admin/build/imagecache/%/%', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_67"] = install_menu_create_menu_item('admin/build/imagecache/%/export', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_68"] = install_menu_create_menu_item('admin/build/imagecache/%/flush', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_69"] = install_menu_create_menu_item('admin/build/imagecache/%/override', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_70"] = install_menu_create_menu_item('admin/build/imagecache/%/add/%', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_71"] = install_menu_create_menu_item('admin/build/imagecache/%/%/delete', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_72"] = install_menu_create_menu_item('admin/content/node-type/user-story/fields/field_us_conversation_image/remove', 'Remove field', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_73"] = install_menu_create_menu_item('user/login/colorbox', 'Login', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_74"] = install_menu_create_menu_item('og/subscribe/%', 'Join group', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_75"] = install_menu_create_menu_item('og/opml', 'OPML', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_76"] = install_menu_create_menu_item('admin/content/node-type/user-story/fields/field_us_conversation/remove', 'Remove field', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_77"] = install_menu_create_menu_item('admin/content/node-type/user-story/fields/field_us_confirmation/remove', 'Remove field', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_78"] = install_menu_create_menu_item('admin/content/node-type/project/delete', 'Delete', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_79"] = install_menu_create_menu_item('admin/content/node-type/user-story/fields/field_us_burned_points/remove', 'Remove field', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_80"] = install_menu_create_menu_item('admin/build/panels/layouts/list/%/enable', 'Enable', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_81"] = install_menu_create_menu_item('og/invite/%', 'Send invitation', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_82"] = install_menu_create_menu_item('og/manage/%', 'Manage membership', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_83"] = install_menu_create_menu_item('node/%/feed', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_84"] = install_menu_create_menu_item('og/create_admin/%/%', 'Create group administrator', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_85"] = install_menu_create_menu_item('og/delete_admin/%/%', 'Delete group administrator', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_86"] = install_menu_create_menu_item('og/approve/%/%/%', 'Approve membership request', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_87"] = install_menu_create_menu_item('og/deny/%/%/%', 'Deny membership request', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_88"] = install_menu_create_menu_item('not_used', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_89"] = install_menu_create_menu_item('group', 'My Unread', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_89_0"] = install_menu_create_menu_item('group/tracker/feed', '', 0, $menu_name, $mlids["navigation_kids_89"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_89_1"] = install_menu_create_menu_item('group/myunread/feed', '', 0, $menu_name, $mlids["navigation_kids_89"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_90"] = install_menu_create_menu_item('admin/build/features/%/status', 'Status', 'Javascript status call back.', $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_91"] = install_menu_create_menu_item('admin/content/node-type/user-story/fields/field_us_biz_story/remove', 'Remove field', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_92"] = install_menu_create_menu_item('admin/content/node-type/project/fields/field_project_start/remove', 'Remove field', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_93"] = install_menu_create_menu_item('node/%/revisions/diff-inline', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_94"] = install_menu_create_menu_item('admin/build/panels/layouts/list/%/disable', 'Disable', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_95"] = install_menu_create_menu_item('admin/content/node-type/issue/delete', 'Delete', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_96"] = install_menu_create_menu_item('admin/content/node-type/project/fields/field_project_short_name/remove', 'Remove field', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_97"] = install_menu_create_menu_item('filefield/reference/%/%', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_98"] = install_menu_create_menu_item('filefield/imce/%/%', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_99"] = install_menu_create_menu_item('filefield/remote/progress/%/%/%', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_100"] = install_menu_create_menu_item('admin/content/node-type/project/fields/field_project_end/remove', 'Remove field', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_101"] = install_menu_create_menu_item('admin/content/node-type/issue/fields/field_us_priority/remove', 'Remove field', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_102"] = install_menu_create_menu_item('admin/content/node-type/issue/fields/field_us_points/remove', 'Remove field', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_103"] = install_menu_create_menu_item('admin/content/node-type/issue/fields/field_us_burned_points/remove', 'Remove field', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_104"] = install_menu_create_menu_item('admin/content/node-type/issue/fields/field_project_start/remove', 'Remove field', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_105"] = install_menu_create_menu_item('admin/content/node-type/issue/fields/field_project_end/remove', 'Remove field', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_106"] = install_menu_create_menu_item('admin/content/node-type/issue/fields/field_issue_user_story/remove', 'Remove field', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_107"] = install_menu_create_menu_item('admin/content/node-type/issue/fields/field_issue_assigned_to/remove', 'Remove field', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_108"] = install_menu_create_menu_item('admin/content/node-type/user-story/groups/%/remove', 'Edit group', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_109"] = install_menu_create_menu_item('admin/content/node-type/story/groups/%/remove', 'Edit group', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_110"] = install_menu_create_menu_item('admin/content/node-type/role/groups/%/remove', 'Edit group', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_111"] = install_menu_create_menu_item('admin/content/node-type/project/groups/%/remove', 'Edit group', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_112"] = install_menu_create_menu_item('admin/content/node-type/page/groups/%/remove', 'Edit group', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_113"] = install_menu_create_menu_item('admin/content/node-type/issue/groups/%/remove', 'Edit group', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_114"] = install_menu_create_menu_item('admin/build/panels/layouts/list/%/clone', 'Clone', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_115"] = install_menu_create_menu_item('admin/content/node-type/role/delete', 'Delete', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_116"] = install_menu_create_menu_item('admin/content/node-type/biz-story/groups/%/remove', 'Edit group', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_117"] = install_menu_create_menu_item('admin/content/node-type/story/groups/%', 'Edit group', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_118"] = install_menu_create_menu_item('admin/content/node-type/user-story/groups/%', 'Edit group', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_119"] = install_menu_create_menu_item('admin/content/node-type/biz-story/delete', 'Delete', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_120"] = install_menu_create_menu_item('admin/content/node-type/role/groups/%', 'Edit group', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_121"] = install_menu_create_menu_item('view/list/biz-stories/%', '', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_122"] = install_menu_create_menu_item('admin/content/node-type/project/groups/%', 'Edit group', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_123"] = install_menu_create_menu_item('admin/build/panels/layouts/list/%/revert', 'Revert', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_124"] = install_menu_create_menu_item('admin/content/node-type/page/groups/%', 'Edit group', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_125"] = install_menu_create_menu_item('admin/content/node-type/issue/groups/%', 'Edit group', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_126"] = install_menu_create_menu_item('admin/content/node-type/biz-story/groups/%', 'Edit group', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_127"] = install_menu_create_menu_item('views-bulk-operations/js/pager', 'VBO pager handler', 'AJAX callback to store selection when using Views pager.', $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_128"] = install_menu_create_menu_item('views-bulk-operations/js/action', 'VBO action form', 'AHAH callback to display action form on VBO action page.', $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_129"] = install_menu_create_menu_item('admin/content/node-type/user-story/fields/field_us_priority/remove', 'Remove field', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_130"] = install_menu_create_menu_item('admin/content/node-type/user-story/fields/field_us_role/remove', 'Remove field', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_131"] = install_menu_create_menu_item('admin/content/node-type/user-story/fields/field_us_points/remove', 'Remove field', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132"] = install_menu_create_menu_item('admin', 'Administer', 0, $menu_name, $mlids["navigation_kids"], '9', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_0"] = install_menu_create_menu_item('admin/compact', 'Compact mode', 0, $menu_name, $mlids["navigation_kids_132"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1"] = install_menu_create_menu_item('admin/help', 'Help', 0, $menu_name, $mlids["navigation_kids_132"], '9', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_1_0"] = install_menu_create_menu_item('admin/help/block', 'block', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_1"] = install_menu_create_menu_item('admin/help/color', 'color', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_2"] = install_menu_create_menu_item('admin/help/comment', 'comment', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_3"] = install_menu_create_menu_item('admin/help/filter', 'filter', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_4"] = install_menu_create_menu_item('admin/help/help', 'help', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_5"] = install_menu_create_menu_item('admin/help/menu', 'menu', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_6"] = install_menu_create_menu_item('admin/help/node', 'node', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_7"] = install_menu_create_menu_item('admin/help/system', 'system', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_8"] = install_menu_create_menu_item('admin/help/user', 'user', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_9"] = install_menu_create_menu_item('admin/help/dblog', 'dblog', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_10"] = install_menu_create_menu_item('admin/help/taxonomy', 'taxonomy', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_11"] = install_menu_create_menu_item('admin/help/update', 'update', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_12"] = install_menu_create_menu_item('admin/help/admin_menu', 'admin_menu', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_13"] = install_menu_create_menu_item('admin/help/content', 'content', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_14"] = install_menu_create_menu_item('admin/help/date', 'date', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_15"] = install_menu_create_menu_item('admin/help/devel', 'devel', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_16"] = install_menu_create_menu_item('admin/help/token', 'token', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_17"] = install_menu_create_menu_item('admin/help/views_ui', 'views_ui', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_18"] = install_menu_create_menu_item('admin/help/og', 'og', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_19"] = install_menu_create_menu_item('admin/help/clone', 'clone', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_20"] = install_menu_create_menu_item('admin/help/imagecache_ui', 'imagecache_ui', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_21"] = install_menu_create_menu_item('admin/help/features', 'features', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_22"] = install_menu_create_menu_item('admin/help/strongarm', 'strongarm', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_23"] = install_menu_create_menu_item('admin/help/diff', 'diff', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_24"] = install_menu_create_menu_item('admin/help/globalredirect', 'globalredirect', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_25"] = install_menu_create_menu_item('admin/help/path', 'path', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_1_26"] = install_menu_create_menu_item('admin/help/pathauto', 'pathauto', 0, $menu_name, $mlids["navigation_kids_132_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_2"] = install_menu_create_menu_item('admin/advanced_help', 'Advanced help', 0, $menu_name, $mlids["navigation_kids_132"], '9', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_3"] = install_menu_create_menu_item('admin/views/ajax/autocomplete/user', '', 0, $menu_name, $mlids["navigation_kids_132"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_4"] = install_menu_create_menu_item('admin/views/ajax/autocomplete/tag', '', 0, $menu_name, $mlids["navigation_kids_132"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_5"] = install_menu_create_menu_item('admin/content', 'Content management', 'Manage your site\'s content.', $menu_name, $mlids["navigation_kids_132"], '-10', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_5_0"] = install_menu_create_menu_item('admin/content/comment', 'Comments', 'List and edit site comments and the comment moderation queue.', $menu_name, $mlids["navigation_kids_132_5"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_5_1"] = install_menu_create_menu_item('admin/content/node', 'Content', 'View, edit, and delete your site\'s content.', $menu_name, $mlids["navigation_kids_132_5"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_5_2"] = install_menu_create_menu_item('admin/content/types', 'Content types', 'Manage posts by content type, including default status, front page promotion, etc.', $menu_name, $mlids["navigation_kids_132_5"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_5_3"] = install_menu_create_menu_item('admin/content/node-settings', 'Post settings', 'Control posting behavior, such as teaser length, requiring previews before posting, and the number of posts on the front page.', $menu_name, $mlids["navigation_kids_132_5"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_5_3_0"] = install_menu_create_menu_item('admin/content/node-settings/rebuild', 'Rebuild permissions', 0, $menu_name, $mlids["navigation_kids_132_5_3"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_5_4"] = install_menu_create_menu_item('admin/content/rss-publishing', 'RSS publishing', 'Configure the number of items per feed and whether feeds should be titles/teasers/full-text.', $menu_name, $mlids["navigation_kids_132_5"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_5_5"] = install_menu_create_menu_item('admin/content/taxonomy', 'Taxonomy', 'Manage tagging, categorization, and classification of your content.', $menu_name, $mlids["navigation_kids_132_5"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_5_5_0"] = install_menu_create_menu_item('admin/content/taxonomy/%', 'List terms', 0, $menu_name, $mlids["navigation_kids_132_5_5"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_5_5_1"] = install_menu_create_menu_item('admin/content/taxonomy/edit/term', 'Edit term', 0, $menu_name, $mlids["navigation_kids_132_5_5"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_5_5_2"] = install_menu_create_menu_item('admin/content/taxonomy/edit/vocabulary/%', 'Edit vocabulary', 0, $menu_name, $mlids["navigation_kids_132_5_5"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_5_6"] = install_menu_create_menu_item('admin/content/node-type/page', 'Page', 0, $menu_name, $mlids["navigation_kids_132_5"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_5_7"] = install_menu_create_menu_item('admin/content/node-type/story', 'Story', 0, $menu_name, $mlids["navigation_kids_132_5"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_5_8"] = install_menu_create_menu_item('admin/content/node-type/user-story', 'User story', 0, $menu_name, $mlids["navigation_kids_132_5"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_5_9"] = install_menu_create_menu_item('admin/content/node-type/project', 'Project', 0, $menu_name, $mlids["navigation_kids_132_5"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_5_10"] = install_menu_create_menu_item('admin/content/node2', '', 0, $menu_name, $mlids["navigation_kids_132_5"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_5_11"] = install_menu_create_menu_item('admin/content/node-type/issue', 'Issue', 0, $menu_name, $mlids["navigation_kids_132_5"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_5_12"] = install_menu_create_menu_item('admin/content/node-type/role', 'Role', 0, $menu_name, $mlids["navigation_kids_132_5"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_5_13"] = install_menu_create_menu_item('admin/content/node-type/biz-story', 'Biz story', 0, $menu_name, $mlids["navigation_kids_132_5"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_6"] = install_menu_create_menu_item('admin/reports', 'Reports', 'View reports from system logs and other status information.', $menu_name, $mlids["navigation_kids_132"], '5', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_6_0"] = install_menu_create_menu_item('admin/reports/status', 'Status report', 'Get a status report about your site\'s operation and any detected problems.', $menu_name, $mlids["navigation_kids_132_6"], '10', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_6_0_0"] = install_menu_create_menu_item('admin/reports/status/php', 'PHP', 0, $menu_name, $mlids["navigation_kids_132_6_0"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_6_0_1"] = install_menu_create_menu_item('admin/reports/status/run-cron', 'Run cron', 0, $menu_name, $mlids["navigation_kids_132_6_0"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_6_0_2"] = install_menu_create_menu_item('admin/reports/status/sql', 'SQL', 0, $menu_name, $mlids["navigation_kids_132_6_0"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_6_1"] = install_menu_create_menu_item('admin/reports/dblog', 'Recent log entries', 'View events that have recently been logged.', $menu_name, $mlids["navigation_kids_132_6"], '-1', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_6_2"] = install_menu_create_menu_item('admin/reports/access-denied', 'Top \'access denied\' errors', 'View \'access denied\' errors (403s).', $menu_name, $mlids["navigation_kids_132_6"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_6_3"] = install_menu_create_menu_item('admin/reports/page-not-found', 'Top \'page not found\' errors', 'View \'page not found\' errors (404s).', $menu_name, $mlids["navigation_kids_132_6"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_6_4"] = install_menu_create_menu_item('admin/reports/event/%', 'Details', 0, $menu_name, $mlids["navigation_kids_132_6"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_6_5"] = install_menu_create_menu_item('admin/reports/updates', 'Available updates', 'Get a status report about available updates for your installed modules and themes.', $menu_name, $mlids["navigation_kids_132_6"], '10', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_6_5_0"] = install_menu_create_menu_item('admin/reports/updates/check', 'Manual update check', 0, $menu_name, $mlids["navigation_kids_132_6_5"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7"] = install_menu_create_menu_item('admin/build', 'Site building', 'Control how your site looks and feels.', $menu_name, $mlids["navigation_kids_132"], '-10', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_7_0"] = install_menu_create_menu_item('admin/build/block', 'Blocks', 'Configure what block content appears in your site\'s sidebars and other regions.', $menu_name, $mlids["navigation_kids_132_7"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_7_0_0"] = install_menu_create_menu_item('admin/build/block/configure', 'Configure block', 0, $menu_name, $mlids["navigation_kids_132_7_0"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_0_1"] = install_menu_create_menu_item('admin/build/block/delete', 'Delete block', 0, $menu_name, $mlids["navigation_kids_132_7_0"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_0_2"] = install_menu_create_menu_item('admin/build/block/list/js', 'JavaScript List Form', 0, $menu_name, $mlids["navigation_kids_132_7_0"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_1"] = install_menu_create_menu_item('admin/build/modules', 'Modules', 'Enable or disable add-on modules for your site.', $menu_name, $mlids["navigation_kids_132_7"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_7_1_0"] = install_menu_create_menu_item('admin/build/modules/list/confirm', 'List', 0, $menu_name, $mlids["navigation_kids_132_7_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_1_1"] = install_menu_create_menu_item('admin/build/modules/uninstall/confirm', 'Uninstall', 0, $menu_name, $mlids["navigation_kids_132_7_1"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_2"] = install_menu_create_menu_item('admin/build/themes', 'Themes', 'Change which theme your site uses or allows users to set.', $menu_name, $mlids["navigation_kids_132_7"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_3"] = install_menu_create_menu_item('admin/build/menu-customize/%', 'Customize menu', 0, $menu_name, $mlids["navigation_kids_132_7"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_4"] = install_menu_create_menu_item('admin/build/bulkexport', 'Bulk Exporter', 'Bulk-export multiple CTools-handled data objects to code.', $menu_name, $mlids["navigation_kids_132_7"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_7_4_0"] = install_menu_create_menu_item('admin/build/bulkexport/results', '', 0, $menu_name, $mlids["navigation_kids_132_7_4"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_5"] = install_menu_create_menu_item('admin/build/ctools-content', 'Custom content panes', 'Add, edit or delete custom content panes.', $menu_name, $mlids["navigation_kids_132_7"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_7_5_0"] = install_menu_create_menu_item('admin/build/ctools-content/list/%', '', 0, $menu_name, $mlids["navigation_kids_132_7_5"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_6"] = install_menu_create_menu_item('admin/build/mini-panels', 'Mini panels', 'Add, edit or delete mini panels, which can be used as blocks or content panes in other panels.', $menu_name, $mlids["navigation_kids_132_7"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_7_6_0"] = install_menu_create_menu_item('admin/build/mini-panels/list/%', '', 0, $menu_name, $mlids["navigation_kids_132_7_6"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_7"] = install_menu_create_menu_item('admin/build/pages', 'Pages', 'Add, edit and remove overridden system pages and user defined pages from the system.', $menu_name, $mlids["navigation_kids_132_7"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_7_7_0"] = install_menu_create_menu_item('admin/build/pages/argument', '', 0, $menu_name, $mlids["navigation_kids_132_7_7"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_7_1"] = install_menu_create_menu_item('admin/build/pages/edit/%', 'Edit', 0, $menu_name, $mlids["navigation_kids_132_7_7"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_7_2"] = install_menu_create_menu_item('admin/build/pages/%/operation/%', '', 0, $menu_name, $mlids["navigation_kids_132_7_7"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_7_3"] = install_menu_create_menu_item('admin/build/pages/%/enable/%', '', 0, $menu_name, $mlids["navigation_kids_132_7_7"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_7_4"] = install_menu_create_menu_item('admin/build/pages/%/disable/%', '', 0, $menu_name, $mlids["navigation_kids_132_7_7"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_7_5"] = install_menu_create_menu_item('admin/build/pages/wizard/%', 'Wizard', 0, $menu_name, $mlids["navigation_kids_132_7_7"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_8"] = install_menu_create_menu_item('admin/build/panels', 'Panels', 'Get a bird\'s eye view of items related to Panels.', $menu_name, $mlids["navigation_kids_132_7"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_7_8_0"] = install_menu_create_menu_item('admin/build/panels/layouts/list/%', '', 0, $menu_name, $mlids["navigation_kids_132_7_8"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_9"] = install_menu_create_menu_item('admin/build/stylizer', 'Stylizer', 'Add, edit or delete stylizer styles.', $menu_name, $mlids["navigation_kids_132_7"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_7_9_0"] = install_menu_create_menu_item('admin/build/stylizer/list/%', '', 0, $menu_name, $mlids["navigation_kids_132_7_9"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_10"] = install_menu_create_menu_item('admin/build/views', 'Views', 'Views are customized lists of content on your system; they are highly configurable and give you control over how lists of content are presented.', $menu_name, $mlids["navigation_kids_132_7"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_7_10_0"] = install_menu_create_menu_item('admin/build/views/export/%', '', 0, $menu_name, $mlids["navigation_kids_132_7_10"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_10_1"] = install_menu_create_menu_item('admin/build/views/break-lock/%', 'Delete view', 0, $menu_name, $mlids["navigation_kids_132_7_10"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_10_2"] = install_menu_create_menu_item('admin/build/views/delete/%', 'Delete view', 0, $menu_name, $mlids["navigation_kids_132_7_10"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_10_3"] = install_menu_create_menu_item('admin/build/views/clone/%', '', 0, $menu_name, $mlids["navigation_kids_132_7_10"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_10_4"] = install_menu_create_menu_item('admin/build/views/disable/%', '', 0, $menu_name, $mlids["navigation_kids_132_7_10"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_10_5"] = install_menu_create_menu_item('admin/build/views/enable/%', '', 0, $menu_name, $mlids["navigation_kids_132_7_10"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_10_6"] = install_menu_create_menu_item('admin/build/views/tools/export/results', '', 0, $menu_name, $mlids["navigation_kids_132_7_10"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_10_7"] = install_menu_create_menu_item('admin/build/views/%/add-display/%', '', 0, $menu_name, $mlids["navigation_kids_132_7_10"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_10_8"] = install_menu_create_menu_item('admin/build/views/%/%/%', '', 0, $menu_name, $mlids["navigation_kids_132_7_10"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_10_9"] = install_menu_create_menu_item('admin/build/views/%/analyze/%', '', 0, $menu_name, $mlids["navigation_kids_132_7_10"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_10_10"] = install_menu_create_menu_item('admin/build/views/%/details/%', '', 0, $menu_name, $mlids["navigation_kids_132_7_10"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_10_11"] = install_menu_create_menu_item('admin/build/views/%/preview/%', '', 0, $menu_name, $mlids["navigation_kids_132_7_10"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_11"] = install_menu_create_menu_item('admin/build/views1/convert', 'Convert view', 0, $menu_name, $mlids["navigation_kids_132_7"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_12"] = install_menu_create_menu_item('admin/build/views1/delete', 'Delete view', 0, $menu_name, $mlids["navigation_kids_132_7"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_13"] = install_menu_create_menu_item('admin/build/imagecache', 'ImageCache', 'Administer imagecache presets and actions.', $menu_name, $mlids["navigation_kids_132_7"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_7_13_0"] = install_menu_create_menu_item('admin/build/imagecache/%', '', 0, $menu_name, $mlids["navigation_kids_132_7_13"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_14"] = install_menu_create_menu_item('admin/build/features', 'Features', 'Manage features.', $menu_name, $mlids["navigation_kids_132_7"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_7_14_0"] = install_menu_create_menu_item('admin/build/features/%', '', 'Display components of a feature.', $menu_name, $mlids["navigation_kids_132_7_14"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_14_1"] = install_menu_create_menu_item('admin/build/features/cleanup', 'Cleanup', 'Detect and disable any orphaned feature dependencies.', $menu_name, $mlids["navigation_kids_132_7_14"], '1', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_14_2"] = install_menu_create_menu_item('admin/build/features/export/populate', 'Populate feature', 'AHAH callback to populate a feature from selected components.', $menu_name, $mlids["navigation_kids_132_7_14"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_15"] = install_menu_create_menu_item('admin/build/path', 'URL aliases', 'Change your site\'s URL paths by aliasing them.', $menu_name, $mlids["navigation_kids_132_7"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_7_15_0"] = install_menu_create_menu_item('admin/build/path/delete', 'Delete alias', 0, $menu_name, $mlids["navigation_kids_132_7_15"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_15_1"] = install_menu_create_menu_item('admin/build/path/edit', 'Edit alias', 0, $menu_name, $mlids["navigation_kids_132_7_15"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_16"] = install_menu_create_menu_item('admin/build/menu', 'Menus', 'Control your site\'s navigation menu, primary links and secondary links. as well as rename and reorganize menu items.', $menu_name, $mlids["navigation_kids_132_7"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_7_16_0"] = install_menu_create_menu_item('admin/build/menu/item/%/delete', 'Delete menu item', 0, $menu_name, $mlids["navigation_kids_132_7_16"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_16_1"] = install_menu_create_menu_item('admin/build/menu/item/%/edit', 'Edit menu item', 0, $menu_name, $mlids["navigation_kids_132_7_16"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_16_2"] = install_menu_create_menu_item('admin/build/menu/item/%/reset', 'Reset menu item', 0, $menu_name, $mlids["navigation_kids_132_7_16"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_16_3"] = install_menu_create_menu_item('admin/build/menu-customize/navigation', 'Navigation', 0, $menu_name, $mlids["navigation_kids_132_7_16"], '0', 'menu', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_16_4"] = install_menu_create_menu_item('admin/build/menu-customize/primary-links', 'Primary links', 0, $menu_name, $mlids["navigation_kids_132_7_16"], '0', 'menu', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_7_16_5"] = install_menu_create_menu_item('admin/build/menu-customize/secondary-links', 'Secondary links', 0, $menu_name, $mlids["navigation_kids_132_7_16"], '0', 'menu', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8"] = install_menu_create_menu_item('admin/settings', 'Site configuration', 'Adjust basic site configuration options.', $menu_name, $mlids["navigation_kids_132"], '-5', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_8_0"] = install_menu_create_menu_item('admin/settings/actions', 'Actions', 'Manage the actions defined for your site.', $menu_name, $mlids["navigation_kids_132_8"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_8_0_0"] = install_menu_create_menu_item('admin/settings/actions/configure', 'Configure an advanced action', 0, $menu_name, $mlids["navigation_kids_132_8_0"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_0_1"] = install_menu_create_menu_item('admin/settings/actions/orphan', 'Remove orphans', 0, $menu_name, $mlids["navigation_kids_132_8_0"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_0_2"] = install_menu_create_menu_item('admin/settings/actions/delete/%', 'Delete action', 'Delete an action.', $menu_name, $mlids["navigation_kids_132_8_0"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_1"] = install_menu_create_menu_item('admin/settings/admin', 'Administration theme', 'Settings for how your administrative pages should look.', $menu_name, $mlids["navigation_kids_132_8"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_2"] = install_menu_create_menu_item('admin/settings/clean-urls', 'Clean URLs', 'Enable or disable clean URLs for your site.', $menu_name, $mlids["navigation_kids_132_8"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_8_2_0"] = install_menu_create_menu_item('admin/settings/clean-urls/check', 'Clean URL check', 0, $menu_name, $mlids["navigation_kids_132_8_2"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_3"] = install_menu_create_menu_item('admin/settings/date-time', 'Date and time', 'Settings for how Drupal displays date and time, as well as the system\'s default timezone.', $menu_name, $mlids["navigation_kids_132_8"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_8_3_0"] = install_menu_create_menu_item('admin/settings/date-time/lookup', 'Date and time lookup', 0, $menu_name, $mlids["navigation_kids_132_8_3"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_3_1"] = install_menu_create_menu_item('admin/settings/date-time/formats/lookup', 'Date and time lookup', 0, $menu_name, $mlids["navigation_kids_132_8_3"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_3_2"] = install_menu_create_menu_item('admin/settings/date-time/delete/%', 'Delete date format type', 'Allow users to delete a configured date format type.', $menu_name, $mlids["navigation_kids_132_8_3"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_3_3"] = install_menu_create_menu_item('admin/settings/date-time/formats/delete/%', 'Delete date format', 'Allow users to delete a configured date format.', $menu_name, $mlids["navigation_kids_132_8_3"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_4"] = install_menu_create_menu_item('admin/settings/error-reporting', 'Error reporting', 'Control how Drupal deals with errors including 403/404 errors as well as PHP error reporting.', $menu_name, $mlids["navigation_kids_132_8"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_5"] = install_menu_create_menu_item('admin/settings/file-system', 'File system', 'Tell Drupal where to store uploaded files and how they are accessed.', $menu_name, $mlids["navigation_kids_132_8"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_6"] = install_menu_create_menu_item('admin/settings/image-toolkit', 'Image toolkit', 'Choose which image toolkit to use if you have installed optional toolkits.', $menu_name, $mlids["navigation_kids_132_8"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_7"] = install_menu_create_menu_item('admin/settings/filters', 'Input formats', 'Configure how content input by users is filtered, including allowed HTML tags. Also allows enabling of module-provided filters.', $menu_name, $mlids["navigation_kids_132_8"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_8_7_0"] = install_menu_create_menu_item('admin/settings/filters/%', '', 0, $menu_name, $mlids["navigation_kids_132_8_7"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_7_1"] = install_menu_create_menu_item('admin/settings/filters/delete', 'Delete input format', 0, $menu_name, $mlids["navigation_kids_132_8_7"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_8"] = install_menu_create_menu_item('admin/settings/performance', 'Performance', 'Enable or disable page caching for anonymous users and set CSS and JS bandwidth optimization options.', $menu_name, $mlids["navigation_kids_132_8"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_9"] = install_menu_create_menu_item('admin/settings/site-information', 'Site information', 'Change basic site information, such as the site name, slogan, e-mail address, mission, front page and more.', $menu_name, $mlids["navigation_kids_132_8"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_10"] = install_menu_create_menu_item('admin/settings/site-maintenance', 'Site maintenance', 'Take the site off-line for maintenance or bring it back online.', $menu_name, $mlids["navigation_kids_132_8"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_11"] = install_menu_create_menu_item('admin/settings/admin_menu', 'Administration menu', 'Adjust administration menu settings.', $menu_name, $mlids["navigation_kids_132_8"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_12"] = install_menu_create_menu_item('admin/settings/devel', 'Devel settings', 'Helper functions, pages, and blocks to assist Drupal developers. The devel blocks can be managed via the <a href="/admin/build/block">block administration</a> page.', $menu_name, $mlids["navigation_kids_132_8"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_13"] = install_menu_create_menu_item('admin/settings/imageapi', 'ImageAPI', 'Configure ImageAPI.', $menu_name, $mlids["navigation_kids_132_8"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_14"] = install_menu_create_menu_item('admin/settings/jquery_update', 'jQuery Update', 'Configure settings for jQuery Update module.', $menu_name, $mlids["navigation_kids_132_8"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_15"] = install_menu_create_menu_item('admin/settings/date_popup', 'Date Popup Configuration', 'Allows the user to configure the Date Popup settings.', $menu_name, $mlids["navigation_kids_132_8"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_16"] = install_menu_create_menu_item('admin/settings/clone', 'Clone module', 'Allows users to clone (copy then edit) an existing node.', $menu_name, $mlids["navigation_kids_132_8"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_17"] = install_menu_create_menu_item('admin/settings/vertical-tabs', 'Vertical Tabs', 0, $menu_name, $mlids["navigation_kids_132_8"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_18"] = install_menu_create_menu_item('admin/settings/colorbox', 'Colorbox', 'Adjust Colorbox settings.', $menu_name, $mlids["navigation_kids_132_8"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_19"] = install_menu_create_menu_item('admin/settings/tabs', 'Tabs', 'Configuration for tabs', $menu_name, $mlids["navigation_kids_132_8"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_20"] = install_menu_create_menu_item('admin/settings/strongarm', 'Strongarm', 'Manage Drupal variable settings that have been strongarmed.', $menu_name, $mlids["navigation_kids_132_8"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_21"] = install_menu_create_menu_item('admin/settings/globalredirect', 'Global Redirect', 'Chose which features you would like enabled for Global Redirect', $menu_name, $mlids["navigation_kids_132_8"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_22"] = install_menu_create_menu_item('admin/settings/profile-generator', 'Generate installation profile', 'Generate a Drupal installation profile', $menu_name, $mlids["navigation_kids_132_8"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_8_23"] = install_menu_create_menu_item('admin/settings/logging', 'Logging and alerts', 'Settings for logging and alerts modules. Various modules can route Drupal\'s system events to different destination, such as syslog, database, email, ...etc.', $menu_name, $mlids["navigation_kids_132_8"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_8_23_0"] = install_menu_create_menu_item('admin/settings/logging/dblog', 'Database logging', 'Settings for logging to the Drupal database logs. This is the most common method for small to medium sites on shared hosting. The logs are viewable from the admin pages.', $menu_name, $mlids["navigation_kids_132_8_23"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_9"] = install_menu_create_menu_item('admin/user', 'User management', 'Manage your site\'s users, groups and access to site features.', $menu_name, $mlids["navigation_kids_132"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_9_0"] = install_menu_create_menu_item('admin/user/rules', 'Access rules', 'List and create rules to disallow usernames, e-mail addresses, and IP addresses.', $menu_name, $mlids["navigation_kids_132_9"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_9_0_0"] = install_menu_create_menu_item('admin/user/rules/delete', 'Delete rule', 0, $menu_name, $mlids["navigation_kids_132_9_0"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_9_0_1"] = install_menu_create_menu_item('admin/user/rules/edit', 'Edit rule', 0, $menu_name, $mlids["navigation_kids_132_9_0"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_9_1"] = install_menu_create_menu_item('admin/user/permissions', 'Permissions', 'Determine access to features by selecting permissions for roles.', $menu_name, $mlids["navigation_kids_132_9"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_9_2"] = install_menu_create_menu_item('admin/user/roles', 'Roles', 'List, edit, or add user roles.', $menu_name, $mlids["navigation_kids_132_9"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_9_2_0"] = install_menu_create_menu_item('admin/user/roles/edit', 'Edit role', 0, $menu_name, $mlids["navigation_kids_132_9_2"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_9_3"] = install_menu_create_menu_item('admin/user/settings', 'User settings', 'Configure default behavior of users, including registration requirements, e-mails, and user pictures.', $menu_name, $mlids["navigation_kids_132_9"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_9_4"] = install_menu_create_menu_item('admin/user/user', 'Users', 'List, add, and edit users.', $menu_name, $mlids["navigation_kids_132_9"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_9_5"] = install_menu_create_menu_item('admin/user/login_destination', 'Login Destination', 'Control where users are redirected to, once they login.', $menu_name, $mlids["navigation_kids_132_9"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_9_6"] = install_menu_create_menu_item('admin/user/user2', '', 0, $menu_name, $mlids["navigation_kids_132_9"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_10"] = install_menu_create_menu_item('admin/og', 'Organic groups', 'Administer the suite of Organic groups modules.', $menu_name, $mlids["navigation_kids_132"], '-5', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_132_10_0"] = install_menu_create_menu_item('admin/og/og_access', 'Organic groups access configuration', 'Choose whether new groups should be private or public.', $menu_name, $mlids["navigation_kids_132_10"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_132_10_1"] = install_menu_create_menu_item('admin/og/og', 'Organic groups configuration', 'Configure the main Organic groups module (og).', $menu_name, $mlids["navigation_kids_132_10"], '-5', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_133"] = install_menu_create_menu_item('node/add', 'Create content', 0, $menu_name, $mlids["navigation_kids"], '1', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_133_0"] = install_menu_create_menu_item('node/add/page', 'Page', 'A <em>page</em>, similar in form to a <em>story</em>, is a simple method for creating and displaying information that rarely changes, such as an "About us" section of a website. By default, a <em>page</em> entry does not allow visitor comments and is not featured on the site\'s initial home page.', $menu_name, $mlids["navigation_kids_133"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_133_1"] = install_menu_create_menu_item('node/add/story', 'Story', 'A <em>story</em>, similar in form to a <em>page</em>, is ideal for creating and displaying content that informs or engages website visitors. Press releases, site announcements, and informal blog-like entries may all be created with a <em>story</em> entry. By default, a <em>story</em> entry is automatically featured on the site\'s initial home page, and provides the ability to post comments.', $menu_name, $mlids["navigation_kids_133"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_133_2"] = install_menu_create_menu_item('node/add/user-story', 'User story', 'Create a user story to specify functionality for the development of the site.', $menu_name, $mlids["navigation_kids_133"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_133_3"] = install_menu_create_menu_item('node/add/issue', 'Issue', 'An issue (task, defect, change request) to be tracked within the scope of a project.', $menu_name, $mlids["navigation_kids_133"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_133_4"] = install_menu_create_menu_item('node/add/project', 'Project', 'A project is an ordered collection of releases organized into iterations, with their user stories, together with all tasks associated with them.', $menu_name, $mlids["navigation_kids_133"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_133_5"] = install_menu_create_menu_item('node/add/biz-story', 'Biz story', 'Business story (a problem, a value, a feature). Taken together, they can be viewed in a Business model view (based on O\'Reilly\'s meme map business model.', $menu_name, $mlids["navigation_kids_133"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_133_6"] = install_menu_create_menu_item('node/add/role', 'Role', 'A class of primary actor interacting with the website application.', $menu_name, $mlids["navigation_kids_133"], '0', 'system', '0', FALSE, '0', '0', '0');
$mlids["navigation_kids_134"] = install_menu_create_menu_item('og', 'Groups', 0, $menu_name, $mlids["navigation_kids"], '0', 'system', '0', TRUE, '0', '0', '0');
$mlids["navigation_kids_134_0"] = install_menu_create_menu_item('og/all/feed', '', 0, $menu_name, $mlids["navigation_kids_134"], '0', 'system', '-1', FALSE, '0', '0', '0');
$mlids["navigation_kids_134_1"] = install_menu_create_menu_item('og/users/%', 'List', 0, $menu_name, $mlids["navigation_kids_134"], '0', 'system', '0', FALSE, '0', '0', '0');
/********************************
 *     MENU: PRIMARY LINKS      *
 ********************************/
$menu_name = install_menu_create_menu('Primary links', 'primary-links', 'Primary links are often used at the theme layer to show the major sections of a site. A typical representation for primary links would be tabs along the top.');

$mlids["primary-links_kids"] = 0;
$mlids["primary-links_kids_0"] = install_menu_create_menu_item('view/list/user-stories', 'WIP', 'Work in progress', $menu_name, $mlids["primary-links_kids"], '0', 'system', '1', FALSE, '0', '1', '0');
$mlids["primary-links_kids_1"] = install_menu_create_menu_item('user', 'Dashboard', 'Login and go to your dashboard', $menu_name, $mlids["primary-links_kids"], '0', 'menu', '0', FALSE, '0', '1', '0');
$mlids["primary-links_kids_2"] = install_menu_create_menu_item('logout', 'Logout', 'End session', $menu_name, $mlids["primary-links_kids"], '0', 'menu', '0', FALSE, '0', '1', '0');
/********************************
 *    MENU: SECONDARY LINKS     *
 ********************************/
$menu_name = install_menu_create_menu('Secondary links', 'secondary-links', 'Secondary links are often used for pages like legal notices, contact details, and other secondary navigation items that play a lesser role than primary links');

$mlids["secondary-links_kids"] = 0;


/********************************
 *       BLOCKS AND BOXES        *
 ********************************/
$block = (object) array ( 'module' => 'user', 'delta' => '0', 'theme' => 'garland', 'status' => '1', 'weight' => '0', 'region' => 'left', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[1] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '1', 'theme' => 'garland', 'status' => '1', 'weight' => '0', 'region' => 'left', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[2] = install_create_block($block);
$block = (object) array ( 'module' => 'system', 'delta' => '0', 'theme' => 'garland', 'status' => '1', 'weight' => '10', 'region' => 'footer', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[3] = install_create_block($block);
$block = (object) array ( 'module' => 'system', 'delta' => '0', 'theme' => 'blank', 'status' => '1', 'weight' => '10', 'region' => 'footer', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[4] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '0', 'theme' => 'blank', 'status' => '1', 'weight' => '0', 'region' => 'left', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[5] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '1', 'theme' => 'blank', 'status' => '1', 'weight' => '0', 'region' => 'left', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[6] = install_create_block($block);
$block = (object) array ( 'module' => 'system', 'delta' => '0', 'theme' => 'precision', 'status' => '1', 'weight' => '10', 'region' => 'footer', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[7] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '0', 'theme' => 'precision', 'status' => '1', 'weight' => '0', 'region' => 'left', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[8] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '1', 'theme' => 'precision', 'status' => '1', 'weight' => '0', 'region' => 'left', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[9] = install_create_block($block);
$block = (object) array ( 'module' => 'system', 'delta' => '0', 'theme' => 'pft', 'status' => '1', 'weight' => '10', 'region' => 'footer', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[10] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '0', 'theme' => 'pft', 'status' => '1', 'weight' => '0', 'region' => 'left', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[11] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '1', 'theme' => 'pft', 'status' => '1', 'weight' => '0', 'region' => 'left', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[12] = install_create_block($block);
$block = (object) array ( 'module' => 'system', 'delta' => '0', 'theme' => 'bluemarine', 'status' => '1', 'weight' => '10', 'region' => 'footer', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[13] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '0', 'theme' => 'bluemarine', 'status' => '1', 'weight' => '0', 'region' => 'left', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[14] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '1', 'theme' => 'bluemarine', 'status' => '1', 'weight' => '0', 'region' => 'left', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[15] = install_create_block($block);
$block = (object) array ( 'module' => 'comment', 'delta' => '0', 'theme' => 'bluemarine', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '1', );
$block_map[16] = install_create_block($block);
$block = (object) array ( 'module' => 'menu', 'delta' => 'devel', 'theme' => 'bluemarine', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[17] = install_create_block($block);
$block = (object) array ( 'module' => 'menu', 'delta' => 'primary-links', 'theme' => 'bluemarine', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[18] = install_create_block($block);
$block = (object) array ( 'module' => 'menu', 'delta' => 'secondary-links', 'theme' => 'bluemarine', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[19] = install_create_block($block);
$block = (object) array ( 'module' => 'node', 'delta' => '0', 'theme' => 'bluemarine', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[20] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '2', 'theme' => 'bluemarine', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '1', );
$block_map[21] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '3', 'theme' => 'bluemarine', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[22] = install_create_block($block);
$block = (object) array ( 'module' => 'views', 'delta' => 'list_stories-block_1', 'theme' => 'bluemarine', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[23] = install_create_block($block);
$block = (object) array ( 'module' => 'devel', 'delta' => '0', 'theme' => 'bluemarine', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '1', );
$block_map[24] = install_create_block($block);
$block = (object) array ( 'module' => 'devel', 'delta' => '2', 'theme' => 'bluemarine', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => 'devel/php', 'title' => '', 'cache' => '1', );
$block_map[25] = install_create_block($block);
$block = (object) array ( 'module' => 'comment', 'delta' => '0', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '1', );
$block_map[26] = install_create_block($block);
$block = (object) array ( 'module' => 'menu', 'delta' => 'devel', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[27] = install_create_block($block);
$block = (object) array ( 'module' => 'menu', 'delta' => 'features', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[28] = install_create_block($block);
$block = (object) array ( 'module' => 'menu', 'delta' => 'primary-links', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[29] = install_create_block($block);
$block = (object) array ( 'module' => 'menu', 'delta' => 'secondary-links', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[30] = install_create_block($block);
$block = (object) array ( 'module' => 'node', 'delta' => '0', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[31] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '2', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '1', );
$block_map[32] = install_create_block($block);
$block = (object) array ( 'module' => 'user', 'delta' => '3', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[33] = install_create_block($block);
$block = (object) array ( 'module' => 'diff', 'delta' => 'inline', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '1', );
$block_map[34] = install_create_block($block);
$block = (object) array ( 'module' => 'og_views', 'delta' => '0', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[35] = install_create_block($block);
$block = (object) array ( 'module' => 'og_views', 'delta' => '1', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[36] = install_create_block($block);
$block = (object) array ( 'module' => 'og', 'delta' => '0', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[37] = install_create_block($block);
$block = (object) array ( 'module' => 'og', 'delta' => '3', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '2', );
$block_map[38] = install_create_block($block);
$block = (object) array ( 'module' => 'views', 'delta' => 'list_stories-block_1', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[39] = install_create_block($block);
$block = (object) array ( 'module' => 'views', 'delta' => 'list_user_stories-block_1', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[40] = install_create_block($block);
$block = (object) array ( 'module' => 'views', 'delta' => 'list_user_stories-block_2', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[41] = install_create_block($block);
$block = (object) array ( 'module' => 'views', 'delta' => 'list_user_stories-block_3', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[42] = install_create_block($block);
$block = (object) array ( 'module' => 'views', 'delta' => 'list_user_stories-block_4', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[43] = install_create_block($block);
$block = (object) array ( 'module' => 'views', 'delta' => 'list_issues-block_1', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[44] = install_create_block($block);
$block = (object) array ( 'module' => 'views', 'delta' => 'list_roles-block_1', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[45] = install_create_block($block);
$block = (object) array ( 'module' => 'views', 'delta' => 'list_biz_stories-block_1', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[46] = install_create_block($block);
$block = (object) array ( 'module' => 'views', 'delta' => 'og_members_block-block', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[47] = install_create_block($block);
$block = (object) array ( 'module' => 'views', 'delta' => 'og_members_block-block_1', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[48] = install_create_block($block);
$block = (object) array ( 'module' => 'views', 'delta' => 'og_my-block_1', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '-1', );
$block_map[49] = install_create_block($block);
$block = (object) array ( 'module' => 'devel', 'delta' => '0', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => '', 'title' => '', 'cache' => '1', );
$block_map[50] = install_create_block($block);
$block = (object) array ( 'module' => 'devel', 'delta' => '2', 'theme' => 'pft', 'status' => '0', 'weight' => '0', 'region' => '', 'custom' => '0', 'throttle' => '0', 'visibility' => '0', 'pages' => 'devel/php', 'title' => '', 'cache' => '1', );
$block_map[51] = install_create_block($block);


}
