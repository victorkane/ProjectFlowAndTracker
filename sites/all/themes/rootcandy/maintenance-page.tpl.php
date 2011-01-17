<?php
// $Id: maintenance-page.tpl.php,v 1.1.2.2 2009/06/15 21:01:13 sign Exp $

/**
 * @file
 * maintenance-page.tpl.php
 *
 * This is an override of the default maintenance page. Used for Garland and
 * Minnelli, this file should not be moved or modified since the installation
 * and update pages depend on this file.
 *
 */
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php print $language->language ?>" lang="<?php print $language->language ?>" dir="<?php print $language->dir ?>">
  <head>
    <title><?php print $head_title ?></title>
    <?php print $head ?>
    <?php print $styles ?>
    <?php print $scripts ?>
  </head>
  <body>

<!-- Layout -->
  <div id="maintenance" class="clearfix">
    <div class="maintenance-icon">
      <?php
        $image = path_to_theme() .'/images/maintenance.png';
        print theme('image', $image);
      ?>
    </div>
    <div class="maintenance-content">
      <h1><?php print $title ?></h1>
      <div class="maintenance-content-p">
        <?php print $content ?>
      </div>
    </div>
  </div>
<!-- /layout -->

  </body>
</html>
