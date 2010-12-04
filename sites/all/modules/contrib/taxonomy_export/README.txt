$Id: README.txt,v 1.1.2.2 2010/02/04 20:59:13 jamesandres Exp $

Taxonomy Export
---------------
Taxonomy Export is a light-weight module for managing exports and imports of
vocabularies and terms. Currently the following is are supported:

    * Exporting vocabulary definitions
    * Exporting vocabulary definitions with all terms
    * Creating exports as a text string (ie: like Views and CCK's content_copy)
    * Creating exports as a file
    * Importing vocabulary / term definitions in install profiles, using Install Profile API

In Taxonomy Export version 2 the following additional import / export methods
are now supported:

    * Integration with Features module (http://drupal.org/project/features)
    * Ability to manage Taxonomy Exports "in code", using the new
      hook_default_taxonomy_export().  See the API section below for more
      details.

Version 2 of Taxonomy Export additionally supports updating of previously
imported vocabularies.  Terms, however, will always be re-created.



Taxonomy Export API
-------------------

Use the hook_default_taxonomy_export() to manage your Taxonomy Exports "in
code".  For example:

    /**
     * Implementation of hook_views_api()
     */
    function example_ctools_plugin_api($module, $api) {
      if ($module == 'taxonomy_export' && $api == 'default_taxonomy_exports') {
        return array('version' => 1);
      }
    }

    /**
     * Implementation of hook_default_taxonomy_export()
     */
    function example_default_taxonomy_export() {
      $taxonomy_exports = array();

      // Exported vocabulary: Test Vocabulary
      $taxonomy_export = new stdClass;
      $taxonomy_export->disabled = FALSE; /* Edit this to true to make a default taxonomy_export disabled initially */
      $taxonomy_export->api_version = 1;
      $taxonomy_export->machine_name = 'test_vocabulary';
      $taxonomy_export->vocabulary = (object) (array(
         'vid' => '1',
         'name' => 'Test Vocabulary',
         'description' => '',
         'help' => '',
         'relations' => '1',
         'hierarchy' => '0',
         'multiple' => '0',
         'required' => '0',
         'tags' => '0',
         'module' => 'taxonomy',
         'weight' => '0',
         'nodes' => 
        array (
          'page' => 'page',
        ),
         'machine_name' => 'test_vocabulary',
      ));
      $taxonomy_export->terms = array();

      $taxonomy_exports[$taxonomy_export->machine_name] = $taxonomy_export;

      return $taxonomy_exports;
    }

Those familiar with hook_views_default_views() and
hook_default_page_manager_pages() should feel at home with
hook_default_taxonomy_export().  They act similarly because they both use the
CTools exportables back-end.



Known Issues (6.x-2)
--------------------

Probably lots.  This is an experimental release.
