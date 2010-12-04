// $Id: colorbox.js,v 1.6.2.3 2010/09/21 13:05:45 frjo Exp $
(function ($) {

Drupal.behaviors.initColorbox = function (context) {
  $('a, area, input', context)
    .filter('.colorbox:not(.initColorbox-processed)')
    .addClass('initColorbox-processed')
    .colorbox(Drupal.settings.colorbox);
};

})(jQuery);
