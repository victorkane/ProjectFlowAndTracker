To download the bundled "everything included" installation profile:

* Make sure you are in the 6.x-1.0-alpha1 branch
* Click on Download .tar.gz or Download .zip
* Install Drupal as usual, selecting the Project Flow & Tracker install profile.

To build Project Flow & Tracker from scratch:

1. Install drush and drush_make

2. Download the build makefile from url:
   http://code.projectflowandtracker.com/pft_build.make

3. Run the following to build your site:

$ drush make pft_build.make my_pft

4. Install Drupal as usual, selecting the Project Flow & Tracker install profile.

pft_build.make:

    core = 6.x

    api = 2
    projects[drupal][version] = "6.20"

    ; PFT Installation Profile
    projects[pft][type] = "profile"
    projects[pft][download][type] = "get"
    projects[pft][download][url] = http://code.projectflowandtracker.com/pft_profile.tgz
    projects[pft][version] = 1.0-alpha1
