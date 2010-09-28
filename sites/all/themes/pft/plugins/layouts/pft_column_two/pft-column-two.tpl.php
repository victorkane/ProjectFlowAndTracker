<?php
// $Id: $

/**
 * @file
 * This layout is intended to be used inside the page content pane. Thats why
 * there is not wrapper div by default.
 *
 * Extended from precision two column layout by adding additional main rows
 */
?>
<?php if (!empty($css_id)): ?>
  <div id="<?php print $css_id; ?>" class="clear-block">
<?php endif; ?>

<?php if (!empty($content['header_alpha'])): ?>
  <div id="page-header-alpha" class="grid-50 alpha omega">
    <div id="page-header-alpha-inner" class="pad-1 clear-block">
      <?php print $content['header_alpha']; ?>
    </div>
  </div>
<?php endif; ?>

<?php if (!empty($content['main1'])): ?>
  <div id="page-main" class="grid-36 alpha">
    <div id="page-main1-inner" class="pad-1 clear-block">
      <?php print $content['main1']; ?>
    </div>
  </div>
<?php endif; ?>

<?php if (!empty($content['main2'])): ?>
  <div id="page-main2" class="grid-36 alpha">
    <div id="page-main2-inner" class="pad-1 clear-block">
      <?php print $content['main2']; ?>
    </div>
  </div>
<?php endif; ?>

<?php if (!empty($content['main3'])): ?>
  <div id="page-main3" class="grid-36 alpha">
    <div id="page-main3-inner" class="pad-1 clear-block">
      <?php print $content['main3']; ?>
    </div>
  </div>
<?php endif; ?>

<?php if (!empty($content['aside_beta'])): ?>
  <div id="page-aside-beta" class="grid-14 omega">
    <div id="page-aside-beta-inner" class="pad-1 clear-block">
      <?php print $content['aside_beta']; ?>
    </div>
  </div>
<?php endif; ?>

<?php if (!empty($css_id)): ?>
  </div>
<?php endif; ?>
