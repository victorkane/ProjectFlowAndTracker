// $Id: colorbox.js,v 1.6.2.1 2010/07/11 12:34:24 frjo Exp $
(function ($) {

Drupal.behaviors.initColorbox = function (context) {
  var settings = Drupal.settings.colorbox;
  $('a, area, input', context).filter('.colorbox:not(.initColorbox-processed)').addClass('initColorbox-processed').colorbox({
    transition:settings.transition,
    speed:settings.speed,
    opacity:settings.opacity,
    slideshow:settings.slideshow,
    slideshowSpeed:settings.slideshowSpeed,
    slideshowAuto:settings.slideshowAuto,
    slideshowStart:settings.slideshowStart,
    slideshowStop:settings.slideshowStop,
    current:settings.current,
    previous:settings.previous,
    next:settings.next,
    close:settings.close,
    overlayClose:settings.overlayClose,
    maxWidth:settings.maxWidth,
    maxHeight:settings.maxHeight
  });
};

})(jQuery);
