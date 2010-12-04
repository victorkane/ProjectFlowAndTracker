$Id: README.txt,v 1.6 2010/07/26 20:52:58 merlinofchaos Exp $

Panels Everywhere is an advanced method to completely do away with Drupal's
restrictive blocks system and instead use the much more freeing Panels Layout
system to control how your pages look. Panels Everywhere modifies the page as
it is being rendered to 'wrap' the content in a display and can even take
over your page theme to do away with the need for a page.tpl.php.

Doing this requires that you set up a few things properly, because Drupal is
not really designed for this kind of behavior.

Getting Started
===============

Be sure that you have a version of Chaos Tools Suite newer than 12-28-2009 -- 
this is either the current -dev or CTools 1.3 if it is out. At the time of 
this writing, CTools 1.3 has not yet been released, so you will need to use
a -dev version (or from CVS).

Step 1
------

First, back up your site database, just in case. This will make it easy to
completely revert if you decide that Panels Everywhere is not for you. It
is also recommended that you first experiment with this on a small test site
so that you can get a feel for the effects this will have. Sites are best
built from the ground up on Panels Everywhere. Converting an existing site
may be quite difficult.

Step 2
------
Enable Panels Everywhere. If not using UID 1, be sure the user you're using
has 'administer page manager' privileges.

Navigate to Administer >> Site building >> Panels >> Settings >> Everywhere.

Check the box to enable the site template. 

Check the box to enable the sample variant.

You may check the box to override the page template, but only if you either
enable the sample variant, or have already created a site template variant
to handle page duties.

Step 3
------
Navigate to Administer >> Site Building >> Pages and edit the site_template
(Default site template) page.

Edit your new variant. Customize it if you like. There are some very
important parts of this sample variant:

  o The "Page content" pane is absolutely critical. That is the pane that
    will hold the actual content of the page you are looking at. If this
    pane does not exist, *no content will be rendered*, only the page
    template. Think of this as being the $content variable in your
    page.tpl.php -- you need that and cannot live without it.

  o The "Title type" is set to "From pane" and the Page content pane is
    selected as the title. (That is why that pane has a thicker border).
    This is how the title of the content gets to be the title of the
    page.

  o The Navigation, Header and Messages panes are conveniences that
    group common page navigation together. For customized sites it is
    highly likely that you will theme these or do away with them and
    use the individual pieces.


Step 4
------
You might also consider creating a completely blank theme, because existing 
themes will have CSS that expects different markup. To create a blank theme:

1) mkdir sites/all/themes/blank
2) Create the following five lines in a file named blank.info:

name = Blank
description = Blank
core = 6.x
stylesheets[all][] = blank.css
engine = phptemplate

3) Visit Administer >> Site building >> Themes and change your theme to the
   blank theme.

Step 5
------

You can add additional variants and easily section off your site by using
the selection rules. In particular, there are two selection rules you should
be interested in:

o You can easily add a String: comparison selection rule and write regular
  expressions against the URL to use that.

o You can use the Context exists selection rule using the "Managed page"
  context. By using this, you can force the site_template to not run on
  actual Page Manager pages and use the site_template only as a wrapper
  for non Page Manager content. If you do this, you need to make sure that
  your other pages contain all the navigation they need.

Extras
======

For best results, customized layouts are the way to go. They can include as
much or as little of the page template as you need, and are easily selectable.
When you customize a layout, if it will be heavily styled, it is recommended
that you provide a separate admin layout (in the layout.inc there are 
'admin theme' and 'admin css' settings) to provide a less styled layout for
the purposes of editing. This will be critical to keep the editing UI from
getting too messy.

The navigation, header and messages blocks can be easily customized by copying
the appropriate pane-*.tpl.php files from the themes directory to your theme,
changing them, and clearing cache. If you need to add additional variables,
look at the theme.inc file. You can create similar preprocess functions in
your template.php. The token function can accept any variable that would
normally appear in your page.tpl.php.

You can easily add more variants and use the regular expressions in the
String: comparison selection rules to change which display gets used based on
the URL. You can also use the "Context: exists" selection rule to provide
default panels only for content that is not already in a panel by checking to
see if the "Managed page" context exists.

If you have a lot of different site templates or pages that include their own
navigation, you can also consider using Mini Panels to create common navigation 
sidebars for easier maintenance.