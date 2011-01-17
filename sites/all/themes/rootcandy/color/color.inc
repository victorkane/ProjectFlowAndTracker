<?php

// $Id: color.inc,v 1.7.2.6 2009/05/10 15:19:10 sign Exp $

/**
 * @file
 * The color settings
 */

$info = array(

  // Pre-defined color schemes.
  'schemes' => array(
    '#b2c8d3,#027ac6,#313332,#424446,#494949' => t('Glass (Default)'),
    '#464849,#2f416f,#2a2b2d,#5d6779,#494949' => t('Ash'),
    '#55c0e2,#000000,#085360,#007e94,#696969' => t('Aquamarine'),
    '#d5b048,#6c420e,#331900,#971702,#494949' => t('Belgian Chocolate'),
    '#3f3f3f,#336699,#6598cb,#6598cb,#000000' => t('Bluemarine'),
    '#d0cb9a,#917803,#efde01,#e6fb2d,#494949' => t('Citrus Blast'),
    '#0f005c,#434f8c,#4d91ff,#1a1575,#000000' => t('Cold Day'),
    '#c9c497,#0c7a00,#03961e,#7be000,#494949' => t('Greenbeam'),
    '#ffe23d,#a9290a,#fc6d1d,#a30f42,#494949' => t('Mediterrano'),
    '#788597,#3f728d,#a9adbc,#d4d4d4,#707070' => t('Mercury'),
    '#5b5fa9,#5b5faa,#0a2352,#9fa8d5,#494949' => t('Nocturnal'),
    '#7db323,#6a9915,#b5d52a,#7db323,#191a19' => t('Olivia'),
    '#12020b,#1b1a13,#f391c6,#f41063,#898080' => t('Pink Plastic'),
    '#b7a0ba,#c70000,#a1443a,#f21107,#515d52' => t('Shiny Tomato'),
    '#18583d,#1b5f42,#34775a,#52bf90,#2d2d2d' => t('Teal Top'),
  ),

  // CSS files (excluding @import) to rewrite with new color scheme.
  'css' => array(
    'style.css',
  ),

  // Coordinates of gradient (x, y, width, height).
  'gradient' => array(0, 0, 900, 28),

  // Color areas to fill (x, y, width, height).
  'fill' => array(
    'base' => array(0, 29, 900, 472),
    'link' => array(97, 210, 371, 56),
  ),
  'slices' => array(
    'images/header_bg.png'                      => array(40, 0, 1, 28),
    'images/panel/panel_bg.png'                    => array(276, 0, 341, 25),
    'images/panel/panel_content_bg.png'                    => array(276, 0, 1, 1),
    'images/panel/panel_left.png'                    => array(235, 0, 7, 25),
    'images/panel/panel_open.png'                    => array(244, 4, 16, 16),
    'images/panel/panel_close.png'                    => array(260, 4, 16, 16),
    'images/navigation_bg.png'                    => array(10, 29, 1, 64),
    'images/tabs/tableft_big.png'                    => array(61, 31, 5, 62),
    'images/tabs/tabright_big.png'                    => array(65, 31, 360, 62),
    'images/tabs/tableft.png'                    => array(451, 45, 5, 48),
    'images/tabs/tabright.png'                    => array(455, 45, 360, 48),
    'images/tabs/tableft_small.png'                    => array(451, 143, 5, 26),
    'images/tabs/tabright_small.png'                    => array(455, 143, 360, 26),
    'images/buttons/blue-button.png'          => array(97, 236, 369, 80),
    'images/gohome.png'                    => array(7, 6, 18, 21),
    'images/window/tl.gif'                    => array(246, 133, 10, 10),
    'images/window/tr.gif'                    => array(256, 133, 10, 10),
    'images/window/bl.gif'                    => array(246, 143, 10, 10),
    'images/window/br.gif'                    => array(256, 143, 10, 10),
    'images/window/b.gif'                    => array(256, 143, 1, 10),
    'images/window/t.gif'                    => array(256, 133, 1, 10),
    'images/window/l.gif'                    => array(246, 143, 10, 1),
    'images/window/r.gif'                    => array(256, 143, 10, 1),
    'images/content_bg.gif'                    => array(255, 142, 1, 1),
    'screenshot.png'                       => array(0, 37, 400, 240),
  ),

  // Images to copy over.
  'copy' => array(
  ),

  // Reference color used for blending. Matches the base.png's colors.
  'blend_target' => '#ffffff',

  // Preview files.
  'preview_image' => 'color/preview.png',
  'preview_css' => 'color/preview.css',

  // Base file for image generation.
  'base_image' => 'color/base.png',
);
