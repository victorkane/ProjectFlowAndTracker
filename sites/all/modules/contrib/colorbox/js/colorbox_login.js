// $Id: colorbox_login.js,v 1.4.2.1 2010/12/03 09:30:20 frjo Exp $
(function ($) {

Drupal.behaviors.initColorboxLogin = function (context) {
  $("a[href*='/user/login'], a[href*='?q=user/login']", context).colorbox({
    initialWidth:200,
    initialHeight:200,
    onComplete:function () {
      $('#edit-name').focus();
    }
  }).each(function () {
      this.href = this.href.replace(/user\/login/,"user/login/colorbox");
  });
};

})(jQuery);
