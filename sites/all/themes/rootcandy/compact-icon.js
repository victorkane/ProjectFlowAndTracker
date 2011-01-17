// $Id: compact-icon.js,v 1.1.2.1 2009/04/19 08:25:52 sign Exp $

$(document).ready(function(){
   //Close all menus on page load
   $('div.admin-panel .body').toggle();
   $('div.admin-panel').addClass('collapsed');

   //Display menu dropdown on click
   $('div.admin-panel h3').click(function(){
    //Reset and close all menus in column
    $(this).parent().parent().children().each(function(){
        $(this).addClass('collapsed');
        $(this).find('.body').hide();
    })
    //Display the selected menu
    $(this).parent().removeClass('collapsed');
    $(this).next().toggle();
   });

});
