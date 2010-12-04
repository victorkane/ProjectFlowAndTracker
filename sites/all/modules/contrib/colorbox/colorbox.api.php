<?php
// $Id: colorbox.api.php,v 1.1.2.1 2010/09/22 19:39:43 frjo Exp $

/**
 * @file
 * API documentation for the colorbox module.
 */

/**
 * Allows to override Colorbox settings and style.
 *
 * @param $settings
 *   An associative array of Colorbox settings. See the
 *   @link http://colorpowered.com/colorbox/ Colorbox documentation @endlink
 *   for the full list of supported parameters.
 * @param $style
 *   The name of the active style plugin.
 */
function hook_colorbox_settings_alter(&$settings, &$style) {
  // Disable automatic downscaling of images to maxWidth/maxHeight size.
  $settings['scalePhotos'] = FALSE;

  // Use custom style plugin specifically for node/123.
  if ($_GET['q'] == 'node/123') {
    $style = 'mystyle';
  }
}
