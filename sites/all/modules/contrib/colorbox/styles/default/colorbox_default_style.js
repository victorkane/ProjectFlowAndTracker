// $Id: colorbox_default_style.js,v 1.2.2.1 2010/12/02 09:15:13 frjo Exp $
(function ($) {

Drupal.behaviors.initColorboxDefaultStyle = function (context) {
  $(document).bind('cbox_complete', function () {
    // Only run if there is a title.
    if ($('#cboxTitle:empty', context).length == false) {
      setTimeout(function () { $('#cboxTitle', context).slideUp() }, 1500);
      $('#cboxLoadedContent', context).bind('mouseover', function () {
        $('#cboxTitle', context).slideDown();
      });
      $('#cboxOverlay', context).bind('mouseover', function () {
        $('#cboxTitle', context).slideUp();
      });
    }
    else {
      $('#cboxTitle', context).hide();
    }
  });
};

})(jQuery);
