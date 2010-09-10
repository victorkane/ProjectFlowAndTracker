<?php
// $Id: precision-column-one.tpl.php,v 1.1 2010/08/25 10:46:33 dixon Exp $
?>

<?php if (!empty($css_id)): ?>
  <div id="<?php print $css_id; ?>" class="clear-block">
<?php endif; ?>

<?php if (!empty($content['main'])): ?>
  <div id="page-main" class="grid-50 alpha omega">
    <div id="page-main-inner" class="pad-1 clear-block">
      <?php print $content['main']; ?>
    </div>
  </div>
<?php endif; ?>

<?php if (!empty($css_id)): ?>
  </div>
<?php endif; ?>
