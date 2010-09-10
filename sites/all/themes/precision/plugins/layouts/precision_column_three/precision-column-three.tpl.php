<?php
// $Id: precision-column-three.tpl.php,v 1.1 2010/08/25 10:45:56 dixon Exp $

/**
 * @file
 * This layout is intended to be used inside the page content pane. Thats why
 * there is not wrapper div by default.
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

<div class="grid-36 alpha">

  <?php if (!empty($content['header_beta'])): ?>
    <div id="page-header-beta" class="grid-36 alpha omega">
      <div id="page-header-beta-inner" class="pad-1 clear-block">
        <?php print $content['header_beta']; ?>
      </div>
    </div>
  <?php endif; ?>

  <?php if (!empty($content['main'])): ?>
    <div id="page-main" class="grid-25 alpha">
      <div id="page-main-inner" class="pad-1 clear-block">
        <?php print $content['main']; ?>
      </div>
    </div>
  <?php endif; ?>

  <?php if (!empty($content['aside_alpha'])): ?>
    <div id="page-aside-alpha" class="grid-11 omega">
      <div id="page-aside-alpha-inner" class="pad-1 clear-block">
        <?php print $content['aside_alpha']; ?>
      </div>
    </div>
  <?php endif; ?>

</div>

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
