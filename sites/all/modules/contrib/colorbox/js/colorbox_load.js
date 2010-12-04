// $Id: colorbox_load.js,v 1.1.2.3 2010/10/02 17:17:10 frjo Exp $
(function ($) {

Drupal.behaviors.initColorboxLoad = function (context) {
  var settings = Drupal.settings.colorbox;
  $.urlParam = function(name, url){
    var results = new RegExp('[\\?&]' + name + '=([^&#]*)').exec(url);
    if (!results) { return 0; }
    return results[1] || 0;
  };
  $('a, area, input', context).filter('.colorbox-load:not(.initColorboxLoad-processed)').addClass('initColorboxLoad-processed').colorbox({
    transition:settings.transition,
    speed:settings.speed,
    opacity:settings.opacity,
    close:settings.close,
    overlayClose:settings.overlayClose,
    maxWidth:settings.maxWidth,
    maxHeight:settings.maxHeight,
    innerWidth:function(){
      return $.urlParam('width', $(this).attr('href'));
    },
    innerHeight:function(){
      return $.urlParam('height', $(this).attr('href'));
    },
    iframe:function(){
      return $.urlParam('iframe', $(this).attr('href'));
    },
    slideshow:function(){
      return $.urlParam('slideshow', $(this).attr('href'));
    }
  });
};

})(jQuery);
