<?php
// $Id: precision-naked.tpl.php,v 1.1 2010/08/25 10:45:56 dixon Exp $
?>

<?php if (!empty($css_id)): ?>
  <div id="<?php print $css_id; ?>" class="clear-block">
<?php endif; ?>

<?php if (!empty($content['main'])): ?>
  <?php print $content['main']; ?>
<?php endif; ?>

<?php if (!empty($css_id)): ?>
  </div>
<?php endif; ?>
