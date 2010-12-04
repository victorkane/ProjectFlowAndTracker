<?php
// $Id: pane-navigation.tpl.php,v 1.1 2009/12/29 06:07:29 merlinofchaos Exp $
/**
 * @file
 *
 * Theme implementation to display the messages area, which is normally
 * included roughly in the content area of a page.
 *
 * This utilizes the following variables thata re normally found in
 * page.tpl.php:
 * - $primary_links
 * - $secondary_links
 * - $breadcrumb
 * - $mission
 *
 * Additional items can be added via theme_preprocess_pane_messages(). See
 * template_preprocess_pane_messages() for examples.
 */
 ?>
<div id="navigation" class="menu <?php if (!empty($primary_links)) { print "withprimary"; } if (!empty($secondary_links)) { print " withsecondary"; } ?> ">
  <?php if (!empty($primary_links)): ?>
    <div id="primary" class="clear-block">
      <?php print theme('links', $primary_links, array('class' => 'links primary-links')); ?>
    </div>
  <?php endif; ?>

  <?php if (!empty($secondary_links)): ?>
    <div id="secondary" class="clear-block">
      <?php print theme('links', $secondary_links, array('class' => 'links secondary-links')); ?>
    </div>
  <?php endif; ?>

  <?php if (!empty($breadcrumb)): ?>
    <div id="breadcrumb"><?php print $breadcrumb; ?></div>
  <?php endif; ?>
  <?php if (!empty($mission)): ?>
    <div id="mission"><?php print $mission; ?></div>
  <?php endif; ?>

</div> <!-- /navigation -->
