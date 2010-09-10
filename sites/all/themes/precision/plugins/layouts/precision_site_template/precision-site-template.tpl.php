<?php
// $Id: precision-site-template.tpl.php,v 1.1 2010/08/25 10:45:56 dixon Exp $

/**
 * @file
 * This layout is designed to be the site template layout when using
 * the Panels Everywhere module.
 */
?>
<?php if (!empty($css_id)): ?>
  <div id="<?php print $css_id; ?>" class="clear-block">
<?php endif; ?>

<div id="page" class="container-50 clear-block">

  <?php if (!empty($content['branding'])): ?>
    <div id="page-branding" class="grid-50">
      <div id="page-branding-inner" class="pad-1 clear-block">
        <?php print $content['branding']; ?>
      </div>
    </div>
  <?php endif; ?>

  <?php if (!empty($content['main'])): ?>
    <div id="page-body" class="grid-50">
      <div id="page-body-inner" class="clear-block">
        <?php print $content['main']; ?>
      </div>
    </div>
  <?php endif; ?>

  <?php if (!empty($content['footer'])): ?>
    <div id="page-footer" class="grid-50">
      <div id="page-footer-inner" class="pad-1 clear-block">
        <?php print $content['footer']; ?>
      </div>
    </div>
  <?php endif; ?>

</div>

<?php if (!empty($css_id)): ?>
  </div>
<?php endif; ?>
