// $Id: colorbox_default_style.js,v 1.2 2010/04/18 14:36:29 frjo Exp $
(function ($) {

Drupal.behaviors.initColorboxDefaultStyle = function (context) {
  $(document).bind('cbox_complete', function(){
    // Only run if there is a title.
    if ($('#cboxTitle:empty').length == false) {
      setTimeout(function(){ $('#cboxTitle').slideUp() }, 1500);
      $('#cboxLoadedContent').bind('mouseover', function(){
        $('#cboxTitle').slideDown();
      });
      $('#cboxOverlay').bind('mouseover', function(){
        $('#cboxTitle').slideUp();
      });
    }
    else {
      $('#cboxTitle').hide();
    }
  });
};

})(jQuery);
