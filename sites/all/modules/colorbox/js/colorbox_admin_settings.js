// $Id: colorbox_admin_settings.js,v 1.4 2010/04/18 15:38:21 frjo Exp $
(function ($) {

Drupal.behaviors.initColorboxAdminSettings = function (context) {
  $('div.colorbox-custom-settings-activate input.form-radio', context).click(function () {
    if (this.value == 1) {
      $('div.colorbox-custom-settings', context).show();
    }
    else {
      $('div.colorbox-custom-settings', context).hide();
    }
  });
  $('div.colorbox-slideshow-settings-activate input.form-radio', context).click(function () {
    if (this.value == 1) {
      $('div.colorbox-slideshow-settings', context).show();
    }
    else {
      $('div.colorbox-slideshow-settings', context).hide();
    }
  });
  $('div.colorbox-title-trim-settings-activate input.form-radio', context).click(function () {
    if (this.value == 1) {
      $('div.colorbox-title-trim-settings', context).show();
    }
    else {
      $('div.colorbox-title-trim-settings', context).hide();
    }
  });
};

})(jQuery);
