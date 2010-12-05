// $Id: colorbox.js,v 1.6.2.4 2010/11/24 08:10:48 frjo Exp $
(function ($) {

Drupal.behaviors.initColorbox = function (context) {
  $('a, area, input', context)
    .filter('.colorbox:not(.initColorbox-processed)')
    .addClass('initColorbox-processed')
    .colorbox(Drupal.settings.colorbox);

  $(document).bind('cbox_complete', function(){
    Drupal.attachBehaviors('#cboxLoadedContent');
  });
};

})(jQuery);
