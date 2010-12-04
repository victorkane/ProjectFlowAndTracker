// $Id: colorbox_login.js,v 1.4 2010/04/18 15:38:21 frjo Exp $
(function ($) {

Drupal.behaviors.initColorboxLogin = function (context) {
  $("a[href*='/user/login'], a[href*='?q=user/login']", context).colorbox({
    innerWidth:250,
    innerHeight:230,
    onComplete:function(){
      $('#edit-name').focus();
    }
  }).each(function() {
      this.href = this.href.replace(/user\/login/,"user/login/colorbox");
  });
};

})(jQuery);
