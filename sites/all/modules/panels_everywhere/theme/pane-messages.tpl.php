<?php
// $Id: pane-messages.tpl.php,v 1.1 2009/12/29 06:07:29 merlinofchaos Exp $
/**
 * @file
 *
 * Theme implementation to display the messages area, which is normally
 * included roughly in the content area of a page.
 *
 * This utilizes the following variables thata re normally found in
 * page.tpl.php:
 * - $tabs
 * - $messages
 * - $help
 *
 * Additional items can be added via theme_preprocess_pane_messages(). See
 * template_preprocess_pane_messages() for examples.
 */
 ?>
<?php if (!empty($tabs)): ?>
  <div class="tabs"><?php print $tabs; ?></div>
<?php endif; ?>
<?php if (!empty($messages)): print $messages; endif; ?>
<?php if (!empty($help)): print $help; endif; ?>
